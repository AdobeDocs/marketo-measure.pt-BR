---
unique-page-id: 18874753
description: Adição de [!DNL Marketo Measure] para o Act-On Forms - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] para o Act-On Forms
exl-id: 3d246e6a-ad3b-4683-b2b7-ab3f0f4c5ab2
source-git-commit: b910e5aedb9e178058f7af9a6907a1039458ce7a
workflow-type: tm+mt
source-wordcount: '77'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] para o Act-On Forms {#adding-marketo-measure-to-act-on-forms}

## Direções {#directions}

1. No formulário que você está editando, selecione o **[!UICONTROL Configurações]** no canto direito.
1. Procure uma área rotulada [!UICONTROL &quot;Análise da Web externa&quot;.] Este será o local onde você soltar a variável [!DNL Marketo Measure] snippet do código de rastreamento.

## [!DNL Marketo Measure] JavaScript {#marketo-measure-javascript}

`script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

>[!NOTE]
>
>Já pode haver outros trechos de código de rastreamento nessa área, como um [!DNL Google Analytics] código. Certifique-se de separá-los usando um ponto e vírgula `;` e um espaço único, assim:
>
>`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>**; **<script async="true" type="someothercode" src="someotherfile.js" ></script>`
