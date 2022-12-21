---
unique-page-id: 18874765
description: Testar a integração de medida do Marketo com uma sandbox do Salesforce - [!DNL Marketo Measure] - Documentação do produto
title: Teste da integração de medida da Marketo com uma sandbox Salesforce
exl-id: df40b000-4572-46df-aef5-8f690ca8ed7a
source-git-commit: 993a326c377b3b6ff48c4e0114b59297f9ca2ca6
workflow-type: tm+mt
source-wordcount: '364'
ht-degree: 1%

---

# Teste da integração de medida da Marketo com uma sandbox Salesforce {#testing-the-marketo-measure-integration-with-a-salesforce-sandbox}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

Um dos [!DNL Marketo Measure] as principais funcionalidades são a capacidade de rastrear seus esforços de marketing digital por meio de ações em seu site e, em seguida, enviar esses dados para sua produção [!DNL Salesforce org] por meio de Leads e Contatos. No entanto, normalmente, não há leads de entrada criados em seu site em uma integração com o Sandbox, portanto, o foco nos dados será de um ponto de vista meramente offline.

Estas são as duas fontes referenciadas para ambas as fases do teste. [Etapas 1-4](https://help.salesforce.com/apex/HTViewHelpDoc?id=lead_import_wizard.htm&amp;language=en_US) e [Etapas 5 a 6](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md). Recomendamos revisar esses documentos, pois eles fornecem mais detalhes em algumas áreas.

1. Você precisará criar alguns leads em um CSV para fazer upload deles em uma campanha. A maneira de fazer isso é exportar alguns leads por meio de um relatório em sua produção do Salesforce. Caso contrário, você pode criar Leads manualmente em um arquivo Excel e salvá-lo como CSV para importação. Você só precisa de cerca de 20 registros. O arquivo precisa ter as seguintes colunas:

   1. E-mail
   1. Empresa
   1. Sobrenome
   1. Nome (opcional, porém recomendado)

1. Faça logon no ambiente do Sandbox.
1. Primeiro, você criará uma campanha de teste. Recomendamos usar um tipo de campanha, como Evento ou Informativo.
1. Após a criação da campanha, você fará o upload de Leads como membros da campanha selecionando **[!UICONTROL Gerenciar membros]** > **[!UICONTROL Adicionar membros]** > **[!UICONTROL Importar arquivos]**.
1. Depois que isso for concluído, de volta ao layout da página Campanha, você ativará os pontos de contato do comprador, que é um campo de lista de opções. Escolha o valor: **[!UICONTROL Incluir todos os membros da campanha]**.

Feito isso, iniciará uma sincronização entre [!DNL Marketo Measure] e [!DNL Salesforce] e aplique pontos de contato aos registros de lead. Recomenda-se verificar novamente no dia seguinte por meio de um relatório chamado: &quot;Buyer Touchpoint on Leads&quot; encontrado no [!UICONTROL Relatórios de pontos de contato do comprador] na guia Relatórios . Se o relatório estiver preenchendo um ponto de contato para cada lead, isso será um sinal de sucesso.
