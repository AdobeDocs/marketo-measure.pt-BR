---
unique-page-id: 18874690
description: Reautorizar Contas Conectadas - [!DNL Marketo Measure]
title: Reautorizar contas conectadas
exl-id: 7abd1d67-5bed-45bb-844f-0ffd23c3d7f8
feature: APIs, Integration
TQID: https://experienceleague.adobe.com/mp53G9-w1l43mBQM1ijW8tTh7rNQ75cPAimZA-kdLvs
product_v2: id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
feature_v2: id: c8f57308-7e33-4e41-a385-b55041c78939id: fb43f4c1-87d9-4081-8df1-6fe7e6e5cdc8
source-git-commit: 9ceb54139bfa9b6ce7c2c5fbb4e25e649f5708a3
workflow-type: tm+mt
source-wordcount: 192
ht-degree: 5%

---

# Reautorizar contas conectadas {#reauthorizing-connected-accounts}

Quando uma conta é desconectada da conta [!DNL Marketo Measure], o status da plataforma é alterado para &quot;Autorização necessária&quot; e exibe um ícone de chave vermelha.

Se a plataforma de anúncios for desconectada, o [!DNL Marketo Measure] não poderá baixar dados de custo ou, se a marcação automática estiver habilitada, anexar os parâmetros UTM [!DNL Marketo Measure] a qualquer anúncio recém-criado. [!DNL Marketo Measure] não poderá anexar retroativamente os parâmetros UTM a nenhum ponto de contato criado a partir da plataforma de anúncio enquanto a conta estiver desconectada.

Se a plataforma do CRM for desconectada, o [!DNL Marketo Measure] não poderá atualizar os dados do [!DNL Marketo Measure] nem enviar novos pontos de contato para a sua organização. Depois que a conexão do CRM for restabelecida, o [!DNL Marketo Measure] enviará por push todos os dados que foram perdidos enquanto a conta estava desconectada.

![](assets/1-1.png)

## Reautorização de contas desconectadas {#re-authorizing-disconnected-accounts}

1. Vá para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e faça logon.
1. Selecione **[!UICONTROL Configurações]** na guia [!UICONTROL Minha conta], no canto superior esquerdo.
1. Encontre a seção Integrações à esquerda e clique em **[!UICONTROL Conexões]**.
1. Selecione o símbolo de Chave vermelha ao lado da conta que precisa ser reconectada.
1. Uma janela pop-up será exibida, solicitando que você forneça os detalhes de logon da conta.
