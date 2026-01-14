---
description: Criando uma Exibição da Lista de Campanhas [!DNL Salesforce] Orientação de campanhas para usuários do Marketo Measure
title: 'Criação de uma Exibição de lista de campanhas para Campanhas do  [!DNL Salesforce] '
exl-id: 8c673ea3-ac24-4b3d-b67d-76888179c07a
feature: Channels
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '437'
ht-degree: 5%

---

# Criando uma Exibição da Lista de Campanhas para [!DNL Salesforce] Campanhas {#creating-a-campaign-list-view-for-salesforce-campaigns}

Saiba como criar uma Exibição de lista para as campanhas que você deseja sincronizar com os Pontos de contato do comprador.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado do aplicativo](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md){target="_blank"}.

A exibição de lista do Campaign que pode ser criada permite que você tenha um local &quot;ir para&quot; para ver e gerenciar os campos &quot;Tipo&quot; e &quot;Habilitar pontos de contato do comprador&quot; para garantir que cada uma das campanhas do [!DNL Salesforce] que informam aos canais de marketing offline seja configurada corretamente.

1. Vá para a guia Campanhas em [!DNL Salesforce] e crie uma nova exibição de lista
1. Nomeie a exibição &quot;Campanhas para sincronização com [!DNL Marketo Measure]&quot;.
1. Queremos que esta lista mostre apenas as campanhas que queremos sincronizar com o [!DNL Marketo Measure], então precisamos de alguns filtros:

   * **Tipo** [IGUAL] &#39;Todos os Tipos de Campanha que mapeamos para seus canais offline&#39;. Consulte seu Plano de Implementação ou a guia Canais Offline em [!DNL Marketo Measure] ([experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} -> Minha Conta -> Configurações -> Canais Offline). Você pode selecionar os Tipos que deseja (aqueles mapeados para um canal de marketing offline) por meio do ícone de lupa.

      * Escolha 3 Types max para cada filtro. Há um limite de caracteres que você pode ter em um campo de filtro. Comece com 3 tipos por filtro e adicione linhas adicionais de filtros &quot;Tipo&quot;, se necessário.

   * **Data de Criação** [MAIOR OU IGUAL] sua data de início [!DNL Marketo Measure]. Você pode encontrar sua data de início no painel de ROI dentro do aplicativo [!DNL Marketo Measure]. Basta selecionar &quot;Desde a data de criação&quot; no intervalo de datas do traço e ela mostrará a data de início.
   * **&#42;Tipo de Registro&#42;** - Para fazer edições no Modo de Exibição de Lista, é necessário adicionar um filtro para o Tipo de Registro. Cada registro de campanha que talvez precise ser editado precisa ser o mesmo Tipo de registro.

1. Edite os campos Selecionados para exibição na exibição de lista. A configuração completa da exibição em lista deve ser semelhante ao exemplo abaixo:

   Essa visualização permite que você veja suas campanhas e edite os campos &quot;Tipo&quot; e &quot;Ativar pontos de contato do comprador&quot;, se necessário. À medida que você cria novas campanhas que devem ser sincronizadas com o [!DNL Marketo Measure], elas aparecerão nesse modo de exibição e você poderá gerenciar todas as configurações dessas campanhas diretamente da lista.

   Para fazer edições em linha a partir da Exibição de Lista, você precisa verificar se o seguinte também é verdadeiro dentro da sua configuração [!DNL Salesforce]:

   * **[!UICONTROL Configuração]** > **[!UICONTROL Interface De Usuário]** > **[!UICONTROL Habilitar Edição Em Linha]**
   * Também é necessário ativar listas aprimoradas marcadas (logo abaixo da caixa para edição em linha)
   * Verifique se você tem permissões para os campos

>[!MORELIKETHIS]
>
>[Resolvendo problemas comuns com a Edição Embutida do Modo de Exibição de Lista](http://help.salesforce.com/articleView?id=000003911&language=en_US&type=1){target="_blank"}
