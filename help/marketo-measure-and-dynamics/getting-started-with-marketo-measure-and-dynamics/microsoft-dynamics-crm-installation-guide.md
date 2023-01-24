---
unique-page-id: 18874763
description: "[!DNL Microsoft Dynamics] Guia de instalação do CRM - Medida do Marketo - Documentação do produto"
title: "[!DNL Microsoft Dynamics] Guia de instalação do CRM"
exl-id: bc422c98-60bb-49ea-9bd1-c4149ae628b1
source-git-commit: 9de82556ca543aa8e6c53242eacae5c87019886c
workflow-type: tm+mt
source-wordcount: '1353'
ht-degree: 0%

---

# [!DNL Microsoft Dynamics] Guia de instalação do CRM {#microsoft-dynamics-crm-installation-guide}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

## Versões suportadas {#supported-versions}

[!DNL Marketo Measure] suporta o seguinte [!DNL Microsoft Dynamics CRM] versões:

* [!DNL Microsoft Dynamics 2016] (Online e no local)
* [!DNL Microsoft Dynamics 365] (Online e no local)

Para conexão e autenticação, [!DNL Marketo Measure] suporta as seguintes versões do Ative Diretory Federated Services (ADFS):

* ADFS 4.0 - [!DNL Windows Server 2016]
* ADFS 5.0 - [!DNL Windows Server 2019]

## Instalar a solução gerenciada {#install-the-managed-solution}

[Baixe e instale](assets/marketo-measure-dynamics-extension.zip) o arquivo zip no Dynamics CRM.

**[!UICONTROL Configurações]** > **[!UICONTROL Personalizações]** > **[!UICONTROL Soluções]** > **[!UICONTROL Importar]** (botão ) > **[!UICONTROL Escolher arquivo]**.

![](assets/1.png)

>[!NOTE]
>
>As duas capturas de tela a seguir podem variar um pouco da sua, pois foram tiradas durante uma atualização da solução.

![](assets/2.png)

![](assets/3.png)

## [!DNL Marketo Measure] Permissões do usuário {#marketo-measure-user-permissions}

Recomendamos criar um [!DNL Marketo Measure] Use o Dynamics para exportar e importar dados para o para evitar problemas com outros usuários no seu CRM. Anote o nome de usuário e a senha, bem como o URL do ponto de extremidade, pois ele será usado ao criar o [!DNL Marketo Measure] conta.

## Funções de segurança {#security-roles}

Se sua organização usa Funções de segurança dinâmicas, verifique se o usuário conectado ou a [!DNL Marketo Measure] O usuário tem permissões suficientes de leitura/gravação para as entidades necessárias.

As Funções de Segurança estão localizadas aqui: **[!UICONTROL Configurações]** > **[!UICONTROL Segurança]** > **[!UICONTROL Funções de segurança]**.

Para [!DNL Marketo Measure] entidades personalizadas, precisaremos de permissões completas em todas as entidades.

>[!NOTE]
>
>Os usuários que fecharão oportunidades também precisarão de permissões completas.

![](assets/4.png)

Para entidades padrão do Dynamics, consulte [!DNL Marketo Measure] Documento de esquema dinâmico. Em um alto nível, [!DNL Marketo Measure] basta ler em determinadas entidades para coletar os dados apropriados e gravar em campos personalizados que serão instalados com a solução gerenciada. Não criaremos novos registros padrão, nem atualizaremos quaisquer campos padrão.

## Incluir pontos de contato em layouts de página: {#include-touchpoints-on-page-layouts}

1. Para cada entidade, navegue até o Editor de formulários. Você pode encontrar isso em **[!UICONTROL Configurações]** > **[!UICONTROL Personalizações]** > **[!UICONTROL Personalizar o sistema]** > `[Entity]` > **[!UICONTROL Forms]**. Ou você pode encontrá-lo nas configurações enquanto está visualizando um registro.

   * As entidades a configurar: Conta, Oportunidade, Contato, Lead e Campanha.

   * Para configurar Campanhas, você precisa ativar a opção &quot;Sincronização de Campanha&quot; em **[!UICONTROL CRM]** > **[!UICONTROL Campanhas]**.

   ![](assets/5.png)

1. Layouts de página: primeiro adicione um &quot;[!UICONTROL Uma Coluna]&quot; mosaico na seção em que você deseja que os pontos de contato entrem ao vivo. Nessa nova coluna, precisaremos de uma subgrade adicionada a cada formulário em suas entidades Conta, Oportunidade, Contato e Lead.

   ![](assets/6.png)

   ![](assets/7.png)

1. Selecione o objeto (Pontos de contato da atribuição do comprador ou Pontos de contato do comprador) que deve ser renderizado na subgrade, o que depende do relacionamento do objeto. Como opção, altere as colunas que serão exibidas clicando no botão Editar . Um layout padrão foi definido pela solução gerenciada.

   Subgrade do Ponto de Contato da Atribuição de Comprador - Contas, Oportunidades e Contato\
   Sub-grade de Ponto de Contato do Comprador - Clientes Potenciais e Contatos

   ![](assets/8.png)

1. Quando terminar de atualizar o formulário, publique e salve as alterações.

## Considerações relacionadas ao esquema {#schema-related-considerations}

**Receita**

[!DNL Marketo Measure] aponta para o campo Receita real padrão por padrão. Se você não estiver usando isso, explique como será necessário relatar a receita para seu Engenheiro de soluções ou Gerente de sucesso como um fluxo de trabalho personalizado.

**Data de fechamento**

[!DNL Marketo Measure] aponta para o campo Data de fechamento real pronto para uso. Se você não estiver usando ou também usar o campo Data estimada de fechamento , explique o processo ao engenheiro de soluções ou gerente de sucesso. Um fluxo de trabalho personalizado pode ser necessário para cuidar de ambos os campos.

## Configurar sua Adobe Admin Console e provedor de identidade {#set-up-your-adobe-admin-console-and-identity-provider}

A primeira etapa para usar [!DNL Marketo Measure] O é criar e fazer logon na Adobe Admin Console provisionada. Se você ainda não recebeu o email com instruções de logon, entre em contato com seu [!DNL Marketo Measure] Representante de conta.

Como um produto dentro do Adobe Suite, [!DNL Marketo Measure] usam a funcionalidade completa do Adobe Admin Console para Identity Management. Mais recursos podem ser [encontrado aqui](https://helpx.adobe.com/br/enterprise/using/admin-console.html).

Recomendamos revisar todos os recursos, práticas recomendadas e opções disponíveis para você para [Identity Management](https://helpx.adobe.com/enterprise/using/set-up-identity.html).

Para obter orientação e revisão sobre como configurar sua Identity Management na Adobe Admin Console, entre em contato com seu [!DNL Marketo Measure] Representante de conta.

Para facilitar a autenticação e a autorização do usuário com seu [!DNL Marketo Measure] instâncias, as seguintes etapas são necessárias no Adobe Admin Console:

**Configuração do [!DNL Marketo Measure] Cartão do produto**

Ao acessar a Adobe Admin Console, você verá seu [!DNL Marketo Measure] Instância(s) de produto presente(s) na seção Visão geral .

![](assets/microsoft-dynamics-crm-installation-guide-8a.png)

Clicar no [!DNL Marketo Measure] O cartão do produto mostrará todos os [!DNL Marketo Measure] instância(s). Por padrão, cada [!DNL Marketo Measure] A instância tem seu próprio perfil com o prefixo &#39;[!DNL Marketo Measure]&quot;. Qualquer administrador ou usuário adicionado a este ou a qualquer outro perfil nesta instância poderá fazer logon no [!DNL Marketo Measure].

![](assets/microsoft-dynamics-crm-installation-guide-8b.png)

Nenhuma ação é necessária para criar um novo perfil no [!DNL Marketo Measure] Instância(s) do produto.

Para começar a adicionar usuários que podem acessar [!DNL Marketo Measure]consulte o [Adição de [!DNL Marketo Measure] Administradores e [!DNL Marketo Measure] Usuários](#adding-marketo-measure-admins-and-marketo-measure-users) abaixo.

## Adição de [!DNL Marketo Measure] Administradores e [!DNL Marketo Measure] Usuários {#adding-marketo-measure-admins-and-marketo-measure-users}

O próximo passo é conceder acesso ao [!DNL Marketo Measure] ao adicionar usuários. Isso pode ser feito no diretório admins e users do [!DNL Marketo Measure] cartão do produto.

| Tipo de usuário | Descrição |
|---|---|
| Administradores | são administradores e usuários avançados do [!DNL Marketo Measure] Aplicativo com capacidade total de atualizar e gerenciar [!DNL Marketo Measure]-opções de configuração específicas |
| Usuários | esses são usuários padrão do [!DNL Marketo Measure] Aplicativo com permissões somente leitura dentro do [!DNL Marketo Measure] aplicativo |

Ao adicionar um usuário ao respectivo grupo, você verá seus [Tipo de identidade listado](https://helpx.adobe.com/enterprise/admin-guide.html/enterprise/using/set-up-identity.ug.html).

>[!NOTE]
>
>Para ser um [!DNL Marketo Measure] administrador (em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}), um usuário deve ser adicionado como um Usuário _e_ um administrador para qualquer [!DNL Marketo Measure] perfil de produto no [!DNL Marketo Measure] cartão do produto.

**Fazer logon em[!DNL Marketo Measure]**

Depois que um usuário é adicionado a um Perfil de produto, ele pode acessar seus [!DNL Marketo Measure] instância(s) escolhendo a **Fazer logon com o Adobe ID** opção em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}.

![](assets/microsoft-dynamics-crm-installation-guide-15.png)

## Configuração das conexões e provedores de dados {#configuring-your-connections-and-data-providers}

Depois de fazer logon no [!DNL Marketo Measure] e tiverem sido configurados como usuário no Adobe Admin Console, a próxima etapa é configurar suas várias conexões de dados.

**CRM como provedor de dados**

1. Em seu [!DNL Marketo Measure] clique no botão **[!UICONTROL Minha conta]** e selecione **[!UICONTROL Configurações]**.

   ![](assets/microsoft-dynamics-crm-installation-guide-16.png)

1. Em [!UICONTROL Integrações] na navegação à esquerda, clique em **[!UICONTROL Conexões]**.

   ![](assets/microsoft-dynamics-crm-installation-guide-17.png)

1. Clique no botão **[!UICONTROL Configurar nova conexão do CRM]** botão.

   ![](assets/microsoft-dynamics-crm-installation-guide-18.png)

1. Próximo a [!UICONTROL Microsoft Dynamics CRM], clique no botão **[!UICONTROL Connect]** botão.

   ![](assets/microsoft-dynamics-crm-installation-guide-19.png)

1. Selecionar [!UICONTROL Credenciais] ou [!UICONTROL OAuth].

   ![](assets/microsoft-dynamics-crm-installation-guide-20.png)

   >[!NOTE]
   >
   >Para obter mais informações sobre OAuth, visite [este artigo](/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/oauth-with-azure-active-directory-for-dynamics-crm.md). Em caso de dúvidas sobre o processo, entre em contato com seu [!DNL Marketo Measure] Representante de conta.

1. Neste exemplo, escolhemos Credenciais. Insira suas credenciais e clique em **[!UICONTROL Próximo]**.

Após a conexão, você verá os detalhes da conexão do Dynamics na lista CRM/MAP Connections.

**Conexões da conta do anúncio**

Para conectar suas contas publicitárias com o [!DNL Marketo Measure], comece acessando o [!UICONTROL Conexões] na guia [!DNL Marketo Measure] aplicativo.

1. Siga as Etapas 1 e 2 acima _CRM como provedor de dados_ seção.

1. Clique no botão **[!UICONTROL Configurar nova conexão do CRM]** botão.

   ![](assets/microsoft-dynamics-crm-installation-guide-21.png)

1. Selecione a plataforma desejada.

   ![](assets/microsoft-dynamics-crm-installation-guide-22.png)

**[!DNL Marketo Measure]Javascript**

Para [!DNL Marketo Measure] para rastrear suas atividades da Web, há várias etapas para configuração.

1. Clique no botão **[!UICONTROL Minha conta]** e selecione **[!UICONTROL Configuração da conta]**.

   ![](assets/microsoft-dynamics-crm-installation-guide-23.png)

1. Digite seu número de telefone. Para Site, insira o domínio raiz principal que será usado para [!DNL Marketo Measure] rastreamento no seu site. Clique em **[!UICONTROL Salvar]** quando concluído.

   ![](assets/microsoft-dynamics-crm-installation-guide-24.png)

   >[!NOTE]
   >
   >Para adicionar vários domínios raiz, entre em contato com seu [!DNL Marketo Measure] Representante de conta.

1. O [[!DNL Marketo Measure] JavaScript](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script.md) em seguida, precisa ser colocado em todo o site e landing pages. Recomendamos codificar o script no cabeçalho das páginas iniciais ou adicionar por meio de um sistema Tag Management, como [Gerenciador de tags da Google](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-via-google-tag-manager.md).

   >[!NOTE]
   >
   >Por padrão, [!DNL Marketo Measure] exporta 200 registros por crédito de API sempre que um trabalho envia dados para seu CRM. Para a maioria dos clientes, isso fornece o equilíbrio ideal entre os créditos de API consumidos por [!DNL Marketo Measure] e os requisitos de recursos da CPU no CRM. No entanto, para clientes com configurações complexas de CRM, como workflows e acionadores, um tamanho de lote menor pode ser útil para melhorar o desempenho do CRM. Para o efeito, [!DNL Marketo Measure] permite que os clientes configurem o tamanho do lote de exportação do CRM. Essa configuração está disponível na página Configurações > CRM > Geral na [!DNL Marketo Measure] os clientes da aplicação web e do podem escolher entre tamanhos de lote de 200 (padrão), 100, 50 ou 25.
   >
   >Ao modificar essa configuração, lembre-se de que tamanhos de lote menores consumirão mais créditos de API do seu CRM. É aconselhável reduzir o tamanho do lote somente se você estiver atingindo o tempo limite da CPU ou a alta carga da CPU em seu CRM.

   >[!NOTE]
   >
   >Quando você desativa a Medição de Marketo exportando dados para o Dynamics, ela não remove dados existentes. Para obter ajuda com a remoção de dados existentes, entre em contato com o Suporte do Dynamics.
