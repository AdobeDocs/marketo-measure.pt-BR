---
unique-page-id: 18874718
description: Criando uma exibição de lista de campanha para [!DNL Salesforce Campaigns] - [!DNL Marketo Measure] - Documentação do produto
title: Criando uma exibição de lista de campanha para [!DNL Salesforce] Campanhas
exl-id: 8c673ea3-ac24-4b3d-b67d-76888179c07a
source-git-commit: 02f686645e942089df92800d8d14c76215ae558f
workflow-type: tm+mt
source-wordcount: '424'
ht-degree: 0%

---

# Criando uma exibição de lista de campanha para [!DNL Salesforce] Campanhas {#creating-a-campaign-list-view-for-salesforce-campaigns}

Saiba como criar uma Exibição de lista para as campanhas que você deseja sincronizar com Pontos de contato do comprador.

A exibição da lista de campanha que pode ser criada permite ter um local &quot;go-to&quot; para ver e gerenciar os campos &quot;Type&quot; e &quot;Enable Buyer Touchpoints&quot; para garantir que cada um dos [!DNL Salesforce] campanhas que informam que seus canais de marketing offline são configuradas corretamente.

1. Vá até a guia Campanhas em [!DNL Salesforce] e criar uma nova exibição de lista
1. Nomeie a exibição como &quot;Campanhas a serem sincronizadas [!DNL Marketo Measure].&quot;
1. Queremos que esta lista mostre apenas as campanhas com as quais queremos sincronizar [!DNL Marketo Measure] então precisamos de alguns filtros:

   * **Tipo** [IGUAL] &quot;Todos os tipos de campanha que mapeamos para seus canais offline&quot;. Consulte o Plano de implementação ou a guia Canais offline em [!DNL Marketo Measure] ([experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} -> Minha conta -> Configurações -> Canais offline). Você pode selecionar os Tipos desejados (aqueles mapeados para um canal de marketing offline) por meio do ícone da lupa.

      * Escolha o máximo de 3 Tipos para cada filtro. Existe um limite de caracteres que você pode ter em um campo de filtro. Comece com 3 Tipos por filtro e adicione linhas adicionais de filtros &quot;Tipo&quot;, se necessário.
   * **Data de criação** [MAIOR OU IGUAL] your [!DNL Marketo Measure] data de início. Você pode encontrar a data de início no painel do ROI no [!DNL Marketo Measure] Aplicativo. Basta selecionar &quot;Desde a data de criação&quot; no intervalo de datas do traço e ele mostrará a data de início.
   * **&#42;Tipo de registro&#42;** - Para fazer edições na Exibição de lista, é necessário adicionar um filtro para Tipo de registro. Cada registro de campanha que você pode precisar editar precisa ser do mesmo Tipo de registro.


1. Edite os campos Selecionados para mostrar na exibição de lista. A configuração completa da exibição de lista deve ser semelhante ao exemplo abaixo:

   Essa visualização permite visualizar suas campanhas e editar os campos &quot;Tipo&quot; e &quot;Ativar pontos de contato do comprador&quot;, se necessário. Ao criar novas campanhas que devem ser sincronizadas com o [!DNL Marketo Measure], elas aparecerão nessa visualização e você poderá gerenciar todas as configurações para essas campanhas diretamente da lista.

   Para fazer edições em linha na Exibição de lista, você precisa verificar se o seguinte também é verdadeiro em sua [!DNL Salesforce] configuração:

   * **[!UICONTROL Configuração]** > **[!UICONTROL Interface do usuário]** > **[!UICONTROL Ativar edição em linha]**
   * Também é necessário ativar as listas aprimoradas marcadas (logo abaixo da caixa para edição em linha)
   * Certifique-se de ter permissões para os campos

>[!MORELIKETHIS]
>
>[Solução de problemas comuns com a edição em linha da exibição de lista](http://help.salesforce.com/articleView?id=000003911&amp;language=en_US&amp;type=1){target="_blank"}
