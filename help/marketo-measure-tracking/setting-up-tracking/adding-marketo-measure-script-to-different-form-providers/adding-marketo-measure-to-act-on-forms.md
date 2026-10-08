---
unique-page-id: 18874753
description: Adicionando [!DNL Marketo Measure] ao Act-On Forms - [!DNL Marketo Measure]
title: Adicionando [!DNL Marketo Measure] ao Act-On Forms
exl-id: 3d246e6a-ad3b-4683-b2b7-ab3f0f4c5ab2
feature: Tracking
TQID: 'https://experienceleague.adobe.com/BUdHiCxfaG7a8Tays-Oqg9ZJQjSZJMM4-ChPHuF0RCg'
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: dcbeff6e-0253-5a4b-9ac2-1b67cc4a6286
    internal-label: Tracking
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '79'
ht-degree: 1%
---
# Adicionando [!DNL Marketo Measure] ao Act-On Forms {#adding-marketo-measure-to-act-on-forms}

## Direções {#directions}

1. No formulário que você está editando, selecione a opção **[!UICONTROL Configurações]** no canto direito.
1. Procure uma área denominada [!UICONTROL &quot;Análise Externa da Web.&quot;] Aqui você pode soltar o trecho de código de rastreamento [!DNL Marketo Measure].

## JavaScript do [!DNL Marketo Measure] {#marketo-measure-javascript}

`script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

>[!NOTE]
>
>Pode já haver outros trechos de código de rastreamento nesta área, como um código [!DNL Google Analytics]. Certifique-se de separá-los usando um ponto e vírgula `;` e um único espaço, assim:
>
>`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>**; **<script async="true" type="someothercode" src="someotherfile.js" ></script>`
