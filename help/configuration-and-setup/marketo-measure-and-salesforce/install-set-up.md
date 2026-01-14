---
description: Instalação e Configuração do Pacote Salesforce - [!DNL Marketo Measure]
title: Instalação e Configuração do Pacote [!DNL Salesforce]
exl-id: ed58bc1e-cfb0-48db-aa53-96204e12de2e
feature: Installation, Salesforce
hidefromtoc: true
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '504'
ht-degree: 94%

---

# Instalação do pacote Salesforce{#marketo-measure-salesforce-package-installation}

Antes de instalar o pacote básico do [!DNL Salesforce] [!DNL Marketo Measure], você precisa determinar se o instalará em uma sandbox do [!DNL Salesforce] antes de migrar para a instância de produção do Salesforce.

>[!NOTE]
>
>Uma vez que a conta do [!DNL Marketo Measure] está conectada a uma instância de produção do [!DNL Salesforce], não é possível mover-se para trás e se conectar a uma sandbox. Além disso, uma conta do [!DNL Marketo Measure] só pode ser conectada a uma instância de produção do [!DNL Salesforce].

O pacote básico do [!DNL Marketo Measure] contém:

* 7 objetos [!DNL Marketo Measure] personalizados
* Campos [!DNL Marketo Measure] personalizados
* 25 relatórios do [!DNL Stock]

O [!DNL Marketo Measure] é capaz de ler como padrão objetos, campos e registros do [!DNL Salesforce], no entanto, o [!DNL Marketo Measure] nunca atualizará ou enviará dados para eles. Todos os dados coletados pelo JavaScript do [!DNL Marketo Measure] serão exibidos nos objetos e campos personalizados do [!DNL Marketo Measure].

Siga as etapas abaixo para instalar o pacote básico do [!DNL Marketo Measure Salesforce].

1. Usando um navegador incógnito, vá para a [Salesforce AppExchange](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B3KLuEAN){target="_blank"} e faça logon.

1. Instalar o pacote do [!DNL Marketo Measure] na sandbox ou na produção.

1. Faça logon no [!DNL Salesforce] como Administrador.

1. Selecione **[!UICONTROL Instalar] para Todos os usuários**.

   ![](assets/bizible-full-1.png)

1. Quando a instalação estiver concluída, você poderá visualizá-la.

   ![](assets/bizible-taxonomy-1.png)

Após concluir a instalação, você pode atualizar os [[!DNL Salesforce] layouts de página](/help/configuration-and-setup/marketo-measure-and-salesforce/page-layout-instructions.md){target="_blank"} com os campos [!DNL Marketo Measure], se desejar.

>[!NOTE]
>
>Leia sobre a criação de conjuntos de permissões do [!DNL Marketo Measure] e [como eles são usados](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md){target="_blank"}.

## Criação de um Perfil e usuário do [!DNL Marketo Measure] {#creating-a-marketo-measure-profile-and-user}

O [!DNL Marketo Measure] envia e recebe dados por meio de um usuário conectado do [!DNL Salesforce] no aplicativo [!DNL Marketo Measure].

Para enviar dados do ponto de contato para sua instância do [!DNL Salesforce], o usuário conectado deve ter acesso aos objetos personalizados do [!DNL Marketo Measure] (por exemplo, Buyer Touchpoint e Buyer Attribution Touchpoint), assim como aos objetos padrão do [!DNL Salesforce], como leads e contatos.

Crie um perfil do [!DNL Marketo Measure] para garantir que você não tenha erros de validação ao enviar dados para o Salesforce.

Etapa 1: Criar um perfil específico do [!DNL Marketo Measure]

1. Atribua as seguintes permissões:

* “[!DNL Marketo Measure] Conjunto de permissões do administrador”
   * O conjunto de permissões gerenciadas oferece a um administrador do SFDC a capacidade de criar, ler, gravar, excluir registros de objetos do [!DNL Marketo Measure].
* “Exibir e editar conjunto de permissões de leads convertidos”
   * Isso permite que o [!DNL Marketo Measure] decore leads depois de serem convertidos em contatos. Se esse conjunto de permissões não estiver habilitado, poderá haver grandes lacunas no rastreamento de dados.

>[!NOTE]
>
>Este perfil pode ser um clone de um perfil de Administrador do sistema.

Etapa 2: Criar um usuário dedicado do [!DNL Marketo Measure] para que você possa acompanhar o impacto do [!DNL Marketo Measure] em sua instância do [!DNL Salesforce]

1. Atribua o novo perfil do [!DNL Marketo Measure] a esse usuário.

1. Habilite “Usuário de marketing” como uma permissão de nível de usuário.

* A caixa de seleção [!UICONTROL Usuário de marketing] permite que o usuário crie campanhas e use os Assistentes de importação de campanha. Se você não selecionar esta opção, o usuário só poderá visualizar campanhas e a configuração avançada de campanhas, editar o histórico de campanha de um único lead ou contato e executar relatórios de campanha. O [!DNL Marketo Measure] precisa da permissão para ler e gravar no objeto de campanha.

Etapa 3: excluir este perfil de todos os acionadores, fluxos de trabalho e processos

Etapa 4: fazer logon na conta do [!DNL Marketo Measure] e reautorizar a conexão do [!DNL Salesforce] com o novo usuário

1. Acesse apps.bizible.com e faça logon com a nova produção de usuário [!DNL Salesforce] credenciais.

1. Selecione **[!UICONTROL Configurações]** no menu suspenso **[!UICONTROL Minha conta]**.

1. Selecione **[!UICONTROL Conexões]** no agrupamento **[!UICONTROL Integrações]**.

1. Clique no ícone de Chave à direita da conexão do [!DNL Salesforce] atual e selecione **Reautorizar com a produção**. Faça novamente o logon com as novas credenciais de usuário (se solicitado).

>[!MORELIKETHIS]
>
>* [Visão geral das permissões de integração](/help/api-connections/integration-permissions-overview.md){target="_blank"}
>
>* [Configuração do Adobe Admin Console](/help/configuration-and-setup/getting-started-with-marketo-measure/adobe-admin-console-setup.md){target="_blank"}
