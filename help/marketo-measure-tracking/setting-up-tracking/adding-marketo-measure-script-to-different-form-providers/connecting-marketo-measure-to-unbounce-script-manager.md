---
unique-page-id: 18874743
description: Conexão [!DNL Marketo Measure] para cancelar o gerenciamento de scripts - [!DNL Marketo Measure] - Documentação do produto
title: Conexão [!DNL Marketo Measure] para cancelar o Gerenciador de Script
exl-id: c3212bc3-1d8f-4da5-bb2d-11ffd2fb4e98
source-git-commit: ae5b77744d523606ce6cfcf48d7e8d5049d5ccb7
workflow-type: tm+mt
source-wordcount: '124'
ht-degree: 1%

---

# Conexão [!DNL Marketo Measure] para cancelar o Gerenciador de Script {#connecting-marketo-measure-to-unbounce-script-manager}

[!DNL Marketo Measure] integra-se diretamente com o Unbounce, permitindo rastrear a fonte de marketing digital das conversões da sua página de aterrissagem diretamente em [!DNL Salesforce]. Para fazer a conexão, basta adicionar o [!DNL Marketo Measure] para seu Gerenciador de scripts de devolução. Veja como.

1. Faça logon no [!DNL Unbounce] conta.
1. Clique em **[!UICONTROL Configurações]** > **[!UICONTROL Gerenciador de scripts]** > **[!UICONTROL Adicionar script]**.
1. Na janela pop-up , selecione [!UICONTROL Script personalizado] e nomeie-o como &quot;[!DNL Marketo Measure Marketing Analytics].&quot; Clique em **[!UICONTROL Adicionar detalhes do script]**.
1. Selecione a posição no Cabeçalho. Inclua o script na Página de aterrissagem principal e na Caixa de diálogo de confirmação do formulário. Cole o [!DNL Marketo Measure] abaixo na caixa.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Clique em **[!UICONTROL Salvar]**.

O [!DNL Marketo Measure] A integração funciona em Desfazer a devolução de páginas de aterrissagem, desde que estejam hospedadas em seu domínio (por exemplo, landing.mysite.com) e não nos que usam o domínio unbounce.com.
