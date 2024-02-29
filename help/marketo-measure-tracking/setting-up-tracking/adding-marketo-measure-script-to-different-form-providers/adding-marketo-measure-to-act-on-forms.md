---
unique-page-id: 18874753
description: Adicionando [!DNL Marketo Measure] para atuar no Forms - [!DNL Marketo Measure]
title: Adição de [!DNL Marketo Measure] para formulários do Act-On
exl-id: 3d246e6a-ad3b-4683-b2b7-ab3f0f4c5ab2
feature: Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '75'
ht-degree: 6%

---

# Adicionando [!DNL Marketo Measure] para atuar no Forms {#adding-marketo-measure-to-act-on-forms}

## Direções {#directions}

1. No formulário que está editando, selecione a variável **[!UICONTROL Configurações]** no canto direito.
1. Procurar uma área rotulada [!UICONTROL &quot;Análise externa da Web.&quot;] Aqui é onde você solta o [!DNL Marketo Measure] trecho do código de rastreamento.

## JavaScript do [!DNL Marketo Measure] {#marketo-measure-javascript}

`script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

>[!NOTE]
>
>Pode já haver outros trechos de código de rastreamento nesta área, como um [!DNL Google Analytics] código. Separe-os usando um ponto e vírgula `;` e um único espaço, assim:
>
>`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>**; **<script async="true" type="someothercode" src="someotherfile.js" ></script>`
