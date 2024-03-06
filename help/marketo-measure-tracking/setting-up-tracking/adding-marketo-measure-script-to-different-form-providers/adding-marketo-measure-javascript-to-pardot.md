---
unique-page-id: 18874757
description: Adicionando [!DNL Marketo Measure] JavaScript para [!DNL Pardot] - [!DNL Marketo Measure]
title: Adicionando [!DNL Marketo Measure] JavaScript para [!DNL Pardot]
exl-id: e49190ad-aa86-4f8f-a9ed-48de9e937a7e
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '225'
ht-degree: 0%

---

# Adicionando [!DNL Marketo Measure] JavaScript para [!DNL Pardot] {#adding-marketo-measure-javascript-to-pardot}

[!DNL Pardot] formulários exigem manuseio adicional no modelo de formulário além de colocar o script no site para [!DNL Marketo Measure] para reconhecer envios de formulários. O processo é simples; requer apenas que a [!DNL Marketo Measure] script de rastreamento no [!DNL Pardot] modelo de formulário.

## Instruções passo a passo {#step-by-step-instructions}

Depois de fazer logon no [!DNL Pardot] siga as etapas abaixo.

1. Navegue até **[!UICONTROL Marketing]**.

1. Clique em **[!UICONTROL Landing Pages]**.

1. Selecionar **[!UICONTROL Modelo de layout]**.

   ![](assets/1-3.png)

1. Determine o modelo de layout apropriado e clique em **[!UICONTROL Editar]** à direita.

   ![](assets/2-1.png)

1. Copie e cole o [!DNL Marketo Measure] Código JavaScript logo antes da tag de fechamento de cabeçalho na página do HTML.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Siga estas etapas para todos os Modelos de layout de página de aterrissagem aplicáveis.

1. Verifique se [!DNL Marketo Measure] O JavaScript também está na página do site geral.

   No prazo de [!DNL Pardot] Modelo de layout, o código é semelhante a:

```text
<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>
   </head>
   <body>
```

## Observações adicionais {#additional-notes}

Se a variável [!DNL Pardot] O IFrame tem a seguinte tag HTML:

`<base href="http://go.pardot.com">`

_E_ o próprio IFrame é, na verdade, uma página segura (HTTPS) em vez de insegura (HTTP), ao carregar o script no [!DNL Pardot] SeRame, o navegador tenta carregar uma versão HTTP do script em uma página HTTPS que falhará, quebrando o rastreamento. A solução é atualizar o script no [!DNL Pardot] IFrame para carregar a versão segura do script:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

Pode já haver outros trechos de código de rastreamento nesta área, como um [!DNL Google Analytics] código. Certifique-se de separá-los por ponto e vírgula `;` e um único espaço, como mostrado neste exemplo:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="othercode_example" src="otherfile_example.js" ></script>`
