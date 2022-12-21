---
unique-page-id: 18874757
description: Adição de [!DNL Marketo Measure] JavaScript para [!DNL Pardot] - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] JavaScript para [!DNL Pardot]
exl-id: e49190ad-aa86-4f8f-a9ed-48de9e937a7e
source-git-commit: ae5b77744d523606ce6cfcf48d7e8d5049d5ccb7
workflow-type: tm+mt
source-wordcount: '244'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] JavaScript para [!DNL Pardot] {#adding-marketo-measure-javascript-to-pardot}

[!DNL Pardot] os formulários exigem manuseio adicional dentro do modelo de formulário, além de colocar script no site para [!DNL Marketo Measure] para reconhecer os envios de formulário. O processo é simples; só é necessário colocar a variável [!DNL Marketo Measure] script de rastreamento no [!DNL Pardot] modelo de formulário.

## Instruções passo a passo {#step-by-step-instructions}

Depois de fazer logon no [!DNL Pardot] siga as etapas abaixo.

1. Navegar para **[!UICONTROL Marketing]**.

1. Clique em **[!UICONTROL Páginas de aterrissagem]**.

1. Selecionar **[!UICONTROL Modelo de layout]**.

   ![](assets/1-3.png)

1. Determine o modelo de layout apropriado e clique em **[!UICONTROL Editar]** à direita.

   ![](assets/2-1.png)

1. Copie e cole o [!DNL Marketo Measure] Código JavaScript antes da tag de fechamento de cabeçalho na página do HTML.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Siga estas etapas para todos os modelos de layout de página inicial aplicáveis.

1. Certifique-se de que o [!DNL Marketo Measure] O JavaScript também está na página geral do site.

   No [!DNL Pardot] Modelo de layout, o código terá esta aparência:

```text
<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>
   </head>
   <body>
```

## Observações adicionais {#additional-notes}

Se a variável [!DNL Pardot] O IFrame tem a seguinte tag de HTML:

`<base href="http://go.pardot.com">`

_E_ o próprio IFrame está, na verdade, em uma página segura (HTTPS) em vez de uma página não segura (HTTP), quando tentamos carregar nosso script no [!DNL Pardot] SeRame, o navegador tentará carregar uma versão HTTP do seu script em uma página HTTPS que falhará e nos impedirá de rastrear. A solução é atualizar o script no [!DNL Pardot] IFrame para carregar a versão segura do seu script:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

Além disso, já pode haver outros trechos de código de rastreamento nessa área, como um [!DNL Google Analytics] código. Certifique-se de separá-los por ponto e vírgula `;` e um espaço único, como mostrado neste exemplo:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="othercode_example" src="otherfile_example.js" ></script>`
