---
unique-page-id: 18874602
description: Custos de canal de marketing - [!DNL Marketo Measure] - Documentação do produto
title: Custos de canal de marketing
exl-id: 36ccaff3-db55-47bd-a24e-4aa1894f13e0
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '1299'
ht-degree: 1%

---

# Custos de canal de marketing {#marketing-channel-costs}

Um dos benefícios mais fundamentais do uso [!DNL Marketo Measure] é a capacidade de conectar esforços de marketing diretamente ao impacto na receita, com a granularidade desejada. É possível ver o retorno do investimento no nível do ponto de contato. Para aproveitar esse benefício, os custos do canal precisam ser carregados no [!DNL Marketo Measure] aplicativo. Os relatórios de ROI são criados e disponibilizados automaticamente na **Painel de ROI de marketing** em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target=&quot;_blank&quot;}.

[Clique aqui para navegar diretamente para as instruções.](/help/marketing-spend/spend-management/marketing-channel-costs.md#uploading-marketing-costs)

O [!DNL Marketo Measure] O recurso de Gastos de marketing permite que os clientes façam upload de seus gastos em todos os Canais, Subcanais e Campanhas. Quanto mais dados forem adicionados pelos clientes, mais relatórios de ROI poderemos exibir no Painel de atribuição de receita.

Os custos relatados e importados das conexões diretas de anúncios são automaticamente obtidos no nível mais granular e não precisam ser carregados. Isso inclui nossas integrações atuais com o Google AdWords, Bing Ads, Doubleclick e Facebook.

[Clique aqui para navegar diretamente para as perguntas frequentes.](/help/marketing-spend/spend-management/marketing-channel-costs.md#faq)

## Definições {#definitions}

**Gasto por Campanha**

No nível mais granular, os clientes podem inserir os gastos por Campanhas individuais, agrupadas em seu respectivo Canal. Para campanhas CRM, [!DNL Marketo Measure] O transferiu a ID da campanha para uma coluna separada que ajudará a mapear os gastos da campanha offline do seu CRM para essa tabela. Adicionar gastos nesse nível permitirá que os clientes vejam o ROI da campanha e otimizem o desempenho por Campanha.

O total de todas as Campanhas não precisa somar até qualquer valor inserido no Subcanal ou Canal, mas não pode ser maior do que qualquer valor inserido no Subcanal ou Canal. Se a soma for menor que o valor inserido no Subcanal ou Canal, [!DNL Marketo Measure] O adicionará automaticamente uma linha para &quot;Outro&quot; para cobrir a diferença e preencher quaisquer lacunas.

**Gasto por Subcanal**

Em um nível mais alto, os clientes podem inserir o gasto por Subcanal, agrupado abaixo de seu Canal. Adicionar gastos nesse nível permitirá que os clientes visualizem o ROI do Subcanal e otimizem o desempenho por Subcanal.

O total de Subcanais não precisa somar até qualquer valor inserido no Canal, mas não pode ser maior do que qualquer valor inserido no Canal. Se a soma for menor que o valor inserido no Canal, [!DNL Marketo Measure] O adicionará automaticamente uma linha para &quot;Outro&quot; para cobrir a diferença e preencher quaisquer lacunas.

**Gasto por Canal**

No nível mais alto, os clientes podem inserir os gastos por Canal. Adicionar gastos nesse nível permitirá que os clientes vejam o ROI do canal e otimizem o desempenho por canal.

**Seletor de datas**

O intervalo de datas padrão começará a partir da data de início com [!DNL Marketo Measure] até o mês atual. Para garantir que os custos permaneçam corretos, você não poderá informar os custos para os próximos meses, mas poderá informar os custos para os meses anteriores à sua parceria com a [!DNL Marketo Measure].

**Filtro**

Para restringir seus resultados na tabela de Gastos de marketing, selecione um Canal na parte superior para filtrar outros canais. Isso é útil quando você tem uma equipe focada em um canal singular.

**Pesquisar**

Use a caixa Pesquisar para localizar o texto correspondente de Canais, Subcanais ou Campanhas.

**Baixar custos atuais**

O CSV baixado obterá os resultados da tela atual, o que significa que qualquer data, filtro ou pesquisa aplicada será baixada da maneira que for.

**Carregar CSV**

Independentemente da exibição localizada no navegador, se for uma exibição filtrada ou padrão com todas as datas e canais, você poderá fazer upload de qualquer CSV.

O erro mais comum que enfrentamos é o formato das colunas de data, que acontece se o formato de data for alterado e pode acontecer intencionalmente se você mudar entre o Excel e/ou Google Sheets. Lembre-se de que a data deve ser MM-YY, portanto 12 de setembro e não 12 de setembro ou 12 de maio e não 05-12.

## Antes de começar {#before-you-begin}

[!DNL Marketo Measure] O vem com 13 canais padrão que podem ser usados ou expandidos. Além disso, até 40 canais online e offline podem ser criados para acomodar sua estrutura de marketing exclusiva. Com base nisso, um total de 200 subcanais pode ser criado para suportar esses canais online e offline também.

[!DNL Marketo Measure] O baixará automaticamente os custos de canal de marketing de plataformas com as quais tem uma integração de API, como Bing Ads e Google AdWords. Custos para plataformas que não estejam integradas com [!DNL Marketo Measure] precisará ser carregado manualmente. Os canais de marketing devem ser configurados antes que os dados de custo sejam carregados.

## Fazer upload de custos de marketing {#uploading-marketing-costs}

Depois que os canais e as regras de marketing forem configurados ou atualizados, os custos associados poderão ser carregados. Para fazer isso, siga as etapas abaixo:

**Etapa 1: Navegue até a página Gasto de marketing na [!DNL Marketo Measure] Aplicativo.**

Vá para o **[!UICONTROL Minha conta]** , clique em **[!UICONTROL Configurações]** e navegue até o **[!UICONTROL Gasto de marketing]** na barra lateral esquerda abaixo da **[!UICONTROL Relatório]** seção.

![](assets/1.png)

**Etapa 2: Baixe o CSV de custos atuais**

Navegue até a direita da tela e clique em **[!UICONTROL Baixar Custos Atuais].** Essa opção permite baixar uma planilha no formato CSV.

![](assets/2.png)

**Etapa 3: Abra o arquivo CSV e faça alterações**

Você pode importar o arquivo e abri-lo utilizando as Google Sheets, Apple Numbers, Microsoft Excel ou a sua escolha de software. [!DNL Marketo Measure] A recomenda usar as planilhas Google.

Após importar a planilha, faça as alterações desejadas, como adicionar custos aos canais e subcanais ou atualizar as informações existentes.

Verifique as regras de lógica na sua planilha. Cada linha deve conter um canal e um de seus subcanais separados por um (.) ponto no fim. É importante usar esse formato de forma consistente.

Por exemplo, para indicar o Facebook como o subcanal e o social como o canal, a regra deve ser escrita da seguinte maneira: &quot;Social.Facebook.&quot; Da mesma forma, para rastrear um evento offline, a sintaxe do canal deve ser: &quot;Eventos.Grande Conferência.&quot; Os exemplos são mostrados na imagem abaixo:

![](assets/3.png)

_Observações adicionais_:

Não modifique as datas na planilha, pois isso pode causar problemas quando o documento for carregado.

Não deixe nenhum campo em branco. Mesmo se não houver um valor em dólar para adicionar, digite $0 como valor em dólar.

Os custos do Bing Ads e Google AdWords não precisam ser inseridos ou atualizados porque [!DNL Marketo Measure] puxa automaticamente esses dados de sua conexão de API com essas plataformas.

**Etapa 4: Salvar arquivo no formato CSV**

Se você estiver trabalhando nas Google Sheets, baixe o arquivo primeiro. Não exclua nem exclua dados mensais, pois isso causará dificuldades ao tentar fazer upload do arquivo CSV para [!DNL Marketo Measure] mais tarde.

**Etapa 5: Fazer upload do arquivo CSV**

Vá para o **[!UICONTROL Custo]** da seção [!DNL Marketo Measure] aplicativo e clique **[!UICONTROL Upload.CSV]**. O sistema será atualizado e refletirá as novas informações.

## Perguntas frequentes {#faq}

**Por que os números estão aparecendo no CSV**

Se nenhum valor for inserido em um nível superior como Canal ou Subcanal, [!DNL Marketo Measure] O adicionará automaticamente os níveis secundários para você, que serão apresentados assim que o arquivo for carregado. Além disso, se a soma dos filhos for menor que um valor inserido para o pai, [!DNL Marketo Measure] adicionará uma linha &quot;Outro&quot; para mostrar a diferença no total.

**Como as Campanhas são determinadas na lista que estou vendo?**

No momento, nossos resultados listam as Campanhas que vimos que são creditadas com um Ponto de Contato. Se houver uma atividade de uma Campanha, mostraremos essa Campanha com base na Data do ponto de contato em que ocorreu.

**Há muitas linhas e colunas para filtrar - posso consolidar a exibição?**

Com a capacidade de alterar o intervalo de datas, filtrar o canal ou procurar valores, é possível consolidar os resultados da tabela para melhor se adequar às suas necessidades.

**Por que não posso carregar um arquivo?**

Temos diferentes conjuntos de permissões no [!DNL Marketo Measure] Aplicativo. Para carregar um arquivo, você precisa ser um &quot;AccountAdmin&quot;. Para contornar isso, solicite acesso do seu AccountAdmin ou faça com que seu AccountAdmin carregue o arquivo em seu nome. Uma lista de usuários e suas funções pode ser encontrada em **[!UICONTROL Minha conta]** > **[!UICONTROL Configurações]** > **[!UICONTROL Exibir/adicionar usuários da conta]**.
