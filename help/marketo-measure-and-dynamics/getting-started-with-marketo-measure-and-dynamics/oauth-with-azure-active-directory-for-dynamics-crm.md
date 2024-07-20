---
unique-page-id: 37357059
description: OAuth com [!DNL Azure Active Directory] para Dynamics CRM - [!DNL Marketo Measure]
title: OAuth com  [!DNL Azure Active Directory] for Dynamics CRM
exl-id: 0a2f6b29-541d-4965-a460-e6f19b934edb
feature: Microsoft Dynamics
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '805'
ht-degree: 0%

---

# OAuth com [!DNL Azure Active Directory] for Dynamics CRM {#oauth-with-azure-active-directory-for-dynamics-crm}

## Quem é afetado {#who-s-affected}

Esta configuração é para novos clientes do [!DNL Marketo Measure] que usam o Dynamics CRM com uma conta do [!DNL Azure Active Directory] (AAD) ou para clientes que desejam migrar do nome de usuário e senha herdados para o [!DNL Azure Active Directory] com OAuth.

>[!NOTE]
>
>Em ambos os cenários, o AAD foi configurado aqui para facilitar a conexão da instância do Dynamics no [!DNL Marketo Measure] como Provedor de Dados.

## Configurar Novo Aplicativo {#set-up-new-application}

1. Entre no seu [Portal do Azure](https://portal.azure.com/#home).

1. Escolha o locatário do Azure AD clicando em sua conta no canto superior direito da página, seguido por um clique na navegação do Diretório de alternância e selecionando o locatário apropriado. Ignore esta etapa se você tiver apenas um locatário do Azure AD na sua conta ou se já tiver selecionado o locatário apropriado do Azure AD.

   ![](assets/setup-2.png)

1. Pesquise por &quot;[!DNL Azure Active Directory]&quot; na barra de pesquisa e clique no nome a ser aberto.

   ![](assets/setup-3.png)

1. Clique em **[!UICONTROL Registros de aplicativo]** no menu à esquerda.

   ![](assets/setup-4.png)

1. Clique em **[!UICONTROL Novo registro]** na parte superior.

   ![](assets/setup-5.png)

1. Siga os prompts e crie um aplicativo. Não importa se é um aplicativo web ou um aplicativo cliente público (móvel e desktop), mas se você quiser exemplos específicos de aplicativos web ou aplicativos cliente públicos, confira as [inicializações rápidas](https://learn.microsoft.com/en-us/azure/active-directory/develop/v2-overview).\
   a. Nome é o nome do aplicativo e descreve o aplicativo para os usuários finais.\
   b. Em Tipos de conta compatíveis, selecione Contas em qualquer diretório organizacional e contas pessoais da Microsoft.\
   c. Forneça o URI de redirecionamento. Para Aplicativos Web, este é o URL base do seu aplicativo no qual os usuários podem fazer logon. Por exemplo, `http://localhost:12345`. Para clientes públicos (dispositivos móveis e desktop), o Azure AD o usa para retornar respostas de token. Insira um valor específico para seu aplicativo. Por exemplo, `http://MyFirstAADApp`.

1. Depois que você concluir o registro, o Azure AD atribuirá ao seu aplicativo um identificador de cliente exclusivo (a ID do aplicativo). Você precisa desse valor na próxima seção, portanto, copie-o da página do aplicativo.

1. Para localizar seu aplicativo no portal do Azure, clique em **[!UICONTROL Registros de Aplicativo]** e em **[!UICONTROL Todos os Aplicativos]**. Abra o aplicativo recém-criado

1. Clique em **[!UICONTROL Autenticação]** no menu à esquerda.

   ![](assets/setup-9.png)

1. Adicione as [!DNL Marketo Measure] URLs de redirecionamento: `https://apps.bizible.com/OAuth2` e `https://apps.bizible.com/OAuth2?identityOnly=true` à lista de URLs de Redirecionamento.

   ![](assets/setup-10.png)

1. Navegue até a guia Permissões de API e verifique se as permissões corretas foram atribuídas ao aplicativo.

   ![](assets/setup-10a.png)

1. Aqui, digite &quot;[!UICONTROL empresa]&quot; na caixa de pesquisa e clique em **[!UICONTROL Aplicativos Corporativos]**.

   ![](assets/setup-11.png)

1. Novamente, encontre e abra seu novo aplicativo na lista de aplicativos.

1. Na guia Permissões, clique em **[!UICONTROL Conceder consentimento administrativo para (nome da instância)]**.

   ![](assets/setup-13a.png)

1. Clique em **[!UICONTROL Aceitar]**.

   ![](assets/setup-13b.png)

1. Na guia &quot;[!UICONTROL Usuários e grupos]&quot;, verifique se os &quot;Usuários e grupos&quot; válidos estão atribuídos ao Aplicativo.

   ![](assets/setup-14.png)

## Criando um usuário da aplicação {#creating-an-application-user}

Quando o registro do aplicativo estiver concluído, um usuário do aplicativo poderá ser criado.

1. Navegue até o ambiente Common Data Service (`https://[org].crm.dynamics.com`).

1. Navegue até **[!UICONTROL Configurações]** > **[!UICONTROL Segurança]** > **[!UICONTROL Usuários]**.

1. Escolha **[!UICONTROL Usuários do Aplicativo]** no filtro de exibição.

1. Selecione **[!UICONTROL + Novo]**.

1. No form Usuário do Aplicativo, especifique as informações necessárias.

   >[!NOTE]
   >
   >* As informações de nome de usuário não devem corresponder a um usuário que exista no [!DNL Azure Active Directory].
   >
   >* No campo ID do Aplicativo, insira a ID do aplicativo registrado anteriormente no Azure AD.

1. Se a configuração estiver correta, depois de selecionar **[!UICONTROL Salvar]**, os campos **[!UICONTROL URI da ID do Aplicativo]** e **[!UICONTROL ID do Objeto do Azure AD]** serão preenchidos automaticamente com os valores corretos.

1. Antes de sair do formulário de usuário, escolha **[!UICONTROL Gerenciar Funções]** e atribua uma função de segurança a este usuário do aplicativo para que o usuário do aplicativo possa acessar os dados da organização desejados.

## Conectar sua instância do Dynamics via OAuth {#connecting-your-dynamics-instance-via-oAuth}

1. Ao configurar sua conexão com o Dynamics pela primeira vez, siga as etapas 1 a 5 da seção &quot;CRM como Provedor de Dados&quot; no [este artigo](/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/microsoft-dynamics-crm-installation-guide.md).

1. Quando solicitado a fornecer credenciais do OAuth, preencha a ID do cliente, o Segredo do cliente e o URI da ID do aplicativo que foram configurados na seção acima.

a. A ID do cliente é a ID da Etapa #7 na seção acima. Se você não anotou, a ID do aplicativo é exibida nas Configurações do registro do aplicativo.

b. Segredo do cliente é o segredo do aplicativo criado no Portal do Azure para seu aplicativo em Certificados e segredos.

![](assets/creating-2e.png)

c. O URI da ID do aplicativo é o URL da API da Web de destino (recurso seguro). Para localizar a URL da ID do aplicativo, no Portal do Azure, clique em [!DNL Azure Active Directory], clique em Registros do aplicativo, abra a página Configurações do aplicativo e clique em Propriedades. Ele também pode ser um recurso externo, como `https://graph.microsoft.com`. Normalmente, essa é a URL da instância do Dynamics.

1. Depois de clicar em **[!UICONTROL Enviar]**, você será solicitado a entrar com [!DNL Azure Active Directory]. Quando a autenticação é bem-sucedida, sua conta do Dynamics é conectada como provedor de dados no [!DNL Marketo Measure].

## Reautenticar sua conta do Dynamics {#re-authenticating-your-dynamics-account}

1. Quando você estiver no aplicativo [!DNL Marketo Measure], vá para **[!UICONTROL Minhas Configurações]** > **[!UICONTROL Configurações]** > **[!UICONTROL Conexões]**.

1. Clique no ícone de chave na seção CRM ao lado da conexão do Dynamics.

1. Quando a tecla for clicada, uma janela pop-up será exibida e você será solicitado a inserir a ID do cliente, o segredo do cliente e o URI da ID do aplicativo, semelhantes ao fluxo de inscrição.

   ![](assets/re-authenticating-3.png)

1. Depois de clicar em **[!UICONTROL Enviar]**, você será solicitado a entrar com [!DNL Azure Active Directory]. Quando a autenticação for bem-sucedida, sua conta do Dynamics será reautorizada dentro de [!DNL Marketo Measure].
