---
description: IFrame Forms e orientação do [!DNL Marketo Measure] para usuários do Marketo Measure
title: Formulários do IFrame e [!DNL Marketo Measure]
exl-id: fe8d7403-27be-4702-a1b6-d574e1243c0a
feature: Tracking
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: dcbeff6e-0253-5a4b-9ac2-1b67cc4a6286
    internal-label: Tracking
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '208'
ht-degree: 78%
---
# Formulários do IFrame e [!DNL Marketo Measure] {#iframe-forms-and-marketo-measure}

No [!DNL Marketo Measure], uma das funcionalidades principais é rastrear iniciativas de marketing digital por meio de sessões de site e envios de formulários. Geralmente, quando o JavaScript do Marketo é inserido no site, nós o inserimos automaticamente em todos os formulários no site. No entanto, essa funcionalidade possui limitações caso o formulário esteja contido em um IFrame.

Pense em um IFrame como uma página dentro de uma página; logo, assim como solicitamos que o script seja adicionado a todas as páginas do site, também é necessário inserir o script dentro do IFrame para garantir o rastreamento.

Em muitos casos, vemos que o IFrame é gerenciado por meio de um provedor de automação de marketing, portanto, é necessário configurá-lo nessa plataforma ou por meio do provedor de formulários.

Recomendamos inserir o JavaScript no cabeçalho do IFrame para que, em seguida, possamos anexá-lo automaticamente aos formulários dentro desse IFrame.

![É recomendável colocar o JavaScript dentro do cabeçalho de](assets/adding-pages-1.png)

Em caso de dúvidas sobre a adição do JavaScript aos formulários IFrame, entre em contato com a Equipe de Contas da Adobe (seu Gerente de Contas) ou com o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
