---
description: Práticas recomendadas para configurações de ponto de contato - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para configurações de ponto de contato
exl-id: 01e314a6-e33d-45cd-aaa3-c212afec07d1
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '660'
ht-degree: 3%

---

# Práticas recomendadas para configurações de ponto de contato {#best-practices-for-touchpoint-settings}

## Visão geral {#overview}

A seção Configurações de ponto de contato da [!DNL Marketo Measure] o aplicativo permite que você defina regras que irão suprimir ou remover pontos de contato de seu [!DNL Marketo Measure] dados e sistemas conexos. Essas regras podem ajudá-lo a isolar determinados conjuntos de dados que não precisam ser representados nos dados do ponto de contato do comprador ou que você não deseja receber crédito de atribuição sem atrapalhar o rastreamento e a coleta de dados.

**Remoção do ponto de contato** meios [!DNL Marketo Measure] O limpará (ou seja, removerá) quaisquer pontos de contato do seu CRM que se encaixem nos critérios da regra. Os dados podem ser reportados no [!DNL Marketo Measure] Painel ROI (Discover), mas não aparece no CRM. Usado normalmente para aliviar o estresse nos limites de armazenamento de dados em seu CRM

**Supressão de ponto de contato** é semelhante à Remoção do ponto de contato, mas os dados NÃO PODEM ser relatados no painel ROI. Quaisquer pontos de contato suprimidos não estarão acessíveis no CRM ou no Discover. A supressão garantirá que os dados do CRM e do Discover correspondam. Geralmente usado para ajustar e especificar mais detalhadamente quais dados de ponto de contato você deseja receber crédito de atribuição.

Em seu [!DNL Marketo Measure] aplicativo, a seção Configurações de ponto de contato será dividida em quatro seções principais. Cada seção suprime ou remove um conjunto diferente de dados. Use a tecla abaixo para garantir que suas regras estejam suprimindo ou removendo os pontos de contato desejados.

* Remover Buyer Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova **Dados do ponto de contato do comprador** (os pontos de contato associados ao indivíduo, não a oportunidade) da **CRM**
* Suprimir Buyer Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova **Dados do ponto de contato do comprador** (os pontos de contato associados ao indivíduo, não a oportunidade) da **CRM** e **Discover**
* Remover Buyer Attribution Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova **Ponto de contato da atribuição do comprador** dados (os pontos de contato associados à oportunidade e receita) de **CRM**
* Suprimir Buyer Attribution Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova **Ponto de contato da atribuição do comprador** dados (os pontos de contato associados à oportunidade e receita) de **CRM** e **Discover**

## Prática recomendada {#best-practice}

Esteja você estabelecendo regras de configuração de ponto de contato pela primeira vez ou apenas as revisando para verificar a precisão, lembre-se das seguintes práticas recomendadas.

* Estabeleça a lista de dados que deseja suprimir ou remover antes de criar as regras
* Identifique exatamente quais campos indicarão claramente a regra ou as regras que você está configurando
* Certifique-se de especificar o operador correto para a regra
* Utilizando a chave acima, verifique se sua regra foi especificada na seção correta das Configurações do ponto de contato
* Teste suas regras antes de implementá-las, replicando a lógica da regra em um relatório de ponto de contato do comprador no CRM para garantir que esteja suprimindo ou removendo os dados desejados

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Revisar as configurações do ponto de contato é importante, pois elas podem alterar drasticamente seus dados quando não estão definidas adequadamente. Como prática recomendada, recomendamos que você revise as Configurações de ponto de contato pelo menos duas vezes por ano. Esta é uma revisão visual simples das regras configuradas na seção Configurações do ponto de contato da [!DNL Marketo Measure] aplicativo. Essa revisão permitirá que você sinta-se confiante de que suas Configurações de ponto de contato estão atualizadas e de que quaisquer alterações podem ser feitas de acordo.

Os motivos para analisar as configurações do ponto de contato incluem...

* Volume de negócios em sua equipe de marketing
* Principais atualizações na estrutura de seu site
* Identificação de dados de ponto de contato que não são mais úteis
   * Sempre que você encontrar dados de pontos de contato que não devem receber crédito de atribuição, as regras de supressão de pontos de contato são a funcionalidade necessária para garantir que seus dados sejam tão limpos e precisos quanto possível.
* Alterações nos campos usados para definir regras de supressão ou remoção

>[!MORELIKETHIS]
>
>* [Visão geral da remoção e supressão de pontos de contato](/help/advanced-marketo-measure-features/touchpoint-settings/touchpoint-removal-and-touchpoint-suppression.md)
>* [Por que os pontos de contato nunca devem ser excluídos](/help/advanced-marketo-measure-features/touchpoint-settings/why-you-should-never-delete-touchpoints.md)
>* [Pontos de contato do comprador (BT) vs. Pontos de contato de atribuição do comprador (BAT)](/help/configuration-and-setup/getting-started-with-marketo-measure/difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints.md)

