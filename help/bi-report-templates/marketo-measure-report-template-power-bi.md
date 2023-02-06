---
description: "[!DNL Marketo Measure] Modelo de relatório - Power BI - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Modelo de relatório - Power BI"
exl-id: c296b8f9-4033-4723-9a71-63a458640d27
source-git-commit: 65e7f8bc198ceba2f873ded23c94601080ad0546
workflow-type: tm+mt
source-wordcount: '2571'
ht-degree: 1%

---

# [!DNL Marketo Measure] Modelo de relatório - Power BI {#marketo-measure-report-template-power-bi}

## Introdução {#getting-started}

Você pode acessar o modelo de relatório do Power BI [here](https://github.com/adobe/Marketo-Measure-BI-Templates){target="_blank"}.

Abra o Adobe [!DNL Marketo Measure] Arquivo de Power BI do modelo de relatório.

![](assets/marketo-measure-report-template-power-bi-1.png)

Você pode encontrar suas informações específicas de Servidor, Depósito e Esquema na [!DNL Marketo Measure] na interface do usuário do [!DNL Data Warehouse] página de informações. As instruções para localizar esta página são detalhadas [here](/help/marketo-measure-data-warehouse/data-warehouse-access-reader-account.md){target="_blank"}.

Os parâmetros QueryFilterStartDate e QueryFilterEndDate são usados para limitar a quantidade de dados importados. Esses parâmetros devem estar no formato SQL, pois são usados nas queries enviadas para [!DNL Snowflake]. Por exemplo, se você quiser limitar os dados aos últimos dois anos, QueryFilterStartDate seria dateadd (year,-2,current_date()). Esses parâmetros são comparados com os tipos de dados datetime, portanto, é recomendável usar dateadd (day,1,current_date()) para que QueryFilterEndDate retorne todos os dados para a hora atual.

## Conexão de dados {#data-connection}

Os parâmetros inseridos ao abrir o arquivo são usados para estruturar consultas nativas que importam tabelas do data warehouse. Você ainda precisará configurar uma conexão de dados para [!DNL Snowflake] instância. Para isso, você precisará dos mesmos nomes de Servidor e Depósito, juntamente com seu Nome de Usuário e Senha. Detalhes sobre onde encontrar seu nome de usuário e redefinir sua senha, se necessário, estão documentados [here](/help/marketo-measure-data-warehouse/data-warehouse-access-reader-account.md){target="_blank"}.

## Importação de dados {#data-import}

Para melhorar o desempenho do relatório e aproveitar os recursos de transformação no Power Query, optamos por configurar esse template usando o método de armazenamento de importação.

### Parâmetros de consulta {#query-parameters}

Para limitar os dados importados para o modelo, cada tabela é configurada usando uma consulta nativa como fonte. As consultas nativas exigem aprovação para execução, você precisará clicar em executar para cada query. Essa etapa só é necessária na primeira vez que as consultas são executadas, ou se os parâmetros forem alterados.

![](assets/marketo-measure-report-template-power-bi-2.png)

Todas as consultas filtram as linhas excluídas e a variável [!UICONTROL fatos] as tabelas são definidas para filtrar linhas com uma data modificada entre as datas inicial e final inseridas como parâmetros.

>[!NOTE]
>
>Como os filtros de data são aplicados à data modificada de uma linha, tenha cuidado ao relatar datas que não estão no intervalo de datas restrito. Por exemplo, o intervalo de datas modificado é limitado aos últimos dois anos. Isso pode incluir um evento com data de evento de três anos atrás, mas que foi modificado recentemente. No entanto, o relatório de eventos de três anos atrás retornará resultados incompletos, pois nem todas as linhas terão sido modificadas no período de dois anos.

![](assets/marketo-measure-report-template-power-bi-3.png)

Os quadros seguintes são tratados como quadros de fatos; os limites de data na data modificada foram adicionados a esses queries.

* Atividade
* Touchpoint
* Ponto de contato principal
* Ponto de contato da atribuição
* Custo
* Formulário do site
* Sessão
* Membro de campanha
* Tarefa
* Evento
* Transição de Estágio de Cliente Potencial/Contato
* Transição de Estágio da Oportunidade

As tabelas a seguir são tratadas como tabelas de dimensão; nenhum limite de data é definido para esses queries.

* Conta
* Campanha
* Contato
* Taxa de conversões
* Oportunidade
* Lead
* Estágio
* Canal

## Transformações de dados {#data-transformations}

Algumas transformações foram aplicadas aos dados no Power Query. Para exibir as transformações específicas de qualquer tabela, abra o Power Query, navegue até uma tabela e observe as Etapas aplicadas no lado esquerdo da janela. Algumas das transformações específicas são descritas abaixo.

![](assets/marketo-measure-report-template-power-bi-4.png)

### Colunas removidas {#removed-columns}

Para simplificar o modelo de dados e remover dados redundantes e desnecessários, reduzimos o número de colunas importadas para o Power BI a partir do original [!DNL Snowflake] tabela. As colunas removidas incluem chaves estrangeiras desnecessárias, dados dimensionais desnormalizados melhor aproveitados por relacionamentos com outras tabelas no modelo, colunas de auditoria e campos usados para [!DNL Marketo Measure] processamento. Você pode adicionar ou remover colunas conforme necessário para suas necessidades comerciais. Navegue até a etapa &quot;Outras colunas removidas&quot; após a etapa &quot;Origem&quot; em qualquer tabela, clique no ícone de engrenagem e atualize as colunas selecionadas na lista fornecida.

>[!NOTE]
>
>* Tenha cuidado ao adicionar outros valores de chave externa. Muitas vezes, o Power BI é definido para detectar relacionamentos automaticamente no modelo e a adição de valores de chave estrangeira pode resultar em links indesejáveis entre as tabelas e/ou na desativação de relacionamentos existentes.
>
>* A maioria das tabelas na [!DNL Marketo Measure] data warehouse contém dados dimensionais desnormalizados. Trabalhamos para normalizar e limpar o modelo no Power BI o máximo possível para melhorar o desempenho e a precisão dos dados. Tenha cuidado ao incluir quaisquer campos desnormalizados adicionais em tabelas de fatos, isso pode quebrar a filtragem dimensional em tabelas e também pode resultar em relatórios imprecisos.



![](assets/marketo-measure-report-template-power-bi-5.png)

### Colunas renomeadas {#renamed-columns}

Tabelas e colunas foram renomeadas para torná-las mais amigáveis e para padronizar convenções de nomenclatura. Para exibir as alterações no nome da coluna, navegue até a etapa &quot;Colunas renomeadas&quot; após a etapa &quot;Outras colunas removidas&quot; em qualquer tabela.

![](assets/marketo-measure-report-template-power-bi-6.png)

### Segmentos renomeados {#renamed-segments}

Como os nomes de segmentos são personalizáveis, eles têm nomes de colunas genéricos no data warehouse do Snowflake. [!DNL BIZ_SEGMENT_NAMES] é uma tabela de mapeamento que lista o nome de segmento genérico e seu nome de segmento personalizado mapeado, definido na seção do segmento no [!DNL Marketo Measure] IU. A tabela Nome do segmento é usada para renomear as colunas de segmento nas tabelas de Ponto de contato de lead e de Ponto de contato de atribuição. Se não houver nenhum segmento personalizado, o nome genérico do segmento permanecerá.

![](assets/marketo-measure-report-template-power-bi-7.png)

### Conversão de ID com distinção entre maiúsculas e minúsculas {#case-sensitive-id-conversion}

[!DNL Marketo Measure] Os dados do têm algumas tabelas em que os valores da chave primária (ID) fazem distinção entre maiúsculas e minúsculas, ou seja, ponto de contato e campanha. O mecanismo de dados que direciona a camada de modelagem de Power BI não diferencia maiúsculas de minúsculas, resultando em valores de id &quot;duplicados&quot;. Para preservar a diferenciação entre maiúsculas e minúsculas desses valores principais, implementamos etapas de transformação que anexam caracteres invisíveis a caracteres em minúsculas, preservando a exclusividade da ID quando avaliada na camada do mecanismo de dados. Mais detalhes sobre a questão e as etapas detalhadas sobre o método que empregamos podem ser encontrados [here] (https://blog.crossjoin.co.uk/2019){target="_blank"}. Esses valores de ID que diferenciam maiúsculas e minúsculas são rotulados como &quot;IDs de associação&quot; e são usados como chaves de associação na camada de relação. Escondemos as IDs de junção da camada de relatório, mantendo os valores da ID original visíveis para uso no relatório, pois os caracteres invisíveis podem interferir nas funções de recortar/colar e na filtragem.

![](assets/marketo-measure-report-template-power-bi-8.png)

![](assets/marketo-measure-report-template-power-bi-9.png)

### Linhas Adicionadas {#rows-added}

Para adicionar recursos de conversão de moeda aos cálculos no modelo, adicionamos uma coluna de taxa de conversão corporativa às tabelas Oportunidade e Custo. O valor desta coluna é adicionado no nível da linha e é avaliado ao se associar à tabela Taxa de Conversão na id de data e moeda. Para obter mais detalhes sobre como a conversão de moeda funciona neste modelo, consulte o [Conversão de moeda](#currency-conversion) nesta documentação.

![](assets/marketo-measure-report-template-power-bi-10.png)

A tabela Índice de conversão armazenada em [!DNL Snowflake] contém um intervalo de datas para cada conversão. O Power BI não permite critérios de associação em um cálculo (ou seja, entre um intervalo de datas). Para ingressar na data, adicionamos etapas à tabela Taxa de conversão para expandir as linhas de modo que haja uma linha para cada data no intervalo de datas de conversão.

![](assets/marketo-measure-report-template-power-bi-11.png)

## Modelo de dados {#data-model}

Clique na imagem abaixo para obter sua versão em tamanho real.

[![](assets/marketo-measure-report-template-power-bi-12.png)](/help/bi-report-templates/assets/power-bi-data-model.png){target="_blank"}

### Relacionamentos e fluxo de dados {#relationships-and-data-flow}

Os dados do evento, usados para criar pontos de contato, são armazenados na variável [!UICONTROL Sessão], [!UICONTROL Tarefa], [!UICONTROL Evento], [!UICONTROL Atividade]e Tabelas de membros da campanha. Essas tabelas de eventos se associam à tabela de ponto de contato por meio de suas respectivas IDs e, se o evento resultou em um ponto de contato, os detalhes são armazenados na tabela de ponto de contato.

Os pontos de contato de lead e os pontos de contato de atribuição são armazenados em suas próprias tabelas, com um link para a tabela de ponto de contato. A maioria dos dados dimensionais dos pontos de contato de lead e atribuição é obtida de seu link para o ponto de contato correspondente.

Nesse modelo, as dimensões Campanha e Canal são vinculadas ao Ponto de contato, portanto, todos os relatórios sobre essas dimensões são por meio desse link e significa que o relatório dimensional dos dados do evento pode estar incompleto. Isso ocorre porque muitos eventos não têm links para essas dimensões até que sejam processados em Pontos de contato. Observação: alguns eventos, como Sessões, têm links diretos para as dimensões Campanha e Canal . Se desejar criar relatórios no nível da sessão sobre essas dimensões, é recomendável criar um modelo de dados separado para essa finalidade.

Os dados de custo são armazenados em diferentes níveis de agregação dentro da variável [!DNL Snowflake] tabela de custos do data warehouse. Para todos os provedores de anúncios, os dados do nível da campanha podem ser acumulados no nível do Canal. Por esse motivo, esse modelo extrai dados de custo com base no sinalizador &quot;campaign_is_aggregate_cost&quot;. Os custos relatados automaticamente podem ser enviados somente no nível do Canal e não são solicitados a ter dados do Campaign. Para fornecer o relatório de custo mais preciso possível, os custos relatados automaticamente são obtidos com base no sinalizador &quot;channel_is_agregatable_cost&quot;. A consulta que importa dados de custo é gravada com a seguinte lógica: Se ad_provider = &quot;SelfReported&quot; então channel_is_aggregate_cost = true, else campaign_is_aggregate_cost = true.

Os dados de custo e de ponto de contato têm algumas dimensões comuns, de modo que ambas as tabelas de fatos têm relacionamentos com as tabelas de dimensão Campanha e Canal.

No contexto deste modelo, [!UICONTROL Líder], [!UICONTROL Contato], [!UICONTROL Conta]e [!UICONTROL Oportunidade] os dados são considerados dados dimensionais e unidos diretamente à variável [!UICONTROL Líder] Ponto de contato e [!UICONTROL Atribuição] Tabelas de pontos de contato.

### Tabelas adicionadas {#added-tables}

**Data**

Como o Power BI permite apenas relacionamentos entre tabelas em uma coluna, uma tabela de dimensão Data foi adicionada para facilitar a associação necessária entre as tabelas que contêm quantias (Oportunidade e Custo) e a tabela Taxa de Conversão. Consulte a seção Conversão de moeda para obter mais detalhes sobre como as conversões de moeda são calculadas neste modelo.

**Medidas**

Todas as medidas foram adicionadas a um quadro de Medidas específico. Ele não está conectado ao modelo, mas serve como um único local para armazenar todas as medidas, para facilitar o uso.

**Modelo de atribuição**

Uma tabela separada foi adicionada para armazenar os nomes dos modelos de atribuição. Essa tabela é usada para criar filtros que permitem que o usuário alterne entre modelos de atribuição para cálculos de receita atribuída.

### Conversão de moeda {#currency-conversion}

As taxas na tabela Índice de conversão representam o valor necessário para converter uma quantia da moeda corporativa. As conversões para qualquer moeda exigem uma conversão dupla, primeiro da moeda original para a moeda corporativa e, em seguida, da moeda corporativa para a moeda selecionada. A primeira etapa desta cadeia no modelo é adicionar uma coluna com a taxa de conversão às tabelas com valores, Oportunidade e Custo. Essas etapas são detalhadas no cabeçalho Linhas adicionadas da seção Transformações de dados neste documento. A conversão da moeda original para a moeda corporativa consiste em dividir o valor por essa coluna adicionada. A próxima etapa é multiplicar o valor da moeda corporativa pela taxa na tabela Índice de conversão que corresponde à moeda selecionada.

* Converter o valor original para o valor da moeda corporativa / taxa de conversão corporativa = valor na moeda corporativa
* Converter o valor de corporativo para o valor de moeda selecionado na moeda corporativa `*` taxa de conversão da moeda selecionada = valor na moeda selecionada

Como as taxas de conversão não precisam ser estáticas e podem ser alteradas por intervalos de datas especificados, todos os cálculos de conversão de moeda devem ser executados no nível da linha. Novamente, como as taxas de conversão pertencem a um intervalo de datas específico, o cálculo da pesquisa deve ser executado dentro do DAX da medida, para que o relacionamento possa ser definido tanto no código da moeda quanto na data.

As medidas de conversão de moeda nesse modelo substituem um valor de 1,0 para a taxa se nenhuma taxa de conversão puder ser identificada. Foram criadas medidas separadas para exibir o valor da moeda da medida e alertar se um cálculo incluir mais de um valor da moeda (ou seja, um valor não pôde ser convertido para a moeda selecionada).

![](assets/marketo-measure-report-template-power-bi-13.png)

## Definições de dados {#data-definitions}

Definições foram adicionadas ao modelo de Power BI para tabelas, colunas personalizadas e medidas.

![](assets/marketo-measure-report-template-power-bi-14.png)

![](assets/marketo-measure-report-template-power-bi-15.png)

![](assets/marketo-measure-report-template-power-bi-16.png)

Para exibir definições de colunas provenientes diretamente de [!DNL Snowflake]consulte o [documentação do data warehouse](/help/marketo-measure-data-warehouse/data-warehouse-schema.md){target="_blank"}

## Discrepâncias entre modelos e Discover {#discrepancies-between-templates-and-discover}

### Receita atribuída {#attributed-revenue}

Os pontos de contato de lead e os pontos de contato de atribuição herdam dados dimensionais do ponto de contato original. O modelo de relatório fornece todos os dados dimensionais herdados do relacionamento com o ponto de contato, enquanto no modelo do Discover os dados dimensionais são desnormalizados para os registros de Ponto de contato de lead e atribuição. A receita atribuída globalmente ou os valores de receita do pipeline atribuído devem estar alinhados entre os dois relatórios. No entanto, podem ser observadas discrepâncias quando a receita é dividida ou filtrada por dados dimensionais (canal, subcanal ou campanha). Se os valores de receita dimensional não corresponderem entre o modelo e o Discover, é provável que haja registros de ponto de contato ausentes no conjunto de dados do relatório de modelo. Isso acontece quando há um registro de Lead ou de ponto de contato de atribuição, mas nenhum registro correspondente na tabela de ponto de contato dentro do conjunto de dados importado para o relatório. Como essas tabelas são filtradas por data modificada, é possível que o registro de Ponto de Contato de Atribuição/Lead tenha sido modificado mais recentemente do que o registro de Ponto de Contato e, portanto, o Ponto de Contato de Atribuição/Lead tenha sido importado para o conjunto de dados, enquanto o registro de Ponto de Contato original não. Para corrigir esse problema, amplie o intervalo de datas filtrado para a tabela de Pontos de contato ou considere remover a restrição de data para todos juntos. Observação: O ponto de contato é uma tabela grande, portanto, considere as compensações de um conjunto de dados mais completo em comparação à quantidade de dados que deve ser importada.

### Custo {#cost}

O relatório de custo nos modelos está disponível somente no nível da campanha e do canal, no entanto, o Discover oferece relatórios em níveis mais baixos de granularidade para alguns provedores de anúncios (ou seja, criativo, palavra-chave, grupos de anúncios etc.). Para obter mais detalhes sobre como os dados de custo são modelados nos modelos, consulte a seção Modelo de dados desta documentação. Se o filtro de dimensão em [!UICONTROL Discover] é definido como canal ou campanha, os custos nos níveis de canal, subcanal e campanha devem se alinhar entre o Discover e os modelos de relatório.

### ROI {#roi}

Como o ROI é calculado a partir da Receita e do Custo Atribuído, as mesmas discrepâncias que podem surgir em qualquer um desses cálculos podem surgir no ROI e pelos mesmos motivos, conforme observado nessas seções.

### Pontos de Contato {#touchpoints}

Essas métricas, conforme mostrado nos modelos de relatórios, não são espelhadas no Discover. Atualmente, não é possível uma comparação direta entre as duas.

### Tráfego na Web {#web-traffic}

O modelo de dados do modelo de relatório normaliza os dados dimensionais do canal, subcanal e campanha por meio da relação entre Sessão e Ponto de Contato. Isso é diferente do modelo de dados do Discover, que denormaliza essas dimensões para Sessão. Devido a essa distinção, as contagens gerais de visitas e visitantes devem corresponder entre o Discover e o modelo de relatório. No entanto, uma vez exibido ou filtrado por dimensão, não é esperado que esses números se alinhem. Isso ocorre porque os dados dimensionais no modelo estão disponíveis somente para eventos da Web que resultaram em um ponto de contato (ou seja, eventos não anônimos). Para obter mais detalhes, consulte a [Modelo de dados](#data-model) desta documentação.

Pode haver pequenas discrepâncias nas contagens totais de formulários do site entre [!DNL Discover] e o modelo. Isso ocorre porque o modelo de dados no modelo de relatório obtém dados dimensionais para o Formulário do site por meio de uma relação com Sessão e, em seguida, ponto de contato; há algumas instâncias em que os dados do formulário do site não têm uma sessão correlacionada.

### Clientes potenciais e contas {#leads-and-accounts}

Os relatórios dimensionais para contas tocadas podem diferir ligeiramente entre o Discover e o modelo, isso se deve novamente à modelagem dimensional resultante da relação entre o Ponto de contato e o Ponto de contato de cliente potencial ou Ponto de contato de atribuição. Consulte os detalhes descritos na seção Receita atribuída para obter mais detalhes.

Todas as contagens de lead no Discover são atribuídas às contagens de lead, e no modelo de relatório a métrica é tocada pelos leads. Por conseguinte, não é possível uma comparação direta entre os dois relatórios para esta medida.

### Caminho de envolvimento {#engagement-path}

Não há comparação direta entre as variáveis [!UICONTROL Caminho de envolvimento] no Discover e o modelo. O relatório em [!DNL Discover] é modelado fora do ponto de contato, enquanto o relatório no modelo é modelado fora do ponto de contato da atribuição. O modelo se concentra exclusivamente em oportunidades e pontos de contato relacionados, em vez de mostrar todos os dados de pontos de contato.

### Velocidade do contrato {#deal-velocity}

Não deve haver discrepância entre esse relatório no modelo e o bloco Velocidade do contrato no painel Velocity no Discover.
