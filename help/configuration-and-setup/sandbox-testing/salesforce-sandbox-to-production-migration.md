---
unique-page-id: 18874694
description: Migração da sandbox para produção do Salesforce - [!DNL Marketo Measure] - Documentação do produto
title: Sandbox do Salesforce para migração de produção
exl-id: b2b71c4a-f192-43ce-a27e-cbd0ec3cf008
feature: Salesforce
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '341'
ht-degree: 8%

---

# Sandbox do Salesforce para migração de produção {#salesforce-sandbox-to-production-migration}

Se você optou por testar [!DNL Marketo Measure] em um [!DNL Salesforce] Ambiente de sandbox, siga estas instruções para migrar para produção quando estiver pronto. As instruções a seguir pressupõem que você já tenha baixado o [!DNL Marketo Measure] pacote na organização da Sandbox, executou os testes necessários e estão prontos para enviar [!DNL Marketo Measure] para produção.

## Etapa 1: instalar [!DNL Marketo Measure] Pacotes na produção [!DNL Salesforce] Instância {#install-marketo-measure-packages-into-your-production-salesforce-instance}

* Instale os dois [!DNL Marketo Measure] pacotes na produção com o &quot;[!UICONTROL Todos os usuários]Configuração &quot;

   * [Pacote base](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B3KLuEAN){target="_blank"}
   * [Pacote de extensão do painel](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t610000001jI6){target="_blank"}

* Para obter mais informações sobre o [!DNL Marketo Measure] relação com [!DNL Salesforce], dê uma olhada [este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md)
* Um pouco de [!DNL Salesforce] é necessária. Os itens de ação específicos são descritos abaixo em [Etapa 4 abaixo](#salesforce-configuration)

## Etapa 2: Excluir a conexão CRM de sandbox atual em [!DNL Marketo Measure] Aplicativo {#delete-the-current-sandbox-crm-connection-in-marketo-measure-app}

* Faça logon no [!DNL Marketo Measure] aplicativo em experience.adobe.com/marketo-measure
* Navegue até Minha conta >[!UICONTROL Configurações] >[!UICONTROL Conexões]
* Clique no ícone da lixeira ao lado da conexão SFDC para excluir
* Você será solicitado a confirmar sua exclusão. Leia o aviso cuidadosamente e entenda as consequências da exclusão

  ![](assets/salesforce-sandbox-to-production-migration-1.png)

   * Digite o nome da empresa conforme solicitado no modelo de confirmação e clique em &quot;Entendo as consequências, exclua esta conexão&quot;
* Isso acionará o processo de exclusão e levará algum tempo para ser concluído

## Etapa 3: conectar a instância de CRM de produção em [!DNL Marketo Measure] Aplicativo {#connect-the-production-crm-instance-in-marketo-measure-app}

* Faça logon no [!DNL Marketo Measure] aplicativo em experience.adobe.com/marketo-measure
* Navegue até [!UICONTROL Minha conta] >[!UICONTROL Configurações] > [!UICONTROL Conexões]
* Após a exclusão bem-sucedida da conexão de sandbox, a conexão desaparecerá da página, caso contrário, a conexão ainda estará presente com o status &quot;Exclusão em andamento&quot;
* Clique em &quot;[!UICONTROL Configurar Nova Conexão do CRM]&quot;
* No campo &quot;[!UICONTROL Selecionar Conexão do CRM]&quot;caixa de diálogo modal, clique no link &quot;[!UICONTROL Conectar]&quot;Ação ao lado da variável [!DNL Salesforce] , selecione o &quot;[!UICONTROL Produção]opção &quot;
* Suas credenciais serão solicitadas, certifique-se de inserir os detalhes de logon da Produção

## Etapa 4: Configuração do Salesforce {#salesforce-configuration}

[Layouts de página](/help/configuration-and-setup/marketo-measure-and-salesforce/page-layout-instructions.md)

[Conjuntos de permissões](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md)

[Compartilhamento de relatórios](https://help.salesforce.com/articleView?id=analytics_share_folder.htm&amp;type=0){target="_blank"}

[Ocultar tipos de relatórios desnecessários](/help/configuration-and-setup/marketo-measure-and-salesforce/hiding-unnecessary-report-types.md)

[Fluxo de trabalho personalizado, se aplicável](/help/advanced-marketo-measure-features/custom-revenue-amount/using-a-custom-revenue-amount-field.md)
