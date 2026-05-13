---
unique-page-id: 42762762
description: Configurar Conexão Marketo - [!DNL Marketo Measure]
title: Configurar conexão do Marketo
exl-id: 11660539-1cc5-4768-8f22-d6f7cd0b94f3
feature: Integration
TQID: https://experienceleague.adobe.com/IQhZzu6iqS-5BdooPRA6-A8BoJtQ936NRFJHPGu3Xp4
product_v2: id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
feature_v2: id: c8f57308-7e33-4e41-a385-b55041c78939
topic_v2: id: aa2f3246-cb95-4b30-8899-fdf7d73550ccid: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 9ceb54139bfa9b6ce7c2c5fbb4e25e649f5708a3
workflow-type: tm+mt
source-wordcount: 206
ht-degree: 0%

---

# Configurar conexão do Marketo {#set-up-marketo-connection}

Veja como configurar sua conexão com o Marketo.

>[!PREREQUISITES]
>
>[Criar uma função de Usuário Somente API](https://experienceleague.adobe.com/docs/marketo/using/product-docs/administration/users-and-roles/create-an-api-only-user.html){target="_blank"} para a conexão [!DNL Marketo Measure]/Marketo Engage.

1. Em [!DNL Marketo Measure], clique no menu suspenso **[!UICONTROL Minha Conta]** e selecione **[!UICONTROL Configurações]**.

   ![](assets/set-up-marketo-connection-1.png)

1. Em [!UICONTROL Integrações], clique em **[!UICONTROL Conexões]**.

   ![](assets/set-up-marketo-connection-2.png)

1. Clique em **[!UICONTROL Configurar Nova Conexão do CRM]**.

   ![](assets/set-up-marketo-connection-3.png)

1. Clique no botão **[!UICONTROL Conectar]** ao lado de Marketo.

   ![](assets/set-up-marketo-connection-4.png)

1. Em uma nova guia, faça logon na conta do Marketo Engage. Vá para **Admin** > **Serviços da Web**. Role para baixo até API REST. Realce e salve o Ponto de extremidade e o URL do serviço de identidade. Você precisa deles nas etapas a seguir.

   ![](assets/set-up-marketo-connection-5.png)

1. Ainda no Marketo Engage, selecione **LaunchPoint** na árvore à esquerda. Encontre o serviço personalizado que você deseja conectar ao Marketo Measure e clique em **Exibir Detalhes**.

   ![](assets/set-up-marketo-connection-6.png)

1. Realce e salve a ID do cliente e o Segredo do cliente. Clique em **Fechar**.

   ![](assets/set-up-marketo-connection-7.png)

1. De volta ao [!DNL Marketo Measure], preencha os campos com os dados coletados.

   ![](assets/set-up-marketo-connection-8.png)

1. Após inserir os valores, clique em **[!UICONTROL Autenticar]**. Sua conta do Marketo Engage está conectada ao [!DNL Marketo Measure].

   ![](assets/set-up-marketo-connection-9.png)

   >[!NOTE]
   >
   >O [!DNL Marketo Measure] faz chamadas para a API do Marketo em seu nome sem consumir nenhum dos limites da API do Marketo, portanto, não há necessidade de se preocupar com limites e alocação de crédito com outras integrações.
