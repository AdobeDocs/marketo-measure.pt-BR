---
unique-page-id: 18874755
description: Adição de [!DNL Marketo Measure] para [!DNL Marketo] Páginas de aterrissagem - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] para páginas de aterrissagem do Marketo
exl-id: 3771d4d2-8723-452a-b23d-cea3b11ab9ee
source-git-commit: 82cc8269bfdb26b6acf039d0ce0e06564f5e2612
workflow-type: tm+mt
source-wordcount: '230'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] para páginas de aterrissagem do Marketo {#adding-marketo-measure-to-marketo-landing-pages}

Saiba como adicionar rastreamento ao [!DNL Marketo Engage] Páginas de aterrissagem, pois elas exigem manuseio adicional. [!DNL Marketo Measure] O JavaScript precisa estar em vigor na Landing Page e na variável [!DNL Marketo Engage] próprio formulário. Para fazer isso, você precisará carregar a variável [!DNL Marketo Measure] JavaScript em [!DNL Marketo Engage] conforme explicado nas instruções seguintes.

>[!NOTE]
>
>Se você estiver implantando o JavaScript por meio de um provedor de gerenciamento de tags, como [!DNL Google Tag Manager], não é necessário adicionar manualmente [!DNL Marketo Measure] JS para [!DNL Marketo Engage].

## Como adicionar [!DNL Marketo Measure] Script para [!DNL Marketo Engage] Páginas de aterrissagem {#how-to-add-marketo-measure-script-to-marketo-engage-landing-pages}

1. Faça logon no [!DNL Marketo Engage] conta.
1. Selecione a landing page e clique em **[!UICONTROL Editar rascunho]**.
1. Arraste o elemento HTML.
1. Insira o [!DNL Marketo Measure] JavaScript no [!UICONTROL cabeça] seção:

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

Exemplo na captura de tela abaixo

1. Clique em **[!UICONTROL Salvar]**.

   ![](assets/adding-bizible-to-marketo-landing-pages-1.png)

## Observações adicionais {#additional-notes}

* Você já pode ter outros trechos do código de rastreamento em vigor, como um [!DNL Google Analytics] código. Não há problema com isso, só certifique-se de separá-los com um ponto e vírgula `;` e um espaço único. Um exemplo do que isso pareceria é:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="someothercode" src="someotherfile.js" ></script>`

* É provável que você tenha vários modelos de Landing page em uso, certifique-se de adicionar o código a todos os modelos que têm formulários neles.

* Às vezes, ao editar o modelo para landing pages, é necessário aprovar novamente as páginas nas quais a landing page é usada. Este artigo explica [como aprovar em massa](https://experienceleague.adobe.com/docs/marketo/using/product-docs/demand-generation/landing-pages/landing-page-actions/approve-multiple-landing-pages-at-once.html){target=&quot;_blank&quot;}.
