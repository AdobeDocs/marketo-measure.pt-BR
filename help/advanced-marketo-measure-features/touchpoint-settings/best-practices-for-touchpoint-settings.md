---
description: Práticas recomendadas para configurações de Touchpoint - [!DNL Marketo Measure]
title: Práticas recomendadas para configurações de touchpoint
exl-id: 01e314a6-e33d-45cd-aaa3-c212afec07d1
feature: Touchpoints
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '658'
ht-degree: 6%

---

# Práticas recomendadas para configurações de touchpoint {#best-practices-for-touchpoint-settings}

## Visão geral {#overview}

A variável [!UICONTROL Configurações do ponto de contato] seção do seu [!DNL Marketo Measure] permite que você defina regras que suprimirão ou removerão pontos de contato do seu [!DNL Marketo Measure] dados e sistemas conexos. Essas regras podem ajudar você a isolar determinados conjuntos de dados que não precisam ser representados nos dados do ponto de contato do Comprador ou que você não deseja receber crédito de atribuição sem perturbar o rastreamento e a coleção de dados.

**Remoção do ponto de contato** significa [!DNL Marketo Measure] O removerá (ou seja, removerá) todos os pontos de contato do CRM que se encaixem nos critérios da regra. Os dados podem ser comunicados no prazo de [!DNL Marketo Measure] Painel de ROI (Discover), mas não aparece no CRM. Geralmente usado para aliviar o estresse em seus limites de armazenamento de dados no CRM

**Supressão do ponto de contato** é semelhante à Remoção do ponto de contato, mas os dados NÃO PODEM ser reportados no Painel de ROI. Os pontos de contato suprimidos não estarão acessíveis no CRM nem na Discover. A supressão garantirá que os dados do CRM e os dados do Discover correspondam. Normalmente usado para ajustar e especificar ainda mais quais dados de ponto de contato você deseja receber crédito de atribuição.

No seu [!DNL Marketo Measure] aplicativo, a variável [!UICONTROL Configurações do ponto de contato] serão divididas em quatro seções principais. Cada seção suprime ou remove um conjunto diferente de dados. Use a chave abaixo para garantir que suas regras estejam suprimindo ou removendo os pontos de contato desejados.

* Remover Buyer Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que removerá **Dados do ponto de contato do comprador** (os pontos de contato associados ao indivíduo, não a oportunidade) do seu **CRM**
* Suprimir Buyer Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que removerá **Dados do ponto de contato do comprador** (os pontos de contato associados ao indivíduo, não a oportunidade) do seu **CRM** e **Descobrir**
* Remover Buyer Attribution Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que removerá **Ponto de contato de atribuição do comprador** dados (os pontos de contato associados à oportunidade e à receita) do seu **CRM**
* Suprimir Buyer Attribution Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que removerá **Ponto de contato de atribuição do comprador** dados (os pontos de contato associados à oportunidade e à receita) do seu **CRM** e **Descobrir**

## Prática recomendada {#best-practice}

Se você estiver estabelecendo regras de Configuração de ponto de contato pela primeira vez ou apenas as revisando para verificar a precisão, lembre-se das seguintes práticas recomendadas.

* Estabeleça a lista de dados que você deseja suprimir ou remover antes de criar as regras
* Identifique exatamente quais campos indicam claramente a regra ou as regras que você está configurando
* Verifique se você especificou o operador correto para a regra
* Usando a chave acima, verifique se sua regra está especificada na seção correta das Configurações do ponto de contato
* Teste suas regras antes de implementá-las replicando a lógica da regra em um relatório de Ponto de contato do comprador no CRM para garantir que ele suprima ou remova os dados desejados

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Analisar o [!UICONTROL Configurações do ponto de contato] é importante, pois eles podem alterar drasticamente seus dados quando não estão definidos adequadamente. Como prática recomendada, você deve consultar as Configurações de ponto de contato pelo menos duas vezes por ano. Essa é uma simples revisão visual das regras configuradas na seção Configurações do ponto de contato do [!DNL Marketo Measure] aplicativo. Essa revisão permitirá que você tenha certeza de que suas Configurações de Touchpoint estão atualizadas e que quaisquer alterações podem ser feitas adequadamente.

Motivos para analisar seu [!UICONTROL Ponto de contato] As configurações incluem:

* Rotatividade de sua equipe de marketing
* Principais atualizações na estrutura do site
* Identificação de dados de ponto de contato que não são mais úteis
   * Sempre que você encontrar dados de ponto de contato que achar que não devem receber crédito de atribuição, [!DNL touchpoint suppression] As regras são a funcionalidade para garantir que seus dados sejam o mais limpos e precisos possível.
* Alterações nos campos usados para definir suas regras de supressão ou remoção

>[!MORELIKETHIS]
>
>* [Visão geral da remoção e supressão do ponto de contato](/help/advanced-marketo-measure-features/touchpoint-settings/touchpoint-removal-and-touchpoint-suppression.md)
>* [Por que os pontos de contato nunca devem ser excluídos](/help/advanced-marketo-measure-features/touchpoint-settings/why-you-should-never-delete-touchpoints.md)
>* [Pontos de contato do comprador (BT) vs Pontos de contato de atribuição do comprador (BAT)](/help/configuration-and-setup/getting-started-with-marketo-measure/difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints.md)

