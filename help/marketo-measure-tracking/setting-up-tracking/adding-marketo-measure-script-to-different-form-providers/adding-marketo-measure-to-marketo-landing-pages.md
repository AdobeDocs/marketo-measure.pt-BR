---
unique-page-id: 18874755
description: Adicionando [!DNL Marketo Measure] para [!DNL Marketo] Landing Pages - [!DNL Marketo Measure]
title: Adição de [!DNL Marketo Measure] para landing pages do Marketo
exl-id: 3771d4d2-8723-452a-b23d-cea3b11ab9ee
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '213'
ht-degree: 3%

---

# Adicionando [!DNL Marketo Measure] para as páginas de aterrissagem do Marketo {#adding-marketo-measure-to-marketo-landing-pages}

Saiba como adicionar rastreamento ao [!DNL Marketo Engage] Landing Pages, pois exigem manuseio adicional. [!DNL Marketo Measure] O JavaScript deve estar em vigor na Landing Page e no [!DNL Marketo Engage] forma própria. Para fazer isso, é necessário carregar o [!DNL Marketo Measure] JavaScript no [!DNL Marketo Engage] como explicado nas instruções seguintes.

>[!NOTE]
>
>Se estiver implantando o JavaScript por meio de um provedor de gerenciamento de tags, como [!DNL Google Tag Manager], não é necessário adicionar manualmente [!DNL Marketo Measure] JS para [!DNL Marketo Engage].

## Como adicionar [!DNL Marketo Measure] Script para [!DNL Marketo Engage] Landing Pages {#how-to-add-marketo-measure-script-to-marketo-engage-landing-pages}

1. Faça logon no [!DNL Marketo Engage] conta.
1. Selecione a landing page e clique em **[!UICONTROL Editar rascunho]**.
1. Arraste no elemento HTML.
1. Insira o [!DNL Marketo Measure] JavaScript na [!UICONTROL head] seção:

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

Exemplo na captura de tela abaixo

1. Clique em **[!UICONTROL Salvar]**.

   ![](assets/adding-bizible-to-marketo-landing-pages-1.png)

## Observações adicionais {#additional-notes}

* Talvez você já tenha outros trechos de código de rastreamento em vigor, como um [!DNL Google Analytics] código. Não há problema com isso, separe-os com um ponto e vírgula `;` e um único espaço. Um exemplo de como isso seria:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="someothercode" src="someotherfile.js" ></script>`

* É provável que você tenha vários modelos de página de aterrissagem em uso. Certifique-se de adicionar o código a todos os modelos que contêm formulários.

* Às vezes, ao editar o template para landing pages, você deve reaprovar as páginas usadas pela landing page. Este artigo explica [como aprovar em massa](https://experienceleague.adobe.com/docs/marketo/using/product-docs/demand-generation/landing-pages/landing-page-actions/approve-multiple-landing-pages-at-once.html){target="_blank"}.
