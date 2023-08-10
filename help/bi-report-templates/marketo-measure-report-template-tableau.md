---
description: "[!DNL Marketo Measure] Modelo de relatório - Tableau - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Modelo de relatório - Tableau"
exl-id: 18963be9-5c6e-4454-8244-b50460e2bed5
feature: Reporting
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '2323'
ht-degree: 0%

---

# [!DNL Marketo Measure] Modelo de relatório - Tableau {#marketo-measure-report-template-tableau}

## Introdução {#getting-started}

Você pode acessar o [!DNL Tableau] modelo de relatório [aqui](https://github.com/adobe/Marketo-Measure-BI-Templates){target="_blank"}.

Abra o [!DNL Adobe Marketo Measure] Arquivo de Pasta de Trabalho do Tableau de Modelo de Relatório.

Será necessário atualizar os dados de conexão existentes para as informações de conexão específicas do Snowflake. Clique em [!UICONTROL Editar conexão] e siga as etapas descritas no botão [[!UICONTROL Conexão de dados]](#data-connection) seção desta documentação.

![](assets/marketo-measure-report-template-tableau-1.png)

## Conexão de dados {#data-connection}

Você precisará configurar uma conexão de dados com sua instância do Snowflake. Para isso, você precisará do nome do servidor junto com seu nome de usuário e senha. Detalhes sobre onde encontrar essas informações e redefinir sua senha, se necessário, estão documentados [aqui](/help/marketo-measure-data-warehouse/data-warehouse-access-reader-account.md){target="_blank"}.

![](assets/marketo-measure-report-template-tableau-2.png)

Você também precisará inserir um comando SQL inicial. Isso permite o uso de consultas personalizadas nesse modelo de dados. O comando a ser inserido é &quot;Usar esquema `<your schema name>`&quot;. Você pode localizar seu nome de esquema no campo [!UICONTROL conexões de data warehouse] consulte a documentação referenciada acima.

![](assets/marketo-measure-report-template-tableau-3.png)

### Consultas SQL Personalizadas {#custom-sql-queries}

Porque [!DNL Tableau] aplica filtros de fonte de dados à consulta geral e não na tabela individual em que o filtro está definido, optamos por usar SQL personalizado para cada tabela no modelo. Isso permite que o modelo filtre linhas excluídas e duplicadas no nível da tabela. Por exemplo, quando aplicado como um filtro de fonte de dados, session._deleted_date é nulo e será adicionado à cláusula where da consulta, resultando na seguinte consulta.

**Filtros adicionados à fonte de dados**

```
--A deleted session removes this row completely and the touchpoint data is lost. Select *
   From Touchpoint    tp
      join Session sn
      on tp.session_id = sn.session_id 
 Where tp._deleted_date is null
    and sn._deleted_date is null
```

No entanto, isso está incorreto, pois se uma sessão foi excluída, mas o ponto de contato correspondente não é excluído, os dados do ponto de contato são removidos do conjunto de dados. Queremos que os dados de ponto de contato estejam presentes no conjunto de dados, pois o ponto de contato não foi excluído. A adição de SQL personalizado garante que os critérios de filtro sejam aplicados no nível da tabela, resultando na seguinte query.

**Filtros aplicados via SQL personalizado**

```
--A deleted session only removes the session related data, and the touchpoint data is preserved. Select *
   From Touchpoint       tp
      join Session sn
      on tp.session_id          = sn.session_id 
      and sn._deleted_date      is null
  Where tp._deleted_date is null
```

## Transformações de dados {#data-transformations}

Algumas transformações foram aplicadas aos dados no [!DNL Tableau] de seu estado original no Snowflake. A maioria dessas transformações é aplicada nas queries SQL personalizadas que geram as tabelas no [!DNL Tableau] modelo. Para exibir o SQL personalizado usado para gerar uma tabela, clique com o botão direito do mouse no nome da tabela e selecione &quot;Editar consulta SQL personalizada&quot;. Algumas das transformações específicas são descritas abaixo.

![](assets/marketo-measure-report-template-tableau-4.png)

![](assets/marketo-measure-report-template-tableau-5.png)

### Colunas removidas {#removed-columns}

Para simplificar o modelo de dados e remover dados redundantes e desnecessários, reduzimos o número de colunas importadas para o Tableau a partir da tabela de Snowflake original. As colunas removidas incluem chaves estrangeiras desnecessárias, dados dimensionais desnormalizados mais bem aproveitados por meio de relacionamentos com outras tabelas no modelo, colunas de auditoria e campos usados para internos [!DNL Marketo Measure] processando. Você pode adicionar ou remover colunas conforme necessário para suas necessidades comerciais editando a lista de colunas importadas na seção Selecionar do SQL personalizado.

>[!NOTE]
>
>A maioria das tabelas no data warehouse contém dados dimensionais desnormalizados. Trabalhamos para normalizar e limpar o modelo em [!DNL Tableau] o máximo possível para melhorar o desempenho e a precisão dos dados. Tenha cuidado ao incluir campos desnormalizados adicionais em tabelas de fatos, isso pode quebrar a filtragem dimensional em tabelas e também resultar em relatórios imprecisos.

### Colunas renomeadas {#renamed-columns}

Tabelas e colunas foram renomeadas para torná-las mais amigáveis e padronizar convenções de nomenclatura. Para exibir as alterações no nome da coluna, consulte as instruções SQL personalizadas que criam as tabelas.

### Linhas adicionadas {#rows-added}

Para adicionar recursos de conversão de moeda aos cálculos no modelo, adicionamos uma taxa de conversão corporativa e uma coluna de taxa de conversão de destino às tabelas de Oportunidade e Custo. O valor nessas colunas é adicionado no nível da linha e é avaliado unindo-se à tabela Taxa de conversão na data e no id da moeda. Como o Tableau não permite que as tabelas de fatos compartilhem mais de uma tabela de dimensão, as taxas de conversão foram adicionadas diretamente às tabelas que as utilizam. Para obter mais detalhes sobre como a conversão de moeda funciona neste modelo, consulte a [Conversão de moeda](#currency-conversion) nesta documentação.

![](assets/marketo-measure-report-template-tableau-6.png)

Há alguns lugares onde duas tabelas de [!DNL Snowflake] foram combinadas com uma união para criar uma tabela no [!DNL Tableau] modelo de dados. Nesses casos, uma coluna &quot;Tipo&quot; foi adicionada para indicar qual [!DNL Snowflake] tabela de onde ela vem e designa qual entidade a linha representa. Para obter mais detalhes sobre as tabelas que foram combinadas, consulte a seção Relacionamento e Fluxo de Dados nesta documentação.

![](assets/marketo-measure-report-template-tableau-7.png)

### Nomes dos segmentos {#segment-names}

Como os nomes de segmentos são personalizáveis, eles têm nomes de coluna genéricos no data warehouse do Snowflake. [!DNL BIZ_SEGMENT_NAMES] é uma tabela de mapeamento que lista o nome de segmento genérico com o nome de segmento personalizado para o qual está mapeado, conforme definido na seção segmento no [!DNL Marketo Measure] IU. Se você usa nomes de segmento personalizados e deseja atualizar sua [!DNL Tableau] para incorporá-los, use esta tabela e renomeie manualmente as colunas dentro do modelo Tableau. As colunas de segmento estão na tabela de cliente potencial e ponto de contato de atribuição e só precisarão ser renomeadas uma vez.

A variável [!UICONTROL CATEGORIA] A coluna lista o número da categoria e a coluna SEGMENT_NAME tem o nome do segmento personalizado para o qual ela é mapeada.

![](assets/marketo-measure-report-template-tableau-8.png)

Os nomes podem ser atualizados de duas maneiras. A primeira opção é atualizar o SQL personalizado. Neste exemplo, Categorias 1 a 6 foram renomeadas com base no mapeamento da tabela Nomes de segmentos.

![](assets/marketo-measure-report-template-tableau-9.png)

A outra opção é renomear as colunas diretamente no [!DNL Tableau] tabela.

![](assets/marketo-measure-report-template-tableau-10.png)

## Modelo de dados {#data-model}

Clique na imagem abaixo para obter a versão em tamanho normal.

[![](assets/marketo-measure-report-template-tableau-11.png)](/help/bi-report-templates/assets/tableau-data-model.png){target="_blank"}

### Relações e fluxo de dados {#relationships-and-data-flow}

Os dados do evento, usados para criar pontos de contato, são armazenados no [!UICONTROL Session], [!UICONTROL Tarefa], [!UICONTROL Evento], [!UICONTROL Atividade], e [!UICONTROL Membro da campanha] tabelas. Essas tabelas de eventos se unem à tabela Touchpoint por meio de suas respectivas IDs e, se o evento resultou em um ponto de contato, os detalhes são armazenados na tabela Touchpoint.

Os pontos de contato principais e os pontos de contato de atribuição são combinados em uma tabela nesse modelo, com um link para a tabela Pontos de contato. A coluna &quot;Tipo de ponto de contato&quot; foi adicionada para designar se uma linha é um lead ou um ponto de contato de atribuição. A maioria dos dados dimensionais para pontos de contato de lead e atribuição é originada do link para o ponto de contato correspondente.

As Transições de Estágio de Oportunidade e as Transições de Estágio de Cliente Potencial são combinadas em uma tabela neste modelo, com um link para a [!UICONTROL Cliente em potencial e atribuição] Tabela de pontos de contato. A coluna &quot;Tipo de transição&quot; foi adicionada para designar se uma linha é uma transição de oportunidade ou estágio de lead.

Os dados de Custo e Pontos de contato compartilham as dimensões Canal e Campanha. No entanto, o Tableau é limitado em sua capacidade de modelar dimensões compartilhadas entre tabelas de fatos. Como estamos limitados a apenas uma tabela de dimensão compartilhada, os dados de Canal e Campanha foram combinados em uma tabela. Eles são combinados usando uma junção cruzada das duas dimensões em uma tabela no Tableau: Canal e Campanha. A ID exclusiva é criada pela concatenação das IDs de canal e campanha. Esse mesmo valor de ID é adicionado às tabelas de Ponto de contato e Custo para criar uma relação com essa tabela de dimensão combinada.

![](assets/marketo-measure-report-template-tableau-12.png)

Nesse modelo, as dimensões Campanha e Canal são vinculadas ao ponto de contato, de modo que todos os relatórios sobre essas dimensões são feitos por meio desse link e significa que os relatórios dimensionais nos dados do evento podem estar incompletos. Isso ocorre porque muitos eventos não têm links para essas dimensões até que sejam processados em Pontos de contato.

>[!NOTE]
>
>Alguns eventos, como Sessões, têm links diretos para as dimensões Campanha e Canal. Se desejar criar relatórios no nível da Sessão sobre essas dimensões, recomenda-se criar um modelo de dados separado para essa finalidade.

Os dados de custo são armazenados em diferentes níveis de agregação na tabela de custos do data warehouse Snowflake. Para todos os provedores de anúncios, os dados no nível da campanha podem ser acumulados no nível do canal. Por esse motivo, esse modelo extrai dados de custo com base no sinalizador &quot;campaign_is_aggregatable_cost&quot;. Os custos relatados automaticamente podem ser enviados somente no nível do Canal e não é necessário ter dados do Campaign. Para fornecer o relatório de custos mais preciso possível, os custos relatados automaticamente são obtidos com base no sinalizador &quot;channel_is_aggregatable_cost&quot;. A consulta que importa dados de custo é gravada com a seguinte lógica: Se ad_provider = &quot;SelfReported&quot; então channel_is_aggregatable_cost = true, else campaign_is_aggregatable_cost = true.

No contexto deste modelo, lead, [!UICONTROL Contato], [!UICONTROL Conta], e [!UICONTROL Oportunidade] Os dados do são considerados dados dimensionais e unidos diretamente à tabela de leads e pontos de contato de atribuição.

### Conversão de moeda {#currency-conversion}

As taxas na tabela Taxa de conversão representam o valor necessário para converter um valor da moeda corporativa. As conversões em qualquer moeda exigem uma conversão dupla, primeiro da moeda original para a moeda corporativa e, em seguida, da moeda corporativa para a moeda selecionada. A primeira etapa dessa cadeia no modelo é adicionar duas colunas com essas taxas de conversão às tabelas com valores, Oportunidade e Custo. Essas etapas estão detalhadas na seção Linhas adicionadas deste documento. Como as taxas de conversão não precisam ser estáticas e podem ser alteradas por intervalos de datas especificados, todos os cálculos de conversão de moeda devem ser executados no nível da linha. A conversão da moeda original para a moeda corporativa consiste na divisão do valor pela taxa de conversão corporativa e na multiplicação pela taxa de conversão de destino. A taxa de conversão de destino é determinada pelo valor do parâmetro de moeda selecionado.

* Converter o valor original para o valor em moeda corporativa / taxa de conversão corporativa = valor em moeda corporativa
* Converter o valor da moeda corporativa para o valor da moeda selecionada na moeda corporativa `*` taxa de conversão da moeda selecionada = valor na moeda selecionada

![](assets/marketo-measure-report-template-tableau-13.png)

As medidas de conversão de moeda nesse modelo substituem um valor de 1,0 para a taxa se nenhuma taxa de conversão puder ser identificada. Foram criadas medidas separadas para exibir o valor da moeda da medida e alertar se um cálculo inclui mais de um valor de moeda (isto é, não foi possível converter um valor para a moeda selecionada). Essas medidas, Moeda de Custo e Moeda de Receita, são incluídas como dicas de ferramentas em qualquer visual que exibe dados de Custo ou Receita.

![](assets/marketo-measure-report-template-tableau-14.png)

## Definições de dados {#data-definitions}

As definições foram adicionadas ao [!DNL Tableau model] para parâmetros, colunas personalizadas e medidas.

![](assets/marketo-measure-report-template-tableau-15.png)

Para exibir definições de colunas provenientes diretamente de [!DNL Snowflake], consulte o [documentação do data warehouse](/help/marketo-measure-data-warehouse/data-warehouse-schema.md){target="_blank"}.

## Discrepâncias entre modelos e descoberta {#discrepancies-between-templates-and-discover}

### Receita atribuída {#attributed-revenue}

Os pontos de contato principais e os pontos de contato de atribuição herdam dados dimensionais do ponto de contato original. O modelo de relatório origina todos os dados dimensionais herdados do relacionamento com o Touchpoint, enquanto no modelo de Descoberta, os dados dimensionais são desnormalizados para os registros de Lead e de Attribution Touchpoint. As receitas afetadas globais ou os valores das receitas afetadas devem estar alinhados entre os dois relatórios. No entanto, as discrepâncias podem ser observadas quando a receita é dividida ou filtrada por dados dimensionais (canal, subcanal ou campanha). Se os valores de receita dimensional não corresponderem entre o modelo e a Descoberta, é provável que haja registros de ponto de contato ausentes no conjunto de dados do relatório do modelo. Isso acontece quando há um registro de cliente potencial ou de ponto de contato de atribuição, mas nenhum registro correspondente na tabela de Pontos de contato no conjunto de dados importado para o relatório. Como essas tabelas são filtradas por data de modificação, é possível que o registro de lead/ponto de contato de atribuição tenha sido modificado mais recentemente do que o registro de ponto de contato e, portanto, o ponto de contato de lead/atribuição tenha sido importado para o conjunto de dados, enquanto o registro de ponto de contato original não era. Para corrigir esse problema, aumente o intervalo de datas filtrado para a tabela Touchpoint ou considere remover a restrição de data toda ela.

>[!NOTE]
>
>O ponto de contato é uma tabela grande, portanto, considere as compensações de um conjunto de dados mais completo em relação à quantidade de dados que devem ser importados.

### Custo {#cost}

Os relatórios de custos nos modelos só estão disponíveis no nível da campanha e do canal. No entanto, o Discover oferece relatórios em níveis mais baixos de granularidade para alguns provedores de anúncios (ou seja, criativo, palavra-chave, grupos de anúncios etc.). Para obter mais detalhes sobre como os dados de custo são modelados nos modelos, consulte a [!UICONTROL Modelo de dados] seção desta documentação. Se o filtro de dimensão em [!UICONTROL Descobrir] for definido como canal ou campanha, os custos nos níveis de canal, subcanal e campanha deverão estar alinhados entre o Discover e os modelos de relatório.

### ROI {#roi}

Como o ROI é calculado a partir da Receita e do Custo Atribuídos, as mesmas discrepâncias que podem surgir em qualquer um desses cálculos podem surgir no ROI e pelos mesmos motivos, conforme observado nessas seções.

### Pontos de Contato {#touchpoints}

Essas métricas, conforme mostrado nos modelos de relatórios, não são espelhadas no Discover. Atualmente, não há comparação direta possível entre os dois.

### Tráfego na Web {#web-traffic}

O modelo de dados de relatório normaliza os dados dimensionais do canal, do subcanal e da campanha por meio da relação entre Sessão e Ponto de contato. Isso é diferente do modelo de dados Discover, que desnormaliza essas dimensões para Sessão. Devido a essa distinção, as contagens gerais de visitas e visitantes devem corresponder entre o Discover e o modelo de relatórios. No entanto, uma vez exibidos ou filtrados por dimensão, não é esperado que esses números se alinhem. Isso ocorre porque os dados dimensionais no modelo só estão disponíveis para eventos da Web que resultaram em um ponto de contato (ou seja, eventos não anônimos). Para obter mais detalhes, consulte [Modelo de dados](#data-model) seção desta documentação.

Pode haver pequenas discrepâncias nas contagens totais de formulários do site entre [!DNL Discover] e o template. Isso ocorre porque o modelo de dados no modelo de relatório obtém dados dimensionais para o Formulário do site por meio de uma relação com Sessão e, em seguida, Ponto de contato; há algumas instâncias em que os dados do formulário do site não têm uma sessão correlacionada.

### Clientes potenciais e contas {#leads-and-accounts}

Os relatórios dimensionais para contas tocadas podem diferir ligeiramente entre [!DNL Discover] e o modelo, isso se deve novamente à modelagem dimensional proveniente da relação entre ponto de contato e ponto de contato principal ou ponto de contato de atribuição. Consulte os detalhes descritos na seção Receita atribuída para obter mais detalhes.

Todas as contagens de clientes potenciais em [!UICONTROL Descobrir] são atribuídas a contagens de clientes potenciais e, no modelo de relatório, a métrica é [!UICONTROL clientes potenciais] tocado. Por conseguinte, não é possível uma comparação direta entre os dois relatórios no que respeita a esta medida.

### Caminho de engajamento {#engagement-path}

Não existe comparação direta entre a [!UICONTROL Caminho de engajamento] relatório em [!DNL Discover] e o template. O relatório em [!DNL Discover] é modelado a partir do ponto de contato, enquanto o relatório no modelo é modelado a partir do ponto de contato de atribuição. O modelo se concentra exclusivamente nas oportunidades e seus pontos de contato relacionados, em vez de mostrar todos os dados de pontos de contato.

### Velocidade da oferta {#deal-velocity}

Não deve haver discrepância entre esse relatório no modelo e o bloco Velocidade da transação no painel Velocidade no Discover.
