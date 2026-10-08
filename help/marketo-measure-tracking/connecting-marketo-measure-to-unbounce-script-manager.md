---
description: Conectando [!DNL Marketo Measure] para orientação do Unbounce Script Manager para usuários do Marketo Measure
title: Conectando [!DNL Marketo Measure] ao Gerenciador de Script de Unbounce
exl-id: c3212bc3-1d8f-4da5-bb2d-11ffd2fb4e98
feature: Tracking
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: dcbeff6e-0253-5a4b-9ac2-1b67cc4a6286
    internal-label: Tracking
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '127'
ht-degree: 3%
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
