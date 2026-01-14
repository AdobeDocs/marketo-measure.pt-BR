---
description: Reautorizar a orientação de Contas conectadas para usuários do Marketo Measure
title: Reautorizar contas conectadas
exl-id: 7abd1d67-5bed-45bb-844f-0ffd23c3d7f8
feature: APIs, Integration
hidefromtoc: true
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '190'
ht-degree: 3%

---

# Reautorizar contas conectadas {#reauthorizing-connected-accounts}

Quando uma conta é desconectada da conta [!DNL Marketo Measure], o status da plataforma é alterado para &quot;Autorização necessária&quot; e exibe um ícone de chave vermelha.

Se a plataforma de anúncios for desconectada, o [!DNL Marketo Measure] não poderá baixar dados de custo ou, se a marcação automática estiver habilitada, anexar os parâmetros UTM [!DNL Marketo Measure] a qualquer anúncio recém-criado. [!DNL Marketo Measure] não poderá anexar retroativamente os parâmetros UTM a nenhum ponto de contato criado a partir da plataforma de anúncio enquanto a conta estiver desconectada.

Se a plataforma do CRM for desconectada, o [!DNL Marketo Measure] não poderá atualizar os dados do [!DNL Marketo Measure] nem enviar novos pontos de contato para a sua organização. Depois que a conexão do CRM for restabelecida, o [!DNL Marketo Measure] enviará por push todos os dados que foram perdidos enquanto a conta estava desconectada.

![](assets/utilizing-connections-7.png)

## Reautorização de contas desconectadas {#re-authorizing-disconnected-accounts}

1. Vá para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e faça logon.
1. Selecione **[!UICONTROL Configurações]** na guia [!UICONTROL Minha conta], no canto superior esquerdo.
1. Encontre a seção Integrações à esquerda e clique em **[!UICONTROL Conexões]**.
1. Selecione o símbolo de Chave vermelha ao lado da conta que precisa ser reconectada.
1. Uma janela pop-up será exibida, solicitando que você forneça os detalhes de logon da conta.
