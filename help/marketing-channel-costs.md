---
description: Orientação de custos do canal de marketing para usuários do Marketo Measure
title: Custos de canal de marketing
exl-id: 36ccaff3-db55-47bd-a24e-4aa1894f13e0
feature: Channels, Spend Management
hidefromtoc: true
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '1327'
ht-degree: 1%

---

# Custos de canal de marketing {#marketing-channel-costs}

Um dos benefícios mais fundamentais de usar o [!DNL Marketo Measure] é a capacidade de conectar esforços de marketing diretamente ao impacto na receita, com a granularidade desejada. É possível ver o retorno do investimento no nível do ponto de contato. Para aproveitar esse benefício, os custos do canal devem ser carregados no aplicativo [!DNL Marketo Measure]. Os relatórios de ROI são criados e disponibilizados automaticamente no **Painel de ROI de marketing** em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}.

[Clique aqui para navegar diretamente para as instruções.](/help/marketing-channel-costs.md)

O recurso Gasto com marketing [!DNL Marketo Measure] permite que os clientes carreguem seus gastos em todos os canais, subcanais e campanhas. Quanto mais dados forem adicionados pelos clientes, mais os relatórios de ROI serão exibidos no Painel de atribuição de receita.

Os custos relatados e importados das conexões de anúncios diretos são automaticamente obtidos no nível mais granular e não precisam ser carregados. Isso inclui nossas integrações atuais com o Google AdWords, Bing Ads, Doubleclick e Facebook.

[Clique aqui para acessar diretamente as Perguntas frequentes.](/help/marketing-channel-costs.md)

## Definições {#definitions}

**Gastos por campanha**

No nível mais granular, os clientes podem inserir gastos por Campanhas individuais, agrupadas em seu respectivo Canal. Para Campanhas do CRM, [!DNL Marketo Measure] puxou a ID da Campanha para uma coluna separada que ajuda a mapear os gastos com campanhas offline do seu CRM para esta tabela. Adicionar gastos nesse nível permite que os clientes visualizem o ROI do Campaign e otimizem o desempenho pelo Campaign.

O total de todas as campanhas não precisa somar quaisquer valores inseridos no Subcanal ou Canal, mas não pode ser maior do que quaisquer valores inseridos no Subcanal ou Canal. Se a soma for menor que o valor inserido no Subcanal ou Canal, [!DNL Marketo Measure] adicionará automaticamente uma linha para &quot;Outros&quot; para cobrir a diferença e preencher as lacunas.

**Gastos por Subcanal**

Em um nível superior, os clientes podem inserir gastos por Subcanal, agrupados abaixo de seu Canal. A adição de gastos nesse nível permite que os clientes visualizem o ROI do subcanal e otimizem o desempenho por subcanal.

O total de todos os subcanais não precisa totalizar até os valores inseridos no Canal, mas não pode ser maior do que os valores inseridos no Canal. Se a soma for menor que o valor inserido no Canal, [!DNL Marketo Measure] adicionará automaticamente uma linha para &quot;Outros&quot; para cobrir a diferença e preencher as lacunas.

**Gastos por canal**

No nível mais alto, os clientes podem inserir gastos por canal. A adição de gastos nesse nível permite que os clientes visualizem o ROI do canal e otimizem o desempenho por canal.

**Seletor de datas**

O intervalo de datas padrão começará a partir da sua data de início com [!DNL Marketo Measure] até o mês atual. Para garantir que os custos permaneçam corretos, você não poderá inserir custos para meses futuros, mas poderá inserir custos para meses antes de sua parceria com a [!DNL Marketo Measure].

**Filtro**

Para restringir seus resultados na tabela de Gastos com marketing, selecione um Canal na parte superior para filtrar outros canais. Isso é útil quando você tem uma equipe focada em um canal único.

**Pesquisa**

Use a caixa Pesquisar para localizar o texto correspondente de Canais, Subcanais ou Campanhas.

**Baixar Custos Atuais**

O CSV baixado extrai os resultados da tela atual, o que significa que quaisquer datas, filtros ou pesquisa aplicados serão baixados como estão.

**Carregar CSV**

Independentemente da visualização que estiver localizada no navegador, se for uma visualização filtrada ou a visualização padrão com todas as datas e canais, você poderá fazer upload de qualquer CSV.

O erro mais comum enfrentado é o formato das colunas de data, que acontece se o formato de data é alterado e pode ocorrer intencionalmente se mover entre o Excel e/ou o Google Sheets. Lembre-se de que a data deve ser MM-AA, portanto, setembro de 12 e não setembro de 12, ou maio de 12 e não 05-12.

## Antes de começar {#before-you-begin}

O [!DNL Marketo Measure] vem com 13 canais padrão que podem ser usados ou expandidos. Além disso, até 40 canais online e offline podem ser criados para acomodar sua estrutura de marketing exclusiva. Com base nisso, um total de 200 subcanais também pode ser criado para dar suporte a esses canais online e offline.

O [!DNL Marketo Measure] baixará automaticamente os custos do canal de marketing de plataformas com as quais ele tem uma integração de API, como Bing Ads e Google AdWords. Os custos das plataformas que não estão integradas com o [!DNL Marketo Measure] precisam ser carregados manualmente. Os canais de marketing devem ser configurados antes que os dados de custo sejam carregados.

## Fazer upload de custos de marketing {#uploading-marketing-costs}

Depois que os canais e as regras de marketing forem configurados ou atualizados, os custos associados poderão ser carregados. Para fazer isso, siga as etapas abaixo:

**Etapa 1: Navegar até a página Gastos com marketing no aplicativo [!DNL Marketo Measure].**

Vá para o menu **[!UICONTROL Minha conta]**, clique em **[!UICONTROL Configurações]** e navegue até a opção **[!UICONTROL Gastos com marketing]**, na barra lateral esquerda, na seção **[!UICONTROL Relatórios]**.

![Vá para o menu Minha Conta, clique em Configurações e depois](assets/spend-management-4.png)

**Etapa 2: baixar o CSV de custos atuais**

Navegue à direita da tela e clique em **[!UICONTROL Baixar custos atuais].** Essa opção permite baixar uma planilha no formato CSV.

![Navegue até o lado direito da tela e clique em Baixar atual](assets/spend-management-1.png)

**Etapa 3: Abrir o Arquivo CSV e Fazer Alterações**

Você pode importar o arquivo e abri-lo utilizando o Google Sheets, Apple Numbers, Microsoft Excel ou sua escolha de software. A [!DNL Marketo Measure] recomenda usar o Google Sheets.

Após importar a planilha, faça as alterações desejadas, como adicionar custos aos canais e subcanais ou atualizar as informações existentes.

Verifique as regras de lógica na sua planilha. Cada linha deve conter um canal e um de seus subcanais separados por um ponto (.) no final. É importante usar esse formato de maneira consistente.

Por exemplo, para indicar o Facebook como subcanal e social como canal, a regra deve ser escrita da seguinte maneira: &quot;Social.Facebook&quot;. Da mesma forma, para rastrear um evento offline, a sintaxe do canal deve ser: &quot;Events.Big Conference&quot;. Os exemplos são mostrados na imagem abaixo:

![Por exemplo, para indicar o Facebook como o subcanal e a rede social como o](assets/spend-management-2.png)

_Observações Adicionais_:

Não modifique as datas na planilha porque isso pode causar problemas quando o documento for carregado.

Não deixe nenhum campo em branco. Mesmo se não houver um valor em dólar para adicionar, insira $0 como o valor em dólar.

Os custos do Bing Ads e do Google AdWords não precisam ser inseridos ou atualizados porque o [!DNL Marketo Measure] extrai automaticamente esses dados de sua conexão de API com essas plataformas.

**Etapa 4: salvar arquivo no formato CSV**

Se estiver trabalhando no Google Sheets, baixe o arquivo primeiro. Não exclua nem exclua dados mensais, pois isso causa dificuldades ao tentar carregar o arquivo CSV para [!DNL Marketo Measure] mais tarde.

**Etapa 5: carregar o arquivo CSV**

Vá para a seção **[!UICONTROL Cost]** do aplicativo [!DNL Marketo Measure] e clique em **[!UICONTROL Upload.CSV]**. O sistema será atualizado e refletirá as novas informações.

## Perguntas frequentes {#faq}

**Por que os números aparecem no CSV**

Se nenhum valor for inserido em um nível superior, como Canal ou Subcanal, o [!DNL Marketo Measure] somará automaticamente os níveis secundários para você, que serão apresentados quando o arquivo for carregado. Além disso, se a soma dos filhos for menor que um valor inserido para o pai, [!DNL Marketo Measure] adicionará uma linha &quot;Outros&quot; para mostrar a diferença no total.

**Como as Campanhas são determinadas na lista que estou vendo?**

No momento, nossos resultados listam as Campanhas que já vimos serem creditadas com um ponto de contato. Se houve atividade de uma Campanha, mostramos essa Campanha com base na Data do ponto de contato em que ocorreu.

**Há muitas linhas e colunas para filtrar. É possível consolidar a exibição?**

Com a capacidade de alterar o intervalo de datas, filtrar o canal ou pesquisar valores, é possível consolidar os resultados da tabela para melhor atender às suas necessidades.

**Por que não posso carregar um arquivo?**

Temos conjuntos de permissões diferentes no aplicativo [!DNL Marketo Measure]. Para carregar um arquivo, você deve ser um &quot;AccountAdmin&quot;. Para contornar isso, solicite acesso ao seu AccountAdmin ou peça a ele que carregue o arquivo em seu nome. Uma lista de usuários e suas funções podem ser encontradas em **[!UICONTROL Minha Conta]** > **[!UICONTROL Configurações]** > **[!UICONTROL Exibir/Adicionar Usuários à Conta]**.
