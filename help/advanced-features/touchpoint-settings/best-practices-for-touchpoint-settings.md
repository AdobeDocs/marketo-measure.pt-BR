---
description: Diretrizes de Práticas recomendadas para configurações de Touchpoint para usuários do Marketo Measure
title: Práticas recomendadas para configurações de touchpoint
exl-id: 01e314a6-e33d-45cd-aaa3-c212afec07d1
feature: Touchpoints
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '663'
ht-degree: 6%

---

# Práticas recomendadas para configurações de touchpoint {#best-practices-for-touchpoint-settings}

## Visão geral {#overview}

A seção [!UICONTROL Configurações de Pontos de Contato] do aplicativo [!DNL Marketo Measure] permite definir regras que suprimirão ou removerão pontos de contato dos dados do [!DNL Marketo Measure] e sistemas relacionados. Essas regras podem ajudar você a isolar determinados conjuntos de dados que não precisam ser representados nos dados do ponto de contato do Comprador ou que você não deseja receber crédito de atribuição sem perturbar o rastreamento e a coleção de dados.

**A Remoção do Ponto de Contato** significa que o [!DNL Marketo Measure] limpará (ou seja, removerá) todos os Pontos de Contato do CRM que se encaixem nos critérios da regra. Os dados podem ser relatados no [!DNL Marketo Measure] Painel de ROI (Discover), mas não aparecem no CRM. Geralmente usado para aliviar o estresse em seus limites de armazenamento de dados no CRM

**Supressão de Pontos de Contato** é semelhante à Remoção de Pontos de Contato, mas os dados NÃO PODEM ser relatados no Painel de ROI. Os pontos de contato suprimidos não estarão acessíveis no CRM nem na Discover. A supressão garantirá que os dados do CRM e os dados do Discover correspondam. Normalmente usado para ajustar e especificar ainda mais quais dados de ponto de contato você deseja receber crédito de atribuição.

No aplicativo [!DNL Marketo Measure], a seção [!UICONTROL Configurações de Pontos de Contato] será dividida em quatro seções principais. Cada seção suprime ou remove um conjunto diferente de dados. Use a chave abaixo para garantir que suas regras estejam suprimindo ou removendo os pontos de contato desejados.

* Remover Buyer Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova **dados do Buyer Touchpoint** (os pontos de contato associados ao indivíduo, não a oportunidade) do seu **CRM**
* Suprimir Buyer Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova os **dados do Buyer Touchpoint** (os pontos de contato associados ao indivíduo, não a oportunidade) do seu **CRM** e da **Descoberta**
* Remover Buyer Attribution Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova os dados do **Buyer Attribution Touchpoint** (os pontos de contato associados à oportunidade e à receita) do seu **CRM**
* Suprimir Buyer Attribution Touchpoints do CRM
   * Use esta seção quando quiser criar uma regra que remova os dados do **Buyer Attribution Touchpoint** (os pontos de contato associados à oportunidade e à receita) do seu **CRM** e da **Discover**

## Prática recomendada {#best-practice}

Se você estiver estabelecendo regras de Configuração de ponto de contato pela primeira vez ou apenas as revisando para verificar a precisão, lembre-se das seguintes práticas recomendadas.

* Estabeleça a lista de dados que você deseja suprimir ou remover antes de criar as regras
* Identifique exatamente quais campos indicam claramente a regra ou as regras que você está configurando
* Verifique se você especificou o operador correto para a regra
* Usando a chave acima, verifique se sua regra está especificada na seção correta das Configurações do ponto de contato
* Teste suas regras antes de implementá-las replicando a lógica da regra em um relatório de Ponto de contato do comprador no CRM para garantir que ele suprima ou remova os dados desejados

## Prática recomendada para manutenção {#best-practice-for-maintenance}

É importante revisar as [!UICONTROL Configurações do Ponto de Contato], pois elas podem alterar drasticamente os dados quando não definidos adequadamente. Como prática recomendada, você deve consultar as Configurações de ponto de contato pelo menos duas vezes por ano. Esta é uma análise visual simples das regras configuradas na seção Configurações do Ponto de Contato do aplicativo [!DNL Marketo Measure]. Essa revisão permitirá que você tenha certeza de que suas Configurações de Touchpoint estão atualizadas e que quaisquer alterações podem ser feitas adequadamente.

Motivos para examinar suas Configurações de [!UICONTROL Touchpoint]:...

* Rotatividade de sua equipe de marketing
* Principais atualizações na estrutura do site
* Identificação de dados de ponto de contato que não são mais úteis
   * Sempre que você encontrar dados de ponto de contato que acha que não devem receber crédito de atribuição, [!DNL touchpoint suppression] regras são a funcionalidade para garantir que seus dados sejam o mais limpos e precisos possível.
* Alterações nos campos usados para definir suas regras de supressão ou remoção

>[!MORELIKETHIS]
>
>* [Visão Geral da Remoção e Supressão do Ponto de Contato](/help/advanced-features/touchpoint-settings/touchpoint-removal-and-touchpoint-suppression.md)
>* [Por que os pontos de contato nunca devem ser excluídos](/help/advanced-features/touchpoint-settings/why-you-should-never-delete-touchpoints.md)
>* [Pontos de contato do comprador (BT) vs Pontos de contato de atribuição do comprador (BAT)](/help/configuration-and-setup/getting-started-with-marketo-measure/difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints.md)

