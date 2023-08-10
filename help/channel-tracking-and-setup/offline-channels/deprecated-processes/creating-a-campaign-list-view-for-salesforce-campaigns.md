---
unique-page-id: 18874718
description: Criar uma visualização da lista de campanhas para [!DNL Salesforce Campaigns] - [!DNL Marketo Measure] - Documentação do produto
title: Criação de uma exibição de lista de campanha para [!DNL Salesforce] Campanhas
exl-id: 8c673ea3-ac24-4b3d-b67d-76888179c07a
feature: Channels
source-git-commit: 31ffb58f5318b71d478056f9b914eb1d42c7719a
workflow-type: tm+mt
source-wordcount: '424'
ht-degree: 3%

---

# Criação de uma exibição de lista de campanha para[!DNL Salesforce]Campanhas {#creating-a-campaign-list-view-for-salesforce-campaigns}

Saiba como criar uma Exibição de lista para as campanhas que você deseja sincronizar com os Pontos de contato do comprador.

A exibição de lista do Campaign que pode ser criada permite ter um local &quot;ir para&quot; para ver e gerenciar os campos &quot;Tipo&quot; e &quot;Ativar pontos de contato do comprador&quot; para garantir que cada um dos [!DNL Salesforce] as campanhas que informam seus canais de marketing offline estão configuradas corretamente.

1. Vá até a guia Campanhas no [!DNL Salesforce] e criar uma nova visualização de lista
1. Nomeie a exibição &quot;Campanhas para sincronizar com [!DNL Marketo Measure].&quot;
1. Queremos que essa lista mostre apenas as campanhas que queremos sincronizar [!DNL Marketo Measure] portanto, precisamos de alguns filtros:

   * **Tipo** [IGUAL A] &quot;Todos os tipos de campanha que mapeamos para seus canais offline&quot;. Consulte seu Plano de implementação ou a guia Canais offline no [!DNL Marketo Measure] ([experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} -> Minha conta -> Configurações -> Canais offline). Você pode selecionar os Tipos que deseja (aqueles mapeados para um canal de marketing offline) por meio do ícone de lupa.

      * Escolha 3 Types max para cada filtro. Há um limite de caracteres que você pode ter em um campo de filtro. Comece com 3 tipos por filtro e adicione linhas adicionais de filtros &quot;Tipo&quot;, se necessário.

   * **Data de criação** [MAIOR OU IGUAL] seu [!DNL Marketo Measure] data de início. Você pode encontrar sua data de início no painel de ROI dentro do [!DNL Marketo Measure] Aplicativo. Basta selecionar &quot;Desde a data de criação&quot; no intervalo de datas do traço e ela mostrará a data de início.
   * **&#42;Tipo de registro&#42;** - Para fazer edições na Exibição de lista, é necessário adicionar um filtro para o Tipo de registro. Cada registro de campanha que talvez precise ser editado precisa ser o mesmo Tipo de registro.

1. Edite os campos Selecionados para exibição na exibição de lista. A configuração completa da exibição em lista deve ser semelhante ao exemplo abaixo:

   Essa visualização permite que você veja suas campanhas e edite os campos &quot;Tipo&quot; e &quot;Ativar pontos de contato do comprador&quot;, se necessário. Ao criar novas campanhas que devem ser sincronizadas com o [!DNL Marketo Measure], eles aparecerão nessa visualização e você poderá gerenciar todas as configurações para essas campanhas diretamente da lista.

   Para fazer edições em linha a partir da Exibição de lista, é necessário garantir que o seguinte também seja verdadeiro dentro do [!DNL Salesforce] configuração:

   * **[!UICONTROL Configuração]** > **[!UICONTROL Interface do usuário]** > **[!UICONTROL Ativar edição em linha]**
   * Também é necessário ativar listas aprimoradas marcadas (logo abaixo da caixa para edição em linha)
   * Verifique se você tem permissões para os campos

>[!MORELIKETHIS]
>
>[Solução de problemas comuns com a Edição em linha do Modo de exibição de lista](http://help.salesforce.com/articleView?id=000003911&amp;language=en_US&amp;type=1){target="_blank"}
