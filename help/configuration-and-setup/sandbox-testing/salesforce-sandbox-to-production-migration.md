---
unique-page-id: 18874694
description: Migração da sandbox para produção do Salesforce - [!DNL Marketo Measure]
title: Sandbox do Salesforce para migração de produção
exl-id: b2b71c4a-f192-43ce-a27e-cbd0ec3cf008
feature: Salesforce
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '312'
ht-degree: 4%

---

# Sandbox do Salesforce para migração de produção {#salesforce-sandbox-to-production-migration}

Se você optou por testar [!DNL Marketo Measure] em um [!DNL Salesforce] Ambiente de sandbox, siga estas instruções para migrar para produção quando estiver pronto. As instruções a seguir pressupõem que você já tenha baixado o [!DNL Marketo Measure] pacote na organização da Sandbox, executou os testes necessários e estão prontos para enviar [!DNL Marketo Measure] para produção.

## Etapa 1: instalar o [!DNL Marketo Measure] Pacote em sua produção [!DNL Salesforce] Instância

* Instale o [!DNL Marketo Measure] para produção com o &quot;[!UICONTROL Todos os usuários]Configuração &quot;

   * [Pacote base](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B3KLuEAN){target="_blank"}

* Para obter mais informações sobre o [!DNL Marketo Measure] relação com [!DNL Salesforce], olhe para [este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md)
* Um pouco de [!DNL Salesforce] é necessária. Os itens de ação específicos são descritos abaixo em [Etapa 4 abaixo](#salesforce-configuration)

## Etapa 2: Excluir a conexão CRM de sandbox atual em [!DNL Marketo Measure] Aplicativo {#delete-the-current-sandbox-crm-connection-in-marketo-measure-app}

* Faça logon no [!DNL Marketo Measure] aplicativo em experience.adobe.com/marketo-measure
* Navegue até Minha conta >[!UICONTROL Configurações] >[!UICONTROL Conexões]
* Clique no ícone da lixeira ao lado da conexão SFDC para excluir
* Será solicitado que você confirme sua exclusão. Leia o prompt cuidadosamente e entenda as consequências da exclusão

  ![](assets/salesforce-sandbox-to-production-migration-1.png)

   * Digite o nome da empresa conforme solicitado no modelo de confirmação e clique em &quot;Entendo as consequências, exclua esta conexão&quot;
* Isso aciona o processo de exclusão e levará algum tempo para ser concluído

## Etapa 3: conectar a instância de CRM de produção em [!DNL Marketo Measure] Aplicativo {#connect-the-production-crm-instance-in-marketo-measure-app}

* Faça logon no [!DNL Marketo Measure] aplicativo em experience.adobe.com/marketo-measure
* Navegue até [!UICONTROL Minha conta] >[!UICONTROL Configurações] > [!UICONTROL Conexões]
* Depois que a exclusão da conexão de sandbox é excluída com sucesso, a conexão desaparece da página; caso contrário, a conexão ainda estará presente com um status de &quot;Exclusão em andamento&quot;
* Clique em &quot;[!UICONTROL Configurar Nova Conexão do CRM]&quot;
* No campo &quot;[!UICONTROL Selecionar Conexão do CRM]&quot;caixa de diálogo modal, clique no link &quot;[!UICONTROL Conectar]&quot;Ação ao lado da variável [!DNL Salesforce] , selecione o &quot;[!UICONTROL Produção]opção &quot;
* Suas credenciais serão solicitadas. Certifique-se de inserir os detalhes de logon da Produção

## Etapa 4: Configuração do Salesforce {#salesforce-configuration}

[Layouts de página](/help/configuration-and-setup/marketo-measure-and-salesforce/page-layout-instructions.md)

[Conjuntos de permissões](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md)

[Compartilhamento de relatórios](https://help.salesforce.com/s/articleView?language=en_US&amp;id=analytics_share_folder.htm&amp;type=0){target="_blank"}

[Ocultar tipos de relatórios desnecessários](/help/configuration-and-setup/marketo-measure-and-salesforce/hiding-unnecessary-report-types.md)

[Fluxo de trabalho personalizado, se aplicável](/help/advanced-marketo-measure-features/custom-revenue-amount/using-a-custom-revenue-amount-field.md)
