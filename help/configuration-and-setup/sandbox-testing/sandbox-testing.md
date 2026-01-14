---
description: Teste da integração do Marketo Measure com uma orientação de sandbox da Salesforce para usuários do Marketo Measure
title: Teste da integração do Marketo Measure com uma sandbox da Salesforce
exl-id: df40b000-4572-46df-aef5-8f690ca8ed7a
feature: Salesforce
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '358'
ht-degree: 10%

---

# Teste da integração do Marketo Measure com uma sandbox da Salesforce {#testing-the-marketo-measure-integration-with-a-salesforce-sandbox}

>[!NOTE]
>
>Você pode ver instruções específicas para o “[!DNL Marketo Measure]” na documentação, mas ainda notar o termo “Bizible” em seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

Uma das funcionalidades principais do [!DNL Marketo Measure] é a capacidade de acompanhar seus esforços de marketing digital por meio de ações em seu site e, em seguida, enviar esses dados para sua produção [!DNL Salesforce org] por meio de clientes potenciais e contatos. No entanto, normalmente não há leads de entrada criados em seu site em uma integração de sandbox, portanto, o foco nos dados será de uma perspectiva puramente offline.

Estas são as duas fontes referenciadas para as duas fases do teste. [Etapas 1-4](https://help.salesforce.com/s/articleView?id=lead_import_wizard.htm&language=en_US&type=5) e [Etapas 5-6](/help/channel-tracking-and-setup/offline-channels/legacy-processes/syncing-offline-campaigns.md). É recomendável revisar esses documentos, pois eles fornecem mais detalhes em algumas áreas.

1. Você precisa criar alguns clientes em potencial em um CSV para carregá-los em uma campanha. A maneira de fazer isso é exportar alguns clientes em potencial por meio de um relatório no Salesforce de produção. Caso contrário, você pode criar manualmente os clientes em potencial em um arquivo do Excel e salvá-lo como um CSV para importação. Você só precisa de cerca de 20 registros. O arquivo deve ter as seguintes colunas:

   1. Email
   1. Empresa
   1. Sobrenome
   1. Nome (opcional, mas recomendado)

1. Faça logon no ambiente de sandbox.
1. Criar uma campanha de teste. Use um tipo de campanha, como Evento ou Informativo.
1. Depois que a campanha for criada, carregue Clientes Potenciais como Membros da Campanha selecionando **[!UICONTROL Gerenciar Membros]** > **[!UICONTROL Adicionar Membros]** > **[!UICONTROL Importar Arquivos]**.
1. Depois que isso for concluído, de volta ao layout da página do Campaign, você &quot;Ativará os pontos de contato do comprador&quot;, que é um campo de lista de opções. Escolha o valor: **[!UICONTROL Incluir todos os membros da campanha]**.

Depois disso, inicia uma sincronização entre [!DNL Marketo Measure] e [!DNL Salesforce] e aplica pontos de contato aos registros de cliente potencial. É recomendável verificar novamente no dia seguinte por meio de um relatório chamado: &quot;Buyer Touchpoint on Leads&quot; localizado na pasta [!UICONTROL Relatórios de Pontos de Contato do Comprador], na guia Relatórios. Se o relatório estiver preenchendo um ponto de contato para cada lead, isso é um sinal de sucesso.
