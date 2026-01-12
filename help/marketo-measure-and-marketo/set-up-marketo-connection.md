---
description: Configurar Conexão Marketo - [!DNL Marketo Measure]
title: Configurar conexão do Marketo
exl-id: 11660539-1cc5-4768-8f22-d6f7cd0b94f3
feature: Integration
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '258'
ht-degree: 0%

---


# Configurar conexão do Marketo {#set-up-marketo-connection}

Veja como configurar sua conexão com o Marketo.

>[!PREREQUISITES]
>
>[Criar uma função de Usuário Somente API](https://experienceleague.adobe.com/docs/marketo/using/product-docs/administration/users-and-roles/create-an-api-only-user.html?lang=pt-BR){target="_blank"} para a conexão [!DNL Marketo Measure]/Marketo Engage.

1. Em [!DNL Marketo Measure], clique no menu suspenso **[!UICONTROL Minha Conta]** e selecione **[!UICONTROL Configurações]**.

   ![Lista suspensa Minha Conta da Marketo Measure com a opção Configurações](assets/set-up-marketo-connection-1.png)

1. Em [!UICONTROL Integrações], clique em **[!UICONTROL Conexões]**.

   ![Menu Integrações com a opção Conexões](assets/set-up-marketo-connection-2.png)

1. Clique em **[!UICONTROL Configurar Nova Conexão do CRM]**.

   ![Botão Configurar Nova Conexão do CRM](assets/set-up-marketo-connection-3.png)

1. Clique no botão **[!UICONTROL Conectar]** ao lado de Marketo.

   ![Botão Conectar ao lado da opção de integração do Marketo](assets/set-up-marketo-connection-4.png)

1. Em uma nova guia, faça logon na conta do Marketo Engage. Vá para **Admin** > **Serviços da Web**. Role para baixo até API REST. Realce e salve o Ponto de extremidade e o URL do serviço de identidade. Você precisa deles nas etapas a seguir.

   ![Página de Serviços Web da Marketo mostrando o ponto de extremidade da API REST e URLs de identidade](assets/set-up-marketo-connection-5.png)

1. Ainda no Marketo Engage, selecione **LaunchPoint** na árvore à esquerda. Encontre o serviço personalizado que você deseja conectar ao Marketo Measure e clique em **Exibir Detalhes**.

   ![Menu do LaunchPoint com serviço personalizado e opção Exibir Detalhes](assets/set-up-marketo-connection-6.png)

1. Realce e salve a ID do cliente e o Segredo do cliente. Clique em **Fechar**.

   ![Detalhes do serviço LaunchPoint mostrando a ID do Cliente e o Segredo do Cliente](assets/set-up-marketo-connection-7.png)

1. De volta ao [!DNL Marketo Measure], preencha os campos com os dados coletados.

   ![Formulário de conexão do Marketo com campos de credencial e ponto de extremidade](assets/set-up-marketo-connection-8.png)

1. Após inserir os valores, clique em **[!UICONTROL Autenticar]**. Sua conta do Marketo Engage está conectada ao [!DNL Marketo Measure].

   ![Mensagem de confirmação de conexão do Marketo bem-sucedida](assets/set-up-marketo-connection-9.png)

   >[!NOTE]
   >O [!DNL Marketo Measure] faz chamadas para a API do Marketo em seu nome sem consumir nenhum dos limites da API do Marketo, portanto, não há necessidade de se preocupar com limites e alocação de crédito com outras integrações.
