---
description: Configuração do Adobe Admin Console - Marketo Measure - Documentação do produto
title: Configuração do Adobe Admin Console
feature: Installation
source-git-commit: 68eb5bf83d589c9161490b1772551ed46a9ce444
workflow-type: tm+mt
source-wordcount: '405'
ht-degree: 1%

---

# Configuração do Adobe Admin Console {#adobe-admin-console-setup}

A primeira etapa para usar o [!DNL Marketo Measure] é criar e fazer logon na Adobe Admin Console provisionada. Se você ainda não recebeu o email com instruções de logon, entre em contato com [!DNL Marketo Measure] Representante da Conta.

## Configurar o Adobe Admin Console e o provedor de identidade {#set-up-your-adobe-admin-console-and-identity-provider}

Como um produto no Adobe Suite, [!DNL Marketo Measure] aproveita a funcionalidade completa do Adobe Admin Console para Identity Management. Mais recursos podem ser [encontrado aqui](https://helpx.adobe.com/br/enterprise/using/admin-console.html).

Recomendamos analisar todos os recursos, práticas recomendadas e opções disponíveis para você para [Identity Management](https://helpx.adobe.com/enterprise/using/set-up-identity.html).

Para orientação e revisão da configuração do Identity Management na Adobe Admin Console, entre em contato com o [!DNL Marketo Measure] Representante da Conta.

Para facilitar a autenticação e autorização do usuário com o seu [!DNL Marketo Measure] instância(s), as seguintes etapas são necessárias no Adobe Admin Console:

**Configuração da [!DNL Marketo Measure] Cartão do produto**

Ao acessar o Adobe Admin Console, você verá sua [!DNL Marketo Measure] Instâncias de produto presentes na seção Visão geral.

![](assets/adobe-admin-console-setup-1.png)

Clicar no [!DNL Marketo Measure] O Cartão do produto mostrará todos os [!DNL Marketo Measure] instância(s). Por padrão, cada [!DNL Marketo Measure] A instância tem seu próprio perfil com o prefixo &#39;[!DNL Marketo Measure]&#39;. Todos os administradores ou usuários adicionados a este ou a qualquer outro perfil nesta instância poderão fazer logon no [!DNL Marketo Measure].

![](assets/adobe-admin-console-setup-2.png)

Nenhuma ação é necessária para criar um novo perfil na [!DNL Marketo Measure] Instâncias do produto.

Para começar a adicionar usuários que podem acessar [!DNL Marketo Measure], consulte o [Adicionando [!DNL Marketo Measure] Administradores e [!DNL Marketo Measure] Usuários](#adding-marketo-measure-admins-and-marketo-measure-users) abaixo.

## Adicionando [!DNL Marketo Measure] Administradores e [!DNL Marketo Measure] Usuários {#adding-marketo-measure-admins-and-marketo-measure-users}

A próxima etapa é conceder acesso ao [!DNL Marketo Measure] aplicativo adicionando usuários. Isso pode ser feito no diretório de administradores e usuários do [!DNL Marketo Measure] cartão do produto.

| Tipo de usuário | Descrição |
|---|---|
| Administradores | são administradores e usuários avançados do [!DNL Marketo Measure] Aplicativo com capacidade total de atualização e gerenciamento [!DNL Marketo Measure]Opções de configuração específicas do |
| Usuários | esses são os usuários padrão do [!DNL Marketo Measure] Aplicativo com permissões somente leitura dentro do [!DNL Marketo Measure] aplicativo |

Ao adicionar um usuário ao seu respectivo grupo, você verá seus [Tipo de identidade listado](https://helpx.adobe.com/enterprise/admin-guide.html/enterprise/using/set-up-identity.ug.html).

>[!NOTE]
>
>Para ser um [!DNL Marketo Measure] administrador (em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}), um usuário deve ser adicionado como um Usuário _e_ um Administrador para qualquer [!DNL Marketo Measure] perfil do produto no [!DNL Marketo Measure] cartão do produto.

**Fazendo login no[!DNL Marketo Measure]**

Depois que um usuário é adicionado a um Perfil de produto, ele pode acessar seus [!DNL Marketo Measure] instância(s) escolhendo o **Fazer logon com a Adobe ID** opção em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}.

![](assets/adobe-admin-console-setup-3.png)

