---
unique-page-id: 18874694
description: Sandbox do Salesforce para migração de produção - [!DNL Marketo Measure] - Documentação do produto
title: Sandbox do Salesforce para migração de produção
exl-id: b2b71c4a-f192-43ce-a27e-cbd0ec3cf008
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '347'
ht-degree: 0%

---

# Sandbox do Salesforce para migração de produção {#salesforce-sandbox-to-production-migration}

Se você optou por testar [!DNL Marketo Measure] em [!DNL Salesforce] Ambiente de sandbox, siga estas instruções para migrar para produção assim que estiver pronto. As instruções a seguir presumem que você já tenha baixado o [!DNL Marketo Measure] pacote na sua organização Sandbox, realizou os testes necessários e está pronto para enviar [!DNL Marketo Measure] para produção.

## Etapa 1: Instalar [!DNL Marketo Measure] Pacotes na sua produção [!DNL Salesforce] Instância {#install-marketo-measure-packages-into-your-production-salesforce-instance}

* Instale os dois [!DNL Marketo Measure] pacotes em produção com o &quot;[!UICONTROL Todos os usuários]&quot;

   * [Pacote básico](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B3KLuEAN){target=&quot;_blank&quot;}
   * [Pacote de extensão do painel](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t610000001jI6){target=&quot;_blank&quot;}

* Para obter mais informações sobre o [!DNL Marketo Measure] relação com [!DNL Salesforce], dê uma olhada em [este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md)
* Um pouco de [!DNL Salesforce] é necessária. Os elementos de ação específicos são descritos a seguir em [Etapa 4 abaixo](#salesforce-configuration)

## Etapa 2: Excluir a conexão de sandbox atual do CRM em [!DNL Marketo Measure] Aplicativo {#delete-the-current-sandbox-crm-connection-in-marketo-measure-app}

* Faça logon no [!DNL Marketo Measure] aplicativo em experience.adobe.com/marketo-measure
* Navegue até Minha conta >[!UICONTROL Configurações] >[!UICONTROL Conexões]
* Clique no ícone da lixeira ao lado da conexão SFDC para excluir
* Você será solicitado a confirmar a exclusão. Certifique-se de ler o aviso cuidadosamente e entenda as consequências da exclusão

   ![](assets/salesforce-sandbox-to-production-migration-1.png)

   * Digite o nome da Empresa conforme solicitado no modelo de confirmação e clique em &quot;Eu entendo as consequências, exclua esta conexão&quot;
* Isso acionará o processo de exclusão e levará algum tempo para ser concluído

## Etapa 3: Conecte a instância do CRM de produção em [!DNL Marketo Measure] Aplicativo {#connect-the-production-crm-instance-in-marketo-measure-app}

* Faça logon no [!DNL Marketo Measure] aplicativo em experience.adobe.com/marketo-measure
* Navegar para [!UICONTROL Minha conta] >[!UICONTROL Configurações] > [!UICONTROL Conexões]
* Depois que a exclusão da conexão do Sandbox for excluída com êxito, a conexão desaparecerá da página; caso contrário, a conexão ainda estará presente com o status &quot;Exclusão em andamento&quot;
* Clique em &quot;[!UICONTROL Configurar Nova Conexão CRM]&quot;
* No &quot;[!UICONTROL Selecionar Conexão CRM]&quot; , clique na caixa de diálogo modal &quot;[!UICONTROL Connect]&quot; Ação ao lado do [!DNL Salesforce] Selecione o &quot;[!UICONTROL Produção]Opção &quot;
* Você será solicitado a fornecer suas credenciais. Certifique-se de inserir os detalhes de logon da Produção

## Etapa 4: Configuração do Salesforce {#salesforce-configuration}

[Layouts de página](/help/configuration-and-setup/marketo-measure-and-salesforce/page-layout-instructions.md)

[Conjuntos de permissões](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md)

[Compartilhamento de relatórios](https://help.salesforce.com/articleView?id=analytics_share_folder.htm&amp;type=0){target=&quot;_blank&quot;}

[Ocultar tipos de relatório desnecessários](/help/configuration-and-setup/marketo-measure-and-salesforce/hiding-unnecessary-report-types.md)

[Fluxo de trabalho personalizado, se aplicável](/help/advanced-marketo-measure-features/custom-revenue-amount/using-a-custom-revenue-amount-field.md)
