---
description: Adicionando [!DNL Marketo Measure] orientação Act-On do Forms para usuários do Marketo Measure
title: Adição de [!DNL Marketo Measure] para formulários do Act-On
exl-id: 3d246e6a-ad3b-4683-b2b7-ab3f0f4c5ab2
feature: Tracking
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '81'
ht-degree: 6%

---

# Adicionando [!DNL Marketo Measure] ao Act-On Forms {#adding-marketo-measure-to-act-on-forms}

## Direções {#directions}

1. No formulário que você está editando, selecione a opção **[!UICONTROL Configurações]** no canto direito.
1. Procure uma área denominada [!UICONTROL &quot;Análise Externa da Web&quot;.] É aqui que você pode colocar o trecho de código de rastreamento [!DNL Marketo Measure].

## JavaScript do [!DNL Marketo Measure] {#marketo-measure-javascript}

`script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

>[!NOTE]
>
>Pode já haver outros trechos de código de rastreamento nesta área, como um código [!DNL Google Analytics]. Certifique-se de separá-los usando um ponto e vírgula `;` e um único espaço, assim:
>
>`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>**; **<script async="true" type="someothercode" src="someotherfile.js" ></script>`
