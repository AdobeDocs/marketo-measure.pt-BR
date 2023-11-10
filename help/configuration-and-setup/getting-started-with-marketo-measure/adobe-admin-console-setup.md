---
description: Configuração do Adobe Admin Console - Marketo Measure - Documentação do produto
title: Configuração do Adobe Admin Console
feature: Installation
source-git-commit: 68eb5bf83d589c9161490b1772551ed46a9ce444
workflow-type: ht
source-wordcount: '405'
ht-degree: 100%

---

# Configuração do Adobe Admin Console {#adobe-admin-console-setup}

A primeira etapa para usar o [!DNL Marketo Measure] é criar e fazer logon no seu Adobe Admin Console provisionado. Se você ainda não recebeu o email com instruções de logon, entre em contato com o Representante da conta do [!DNL Marketo Measure].

## Configuração do Adobe Admin Console e o provedor de identidade {#set-up-your-adobe-admin-console-and-identity-provider}

Como um produto no Adobe Suite, o [!DNL Marketo Measure] aproveita a funcionalidade completa do Adobe Admin Console para o Identity Management. Mais recursos podem ser [encontrados aqui](https://helpx.adobe.com/br/enterprise/using/admin-console.html).

Recomendamos analisar todos os recursos, práticas recomendadas e opções disponíveis para o [Identity Management](https://helpx.adobe.com/br/enterprise/using/set-up-identity.html).

Para obter orientação e revisar a configuração do Identity Management no Adobe Admin Console, entre em contato com o Representante da conta do [!DNL Marketo Measure].

Para facilitar a autenticação e autorização de usuários com suas instâncias do [!DNL Marketo Measure], as seguintes etapas são necessárias no Adobe Admin Console:

**Configuração do Cartão do produto do [!DNL Marketo Measure]**

Ao acessar o Adobe Admin Console, você verá suas instâncias de produto do [!DNL Marketo Measure] presentes na seção Visão geral.

![](assets/adobe-admin-console-setup-1.png)

Clicar no Cartão do produto do [!DNL Marketo Measure] mostrará todas as instâncias do [!DNL Marketo Measure]. Por padrão, cada instância do [!DNL Marketo Measure] tem seu próprio perfil com o prefixo “[!DNL Marketo Measure]”. Todos os administradores ou usuários adicionados a este ou a qualquer outro perfil nesta instância poderão fazer logon no [!DNL Marketo Measure].

![](assets/adobe-admin-console-setup-2.png)

Nenhuma ação é necessária para criar um novo perfil nas instâncias do produto do [!DNL Marketo Measure].

Para começar a adicionar usuários que podem acessar o [!DNL Marketo Measure], consulte a seção [Adição de administradores do  [!DNL Marketo Measure]  e usuários do  [!DNL Marketo Measure] ](#adding-marketo-measure-admins-and-marketo-measure-users) abaixo.

## Adição de administradores do [!DNL Marketo Measure] e usuários do [!DNL Marketo Measure] {#adding-marketo-measure-admins-and-marketo-measure-users}

A próxima etapa é conceder acesso ao aplicativo do [!DNL Marketo Measure] adicionando usuários. Isso pode ser feito no diretório de administradores e usuários do cartão de produto do [!DNL Marketo Measure].

| Tipo de usuário | Descrição |
|---|---|
| Administradores | são administradores(as) e usuários(as) avançados(as) do aplicativo do [!DNL Marketo Measure] com capacidade total de atualização e gerenciamento de opções de configuração específicas do [!DNL Marketo Measure] |
| Usuários | são usuários(as) padrão do aplicativo do [!DNL Marketo Measure] com permissões de somente leitura no aplicativo do [!DNL Marketo Measure] |

Ao adicionar um(a) usuário(a) ao seu respectivo grupo, você verá seu [Tipo de identidade listado](https://helpx.adobe.com/br/enterprise/admin-guide.html/enterprise/using/set-up-identity.ug.html).

>[!NOTE]
>
>Para ser um administrador do [!DNL Marketo Measure] (em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}), a pessoa deve ser adicionada como usuário _e_ como administrador a qualquer perfil de produto do [!DNL Marketo Measure] no cartão de produto do [!DNL Marketo Measure].

**Fazendo logon no[!DNL Marketo Measure]**

Depois que um usuário é adicionado a um perfil de produto, ele pode acessar suas instâncias do [!DNL Marketo Measure] escolhendo a opção **Fazer logon com a Adobe ID** em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}.

![](assets/adobe-admin-console-setup-3.png)

