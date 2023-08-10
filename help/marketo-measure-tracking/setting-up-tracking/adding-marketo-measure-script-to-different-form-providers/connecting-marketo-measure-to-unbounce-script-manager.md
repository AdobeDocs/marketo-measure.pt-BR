---
unique-page-id: 18874743
description: Conectando [!DNL Marketo Measure] para Desativar o Gerenciador de scripts - [!DNL Marketo Measure] - Documentação do produto
title: Conexão de [!DNL Marketo Measure] para cancelar o Gerenciador de script
exl-id: c3212bc3-1d8f-4da5-bb2d-11ffd2fb4e98
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '124'
ht-degree: 9%

---

# Conexão de[!DNL Marketo Measure]para cancelar o Gerenciador de script {#connecting-marketo-measure-to-unbounce-script-manager}

[!DNL Marketo Measure] O integra-se diretamente com o Unbounce, permitindo que você rastreie a fonte de marketing digital das suas conversões de página de aterrissagem diretamente no [!DNL Salesforce]. Para fazer a conexão, basta adicionar o [!DNL Marketo Measure] para o seu gerenciador de scripts Unbounce. Veja como.

1. Faça logon no [!DNL Unbounce] conta.
1. Clique em **[!UICONTROL Configurações]** > **[!UICONTROL Gerenciador de scripts]** > **[!UICONTROL Adicionar script]**.
1. No pop-up, selecione [!UICONTROL Script personalizado] e nomeie como &quot;[!DNL Marketo Measure Marketing Analytics].&quot; Clique em **[!UICONTROL Adicionar detalhes do script]**.
1. Selecione a disposição no cabeçalho. Inclua o script na página de aterrissagem principal e na caixa de diálogo de confirmação do formulário. Cole o [!DNL Marketo Measure] script abaixo na caixa.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Salvar]**.

A variável [!DNL Marketo Measure] A integração do funciona nas páginas de aterrissagem do Unbounce, desde que estejam hospedadas em seu domínio (por exemplo, landing.mysite.com) e não nas que usam o domínio unbounce.com.
