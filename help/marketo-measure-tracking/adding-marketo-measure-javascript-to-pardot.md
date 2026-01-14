---
description: Adicionando o  [!DNL Marketo Measure] JavaScript [!DNL Pardot] orientação para usuários do Marketo Measure
title: Adicionando [!DNL Marketo Measure] JavaScript a [!DNL Pardot]
exl-id: e49190ad-aa86-4f8f-a9ed-48de9e937a7e
feature: Tracking
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '230'
ht-degree: 0%

---

# Adicionando o JavaScript [!DNL Marketo Measure] a [!DNL Pardot] {#adding-marketo-measure-javascript-to-pardot}

[!DNL Pardot] formulários exigem manipulação adicional no modelo de formulário além de colocar o script no site para [!DNL Marketo Measure] reconhecer os envios de formulários. O processo é simples; ele só requer a colocação do script de rastreamento [!DNL Marketo Measure] no modelo de formulário [!DNL Pardot].

## Instruções passo a passo {#step-by-step-instructions}

Depois de fazer logon na conta do [!DNL Pardot], siga as etapas abaixo.

1. Navegue até **[!UICONTROL Marketing]**.

1. Clique em **[!UICONTROL Landing Pages]**.

1. Selecione **[!UICONTROL Modelo de layout]**.

   ![](assets/adding-providers-4.png)

1. Determine o Modelo de layout apropriado e clique em **[!UICONTROL Editar]** à direita.

   ![](assets/adding-pages-1.png)

1. Copie e cole o código JavaScript [!DNL Marketo Measure] logo antes da marca de fechamento de cabeçalho na página do HTML.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Siga estas etapas para todos os Modelos de layout de página de aterrissagem aplicáveis.

1. Verifique se o JavaScript [!DNL Marketo Measure] também está na página do site geral.

   No Modelo de layout [!DNL Pardot], o código é semelhante a:

```text
<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>
   </head>
   <body>
```

## Observações adicionais {#additional-notes}

Se o IFrame [!DNL Pardot] tiver a seguinte marca HTML:

`<base href="http://go.pardot.com">`

_E_ o próprio IFrame é, na verdade, uma página segura (HTTPS), em vez de não segura (HTTP). Ao carregar o script no IFrame [!DNL Pardot], o navegador tentará carregar uma versão HTTP do script em uma página HTTPS que falhará, interrompendo o rastreamento. A solução é atualizar o script no IFrame [!DNL Pardot] para carregar a versão segura do script:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

Pode já haver outros trechos de código de rastreamento nesta área, como um código [!DNL Google Analytics]. Certifique-se de separá-los por ponto-e-vírgula `;` e um único espaço, como mostrado neste exemplo:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="othercode_example" src="otherfile_example.js" ></script>`
