---
description: Orientação de migração de sandbox para produção do Salesforce para usuários do Marketo Measure
title: Migração da sandbox para a produção no Salesforce
exl-id: b2b71c4a-f192-43ce-a27e-cbd0ec3cf008
feature: Salesforce
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '317'
ht-degree: 95%

---

# Migração da sandbox para a produção no Salesforce {#salesforce-sandbox-to-production-migration}

Se você optou por testar o [!DNL Marketo Measure] em um ambiente de sandbox do [!DNL Salesforce], siga estas instruções para migrar para a produção quando tudo estiver preparado. As instruções a seguir pressupõem que você já baixou o pacote do [!DNL Marketo Measure] na organização da sandbox, executou os testes necessários e deixou tudo pronto para enviar o [!DNL Marketo Measure] para a produção.

## Etapa 1: instalar o pacote do [!DNL Marketo Measure] na instância de produção do [!DNL Salesforce]

* Instale o pacote do [!DNL Marketo Measure] na produção com a configuração “[!UICONTROL Todos os usuários]”

   * [Pacote Base](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B3KLuEAN){target="_blank"}

* Para obter mais informações sobre a relação do [!DNL Marketo Measure] com o [!DNL Salesforce], consulte [este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md)
* É necessário configurar alguns detalhes no [!DNL Salesforce]. Os itens de ação específicos são descritos na [etapa 4 abaixo](#salesforce-configuration)

## Etapa 2: excluir a conexão CRM de sandbox atual no aplicativo [!DNL Marketo Measure] {#delete-the-current-sandbox-crm-connection-in-marketo-measure-app}

* Faça logon no aplicativo [!DNL Marketo Measure] em experience.adobe.com/marketo-measure
* Navegue até Minha conta > [!UICONTROL Configurações] > [!UICONTROL Conexões]
* Clique no ícone de lixeira ao lado da conexão SFDC para excluir
* Será solicitado que você confirme a exclusão. Certifique-se de ler o aviso cuidadosamente para entender as consequências da exclusão

  ![](assets/salesforce-migration-1.png)

   * Digite o nome da empresa conforme solicitado no modelo de confirmação e clique em “Eu entendo as consequências e desejo excluir esta conexão”
* Isso aciona o processo de exclusão que leva algum tempo para ser concluído

## Etapa 3: conectar a instância CRM de produção no aplicativo [!DNL Marketo Measure] {#connect-the-production-crm-instance-in-marketo-measure-app}

* Faça logon no aplicativo [!DNL Marketo Measure] em experience.adobe.com/marketo-measure
* Navegue até [!UICONTROL Minha conta] > [!UICONTROL Configurações] > [!UICONTROL Conexões]
* Após a exclusão da conexão da sandbox, ela desaparece da página. Caso a exclusão não seja bem-sucedida, a conexão ainda estará presente com um status de “Exclusão em andamento”
* Clique em “[!UICONTROL Configurar nova conexão CRM]”
* Na caixa de diálogo modal “[!UICONTROL Selecionar conexão de CRM]”, clique na ação “[!UICONTROL Conectar]” ao lado da plataforma do [!DNL Salesforce] e selecione a opção “[!UICONTROL Produção]”
* Suas credenciais serão solicitadas. Certifique-se de inserir os detalhes de logon da produção

## Etapa 4: configuração do Salesforce {#salesforce-configuration}

[Layouts de página](/help/configuration-and-setup/marketo-measure-and-salesforce/page-layout-instructions.md)

[Conjuntos de permissões](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-permission-sets.md)

[Compartilhando relatórios](https://help.salesforce.com/s/articleView?language=pt_BR&id=analytics_share_folder.htm&type=0){target="_blank"}

[Ocultar tipos de relatório desnecessários](/help/configuration-and-setup/marketo-measure-and-salesforce/hiding-unnecessary-report-types.md)

[Fluxo de trabalho personalizado, se aplicável](/help/advanced-features/custom-revenue-amount/using-a-custom-revenue-amount-field.md)
