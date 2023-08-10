---
unique-page-id: 18874765
description: Teste da integração do Marketo Measure com uma sandbox do Salesforce - [!DNL Marketo Measure] - Documentação do produto
title: Teste da integração do Marketo Measure com uma sandbox do Salesforce
exl-id: df40b000-4572-46df-aef5-8f690ca8ed7a
feature: Salesforce
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '364'
ht-degree: 1%

---

# Teste da integração do Marketo Measure com uma sandbox do Salesforce {#testing-the-marketo-measure-integration-with-a-salesforce-sandbox}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Um dos [!DNL Marketo Measure] as funcionalidades principais são a capacidade de rastrear seus esforços de marketing digital por meio de ações em seu site e, em seguida, enviar esses dados para a produção [!DNL Salesforce org] por meio de clientes potenciais e contatos. No entanto, normalmente não há leads de entrada criados em seu site em uma integração de sandbox, portanto, o foco nos dados será de uma perspectiva puramente offline.

Estas são as duas fontes referenciadas para as duas fases do teste. [Etapas 1-4](https://help.salesforce.com/apex/HTViewHelpDoc?id=lead_import_wizard.htm&amp;language=en_US) e [Etapas 5-6](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md). Recomendamos revisar esses documentos, pois eles fornecem mais detalhes em algumas áreas.

1. Você precisará criar alguns leads em um CSV para poder carregá-los em uma campanha. A maneira de fazer isso é exportar alguns clientes em potencial por meio de um relatório na Salesforce de produção. Caso contrário, você pode criar manualmente os clientes em potencial em um arquivo do Excel e salvá-lo como um CSV para importação. Você só precisa de cerca de 20 registros. O arquivo precisa ter as seguintes colunas:

   1. Email
   1. Empresa
   1. Sobrenome
   1. Nome (opcional, mas recomendado)

1. Faça logon no ambiente de sandbox.
1. Primeiro, você criará uma campanha de teste. Recomendamos usar um tipo de campanha, como Evento ou Informativo.
1. Depois que a campanha for criada, você fará o upload de clientes potenciais como membros da campanha selecionando **[!UICONTROL Gerenciar membros]** > **[!UICONTROL Adicionar membros]** > **[!UICONTROL Importar arquivos]**.
1. Depois que isso for concluído, de volta ao layout da página do Campaign, você &quot;Ativará os pontos de contato do comprador&quot;, que é um campo de lista de opções. Escolha o valor: **[!UICONTROL Incluir todos os membros da campanha]**.

Depois disso, iniciará uma sincronização entre [!DNL Marketo Measure] e [!DNL Salesforce] e aplicar pontos de contato aos registros de lead. É recomendável verificar novamente no dia seguinte por meio de um relatório chamado: &quot;Ponto de contato do comprador sobre clientes potenciais&quot; encontrado no [!UICONTROL Relatórios de Pontos de Contato do Comprador] na guia Relatórios. Se o relatório estiver preenchendo um ponto de contato para cada lead, isso é um sinal de sucesso.
