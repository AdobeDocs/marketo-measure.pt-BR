---
unique-page-id: 18874743
description: Conectando [!DNL Marketo Measure] ao Gerenciador de Scripts de Liberação - [!DNL Marketo Measure]
title: Conexão de [!DNL Marketo Measure] para cancelar o Gerenciador de script
exl-id: c3212bc3-1d8f-4da5-bb2d-11ffd2fb4e98
feature: Tracking
TQID: https://experienceleague.adobe.com/Bo0BFhBLbNfX89BScumswE7WvVzztOak1P38xcXdk1M
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
source-git-commit: 9ceb54139bfa9b6ce7c2c5fbb4e25e649f5708a3
workflow-type: tm+mt
source-wordcount: 120
ht-degree: 6%

---

# Conectando [!DNL Marketo Measure] ao Gerenciador de Script de Unbounce {#connecting-marketo-measure-to-unbounce-script-manager}

O [!DNL Marketo Measure] integra-se diretamente com o Unbounce, permitindo que você acompanhe a fonte de marketing digital das suas conversões de página de aterrissagem diretamente no [!DNL Salesforce]. Para fazer a conexão, basta adicionar o script [!DNL Marketo Measure] ao Gerenciador de Scripts de Desativação. Veja como.

1. Faça logon em sua conta do [!DNL Unbounce].
1. Clique em **[!UICONTROL Configurações]** > **[!UICONTROL Gerenciador de Scripts]** > **[!UICONTROL Adicionar Script]**.
1. Na janela pop-up, selecione [!UICONTROL Script personalizado] e nomeie-o como &quot;[!DNL Marketo Measure Marketing Analytics]&quot;. Clique em **[!UICONTROL Adicionar detalhes do script]**.
1. Selecione a disposição no cabeçalho. Inclua o script na página de aterrissagem principal e na caixa de diálogo de confirmação do formulário. Cole o script [!DNL Marketo Measure] abaixo na caixa.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Salvar]**.

A integração do [!DNL Marketo Measure] funciona em páginas de aterrissagem de Unbounce, desde que elas estejam hospedadas em seu domínio (por exemplo, landing.mysite.com), não nas que usam o domínio unbounce.com.
