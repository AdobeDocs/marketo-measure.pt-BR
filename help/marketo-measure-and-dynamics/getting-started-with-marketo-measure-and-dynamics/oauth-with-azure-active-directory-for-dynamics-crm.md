---
unique-page-id: 37357059
description: OAuth com [!DNL Azure Active Directory] para Dynamics CRM - [!DNL Marketo Measure] - Documentação do produto
title: OAuth com [!DNL Azure Active Directory] para Dynamics CRM
exl-id: 0a2f6b29-541d-4965-a460-e6f19b934edb
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '816'
ht-degree: 1%

---

# OAuth com [!DNL Azure Active Directory] para Dynamics CRM {#oauth-with-azure-active-directory-for-dynamics-crm}

## Quem é afetado {#who-s-affected}

Essa configuração é para novos [!DNL Marketo Measure] clientes que usam o Dynamics CRM com um [!DNL Azure Active Directory] (AAD) ou para clientes que desejam migrar do nome de usuário e senha herdados para [!DNL Azure Active Directory] com OAuth.

>[!NOTE]
>
>Para ambos os cenários, o AAD é configurado aqui para facilitar a conexão da instância do Dynamics em [!DNL Marketo Measure] como Provedor de dados.

## Configurar novo aplicativo {#set-up-new-application}

1. Faça logon em seu [Portal do Azure](https://portal.azure.com/#home).

1. Escolha seu locatário do Azure AD clicando em sua conta no canto superior direito da página, seguido de clicar na navegação do Diretório do Switch e selecionar o locatário apropriado (pule esta etapa se você tiver apenas um locatário do Azure AD em sua conta ou se já tiver selecionado o locatário apropriado do Azure AD).

   ![](assets/setup-2.png)

1. Pesquisar por &quot;[!DNL Azure Active Directory]&quot; na barra de pesquisa e clique no nome para abrir.

   ![](assets/setup-3.png)

1. Clique em **[!UICONTROL Registros do aplicativo]** no menu à esquerda.

   ![](assets/setup-4.png)

1. Clique em **[!UICONTROL Novo registro]** no topo.

   ![](assets/setup-5.png)

1. Siga os prompts e crie um novo aplicativo. Não importa se é uma aplicação web ou um aplicativo cliente público (móvel e desktop), mas se você deseja exemplos específicos de aplicações web ou aplicativos cliente públicos, confira nossa [início rápido](https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-overview).\
   a. Nome é o nome do aplicativo e descreve seu aplicativo para os usuários finais.\
   b. Em Tipos de conta compatíveis, selecione Contas em qualquer diretório organizacional e contas pessoais do Microsoft.\
   c. Forneça o URI de redirecionamento. Para Aplicativos da Web, esse é o URL básico do seu aplicativo, onde os usuários podem fazer logon. Por exemplo, `http://localhost:12345`. Para cliente público (dispositivos móveis e desktop), o Azure AD o usa para retornar respostas de token. Insira um valor específico para o aplicativo. Por exemplo, `http://MyFirstAADApp`.

1. Após concluir o registro, o Azure AD atribuirá ao seu aplicativo um identificador de cliente exclusivo (a ID do aplicativo). Você precisa desse valor na próxima seção, portanto, copie-o da página do aplicativo.

1. Para localizar seu aplicativo no portal do Azure, clique em **[!UICONTROL Registros do aplicativo]**, depois clique em **[!UICONTROL Todos os Aplicativos]**. Abra seu aplicativo recém-criado

1. Clique em **[!UICONTROL Autenticação]** no menu à esquerda.

   ![](assets/setup-9.png)

1. Adicione o [!DNL Marketo Measure] URLs de redirecionamento: `https://apps.bizible.com/OAuth2` e `https://apps.bizible.com/OAuth2?identityOnly=true` para a lista de URLs de redirecionamento.

   ![](assets/setup-10.png)

1. Navegue até a guia Permissões da API e verifique se as permissões corretas estão atribuídas ao aplicativo.

   ![](assets/setup-10a.png)

1. Aqui, digite &quot;[!UICONTROL empresa]&quot; na caixa de pesquisa e clique em **[!UICONTROL Aplicativos empresariais]**.

   ![](assets/setup-11.png)

1. Novamente, encontre e abra seu novo aplicativo na lista de aplicativos.

1. Na guia Permissões , clique em **[!UICONTROL Conceder consentimento do administrador para (nome da instância)]**.

   ![](assets/setup-13a.png)

1. Clique em **[!UICONTROL Aceitar]**.

   ![](assets/setup-13b.png)

1. No &quot;[!UICONTROL Usuários e grupos]&quot;, certifique-se de que os &quot;Usuários e Grupos&quot; válidos estejam atribuídos ao Aplicativo.

   ![](assets/setup-14.png)

## Criando um Usuário de Aplicativo {#creating-an-application-user}

Depois que o registro do aplicativo é feito, um usuário do aplicativo pode ser criado.

1. Navegue até o ambiente do Serviço de dados comum (`https://[org].crm.dynamics.com`).

1. Navegar para **[!UICONTROL Configurações]** > **[!UICONTROL Segurança]** > **[!UICONTROL Usuários]**.

1. Choose **[!UICONTROL Usuários do aplicativo]** no filtro de visualização.

1. Selecionar **[!UICONTROL + Novo]**.

1. No formulário Usuário do aplicativo, insira as informações necessárias.

   >[!NOTE]
   >
   >* As informações do nome de usuário não devem corresponder a um usuário que existe no [!DNL Azure Active Directory].
   >
   >* No campo ID do aplicativo , insira a ID do aplicativo do aplicativo que você registrou anteriormente no Azure AD.


1. Se a configuração estiver correta, depois de selecionar **[!UICONTROL Salvar]**, o **[!UICONTROL URI da ID do aplicativo]** e **[!UICONTROL ID de Objeto do Azure AD]** os campos serão preenchidos automaticamente com valores corretos.

1. Antes de sair do formulário do usuário, escolha **[!UICONTROL Gerenciar funções]** e atribua uma função de segurança a esse usuário do aplicativo para que ele possa acessar os dados desejados da organização.

## Conexão da instância do Dynamics via OAuth {#connecting-your-dynamics-instance-via-oAuth}

1. Ao configurar a conexão do Dynamics pela primeira vez, siga as etapas 1 a 5 da seção &quot;CRM as a Data Provider&quot; em [este artigo](/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/microsoft-dynamics-crm-installation-guide.md).

1. Quando solicitado para credenciais do OAuth, preencha a ID do cliente, o Segredo do cliente e o URI da ID do aplicativo que foram configurados na seção acima.

a. A ID do cliente é a ID da etapa 7 na seção acima. Se você não gravou, o ID do aplicativo é exibido nas Configurações do registro do aplicativo.

b. O Segredo do Cliente é o segredo do aplicativo criado no Portal do Azure para seu aplicativo em Certificados e Segredos.

![](assets/creating-2e.png)

c. URI da ID do aplicativo é o URL da API da Web de destino (recurso seguro). Para localizar o URL da ID do aplicativo, no Portal do Azure, clique em [!DNL Azure Active Directory], clique em Registros do aplicativo, abra a página Configurações do aplicativo e clique em Propriedades. Também pode ser um recurso externo como `https://graph.microsoft.com`. Normalmente, é o URL da instância do Dynamics.

1. Depois de clicar em **[!UICONTROL Enviar]**, você será solicitado a fazer logon com [!DNL Azure Active Directory]. Quando a autenticação for bem-sucedida, sua conta do Dynamics será conectada como um provedor de dados no [!DNL Marketo Measure].

## Reautenticação da conta do Dynamics {#re-authenticating-your-dynamics-account}

1. Quando você estiver no [!DNL Marketo Measure] aplicativo, vá para **[!UICONTROL Minhas configurações]** > **[!UICONTROL Configurações]** > **[!UICONTROL Conexões]**.

1. Clique no ícone de chave na seção CRM ao lado da conexão do Dynamics.

1. Quando a tecla for clicada, uma pop-up será exibida e você será solicitado a inserir a ID do cliente, o Segredo do cliente e o URI da ID do aplicativo, de modo semelhante ao fluxo de assinatura.

   ![](assets/re-authenticating-3.png)

1. Depois de clicar em **[!UICONTROL Enviar]**, você será solicitado a fazer logon com [!DNL Azure Active Directory]. Quando a autenticação for bem-sucedida, sua conta do Dynamics será autorizada novamente dentro de [!DNL Marketo Measure].
