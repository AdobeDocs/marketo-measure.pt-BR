---
description: "[!DNL Marketo Measure] Instalação e configuração do pacote Salesforce - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] [!DNL Salesforce] Instalação e configuração do pacote"
exl-id: ed58bc1e-cfb0-48db-aa53-96204e12de2e
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '543'
ht-degree: 0%

---

# [!DNL Marketo Measure] Instalação e configuração do pacote Salesforce {#marketo-measure-salesforce-package-installation-and-set-up}

Antes de instalar o [!DNL Marketo Measure] [!DNL Salesforce] pacote básico, você precisa determinar se será instalado primeiro em um [!DNL Salesforce] sandbox antes de migrar para a instância de produção do Salesforce.

>[!NOTE]
>
>Uma vez que o [!DNL Marketo Measure] está conectada a uma [!DNL Salesforce] instância de produção, não é possível mover-se para trás e se conectar a uma sandbox. Além disso, uma [!DNL Marketo Measure] só pode ser ligada a uma [!DNL Salesforce] instância de produção.

O [!DNL Marketo Measure] O pacote básico contém:

* 7 Personalizado [!DNL Marketo Measure] Objetos
* Personalizado [!DNL Marketo Measure] Campos
* 25. [!DNL Stock] Relatórios

[!DNL Marketo Measure] é capaz de ler como padrão [!DNL Salesforce] Objetos, campos e registros, no entanto, [!DNL Marketo Measure] O nunca atualizará ou enviará dados para eles. Todos os dados coletados pela [!DNL Marketo Measure] O JavaScript será exibido na variável [!DNL Marketo Measure] Objetos e campos personalizados.

Siga as etapas abaixo para instalar o [!DNL Marketo Measure Salesforce] pacote base.

1. Usando um navegador incógnito, acesse [Salesforce Appexchange](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B3KLuEAN){target="_blank"} e faça logon.

1. Instalar no [!DNL Marketo Measure] pacote em sandbox ou produção.

1. Faça logon em [!DNL Salesforce] como Administrador.

1. Selecionar **[!UICONTROL Instalar] para todos os usuários**.

   ![](assets/marketo-measure-salesforce-package-installation-and-set-up-1.png)

1. Quando a instalação estiver concluída, você poderá visualizá-la.

   ![](assets/marketo-measure-salesforce-package-installation-and-set-up-2.png)

Após concluir a instalação, você pode atualizar seu [[!DNL Salesforce] layouts de página](/help/configuration-and-setup/marketo-measure-and-salesforce/page-layout-instructions.md){target="_blank"} com o [!DNL Marketo Measure] , se desejar.

>[!NOTE]
>
>Leia sobre o [!DNL Marketo Measure] Conjuntos de permissões criados e [como eles serão usados](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md){target="_blank"}.

## Instalar [!DNL Marketo Measure] Pacote do painel {#install-marketo-measure-dashboard-package}

O [!UICONTROL Painel] O Pacote de extensão contém três painéis pré-criados. Recomendamos instalar [!UICONTROL within] Produção para todos os usuários.

1. Instale o pacote do [[!DNL Salesforce] Appexchange](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t610000001jI6){target="_blank"}.

1. Selecionar **[!UICONTROL Instalar para todos os usuários]**.

   ![](assets/marketo-measure-salesforce-package-installation-and-set-up-3.png)

## Criação de um [!DNL Marketo Measure] Perfil e usuário {#creating-a-marketo-measure-profile-and-user}

[!DNL Marketo Measure] envia e recebe dados por meio de um [!DNL Salesforce] usuário na [!DNL Marketo Measure] aplicativo.

Para enviar dados do ponto de contato para a [!DNL Salesforce] , o usuário conectado deve ter acesso ao [!DNL Marketo Measure] objetos personalizados (por exemplo, Ponto de contato do comprador e Ponto de contato da atribuição do comprador) e padrão [!DNL Salesforce] objetos como Clientes potenciais e Contatos.

Crie um [!DNL Marketo Measure] para garantir que você não tenha erros de validação ao enviar dados para o Salesforce.

Etapa 1: Crie um [!DNL Marketo Measure] perfil

1. Atribua as seguintes permissões:

* &quot;[!DNL Marketo Measure] Conjunto de permissões do administrador&quot;
   * O conjunto de permissões gerenciadas oferece a um administrador do SFDC a capacidade de criar, ler, gravar, excluir registros de [!DNL Marketo Measure] objetos.
* &quot;Exibir e editar conjunto de permissões de clientes potenciais convertidos&quot;
   * Isso permite [!DNL Marketo Measure] para decorar leads depois de serem convertidos em contatos. Se esse conjunto de permissões não estiver ativado, pode haver lacunas significativas no rastreamento de dados.

>[!NOTE]
>
>Este perfil pode ser um clone de um perfil de Administrador do sistema.

Etapa 2: Crie um [!DNL Marketo Measure] para que você possa acompanhar o impacto da [!DNL Marketo Measure] em seu [!DNL Salesforce] instância

1. Atribua o novo [!DNL Marketo Measure] Perfil para esse usuário.

1. Habilite &quot;Usuário de marketing&quot; como uma permissão de nível de usuário.

* O [!UICONTROL Usuário de marketing] caixa de seleção permite que o usuário crie campanhas e use os Assistentes de importação de campanha. Se esta opção não estiver selecionada, o usuário só poderá visualizar campanhas e configuração avançada de campanha, editar o Histórico de campanha de um único cliente potencial ou contato e executar relatórios de campanha. [!DNL Marketo Measure] precisa poder ler e gravar no objeto de campanha.

Etapa 3: Excluir este perfil de todos os acionadores, fluxos de trabalho e processos

Etapa 4: Faça logon no [!DNL Marketo Measure] Conta e reautorize a [!DNL Salesforce] conexão com o novo usuário

1. Vá para apps.bizible.com e faça logon com a nova produção de usuário [!DNL Salesforce] credenciais.

1. Selecionar **[!UICONTROL Configurações]** no **[!UICONTROL Minha conta]** lista suspensa.

1. Selecionar **[!UICONTROL Conexões]** no **[!UICONTROL Integrações]** agrupamento.

1. Clique no ícone Chave à direita da conexão atual [!DNL Salesforce] e selecione **Autorizar novamente com produção**. Faça logon com as novas credenciais do usuário novamente (se solicitado).
