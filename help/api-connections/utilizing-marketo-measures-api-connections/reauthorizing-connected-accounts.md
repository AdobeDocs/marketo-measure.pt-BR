---
unique-page-id: 18874690
description: Reautorizar Contas Conectadas - [!DNL Marketo Measure]
title: Reautorizar contas conectadas
exl-id: 7abd1d67-5bed-45bb-844f-0ffd23c3d7f8
feature: APIs, Integration
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '185'
ht-degree: 3%

---

# Reautorizar contas conectadas {#reauthorizing-connected-accounts}

Quando uma conta é desconectada do seu [!DNL Marketo Measure] conta, o status da plataforma será alterado para &quot;Autorização necessária&quot; e exibirá um ícone de chave vermelha.

Se a plataforma de anúncios se desconectar, [!DNL Marketo Measure] não poderá baixar dados de custo ou, se a marcação automática estiver habilitada, anexar o [!DNL Marketo Measure] Parâmetros UTM para qualquer anúncio recém-criado. [!DNL Marketo Measure] O não poderá anexar retroativamente os parâmetros UTM a nenhum ponto de contato criado na plataforma de anúncio enquanto a conta estiver desconectada.

Se sua plataforma CRM se desconectar, [!DNL Marketo Measure] não poderá atualizar [!DNL Marketo Measure] ou enviar quaisquer novos pontos de contato para sua organização. Depois que a conexão com o CRM for restabelecida, [!DNL Marketo Measure] enviará por push todos os dados perdidos enquanto a conta estava desconectada.

![](assets/1-1.png)

## Reautorização de contas desconectadas {#re-authorizing-disconnected-accounts}

1. Ir para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e faça logon.
1. Selecionar **[!UICONTROL Configurações]** no [!UICONTROL Minha conta] no canto superior esquerdo.
1. Encontre a seção Integrações à esquerda e clique em **[!UICONTROL Conexões]**.
1. Selecione o símbolo de Chave vermelha ao lado da conta que precisa ser reconectada.
1. Uma janela pop-up será exibida, solicitando que você forneça os detalhes de logon da conta.
