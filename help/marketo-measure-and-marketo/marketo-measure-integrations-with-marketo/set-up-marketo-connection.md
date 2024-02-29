---
unique-page-id: 42762762
description: Configurar conexão do Marketo - [!DNL Marketo Measure]
title: Configurar conexão do Marketo
exl-id: 11660539-1cc5-4768-8f22-d6f7cd0b94f3
feature: Integration
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '193'
ht-degree: 1%

---

# Configurar conexão do Marketo {#set-up-marketo-connection}

Veja como configurar sua conexão com o Marketo.

>[!PREREQUISITES]
>
>[Criar uma função de usuário Somente API](https://experienceleague.adobe.com/docs/marketo/using/product-docs/administration/users-and-roles/create-an-api-only-user.html) para o [!DNL Marketo Measure]/Marketo Engage conexão.

1. Entrada [!DNL Marketo Measure], clique no link **[!UICONTROL Minha conta]** e selecione **[!UICONTROL Configurações]**.

   ![](assets/set-up-marketo-connection-1.png)

1. Em [!UICONTROL Integrações], clique em **[!UICONTROL Conexões]**.

   ![](assets/set-up-marketo-connection-2.png)

1. Clique em **[!UICONTROL Configurar Nova Conexão do CRM]**.

   ![](assets/set-up-marketo-connection-3.png)

1. Clique em **[!UICONTROL Conectar]** botão ao lado do Marketo.

   ![](assets/set-up-marketo-connection-4.png)

1. Em uma nova guia, faça logon em sua conta Marketo Engage. Ir para **Admin** > **Serviços da Web**. Role para baixo até API REST. Realce e salve o Ponto de extremidade e o URL do serviço de identidade. você vai precisar deles daqui a pouco.

   ![](assets/set-up-marketo-connection-5.png)

1. Ainda no Marketo Engage, selecione **LaunchPoint** na árvore à esquerda. Localize o serviço personalizado que deseja conectar ao Marketo Measure e clique em **Exibir detalhes**.

   ![](assets/set-up-marketo-connection-6.png)

1. Realce e salve a ID do cliente e o Segredo do cliente. Clique em **Fechar**.

   ![](assets/set-up-marketo-connection-7.png)

1. Voltar para [!DNL Marketo Measure], preencha os campos com os dados que acabou de coletar.

   ![](assets/set-up-marketo-connection-8.png)

1. Depois de inserir os valores, clique em **[!UICONTROL Autenticar]**. Sua conta Marketo Engage será conectada ao [!DNL Marketo Measure].

   ![](assets/set-up-marketo-connection-9.png)

   >[!NOTE]
   >
   >[!DNL Marketo Measure] O fará chamadas para a API do Marketo em seu nome sem consumir nenhum dos limites da API do Marketo, portanto, não há necessidade de se preocupar com limites e alocação de crédito com outras integrações.
