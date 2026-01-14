---
description: Adicionando [!DNL Marketo Measure] à orientação das Páginas de Aterrissagem do Marketo para usuários do Marketo Measure
title: Adição de [!DNL Marketo Measure] para páginas de destino do Marketo
exl-id: 3771d4d2-8723-452a-b23d-cea3b11ab9ee
feature: Tracking
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '222'
ht-degree: 3%

---

# Adicionar [!DNL Marketo Measure] às páginas de aterrissagem do Marketo {#adding-marketo-measure-to-marketo-landing-pages}

Saiba como adicionar rastreamento às Páginas de Aterrissagem do [!DNL Marketo Engage], pois elas exigem manuseio adicional. O JavaScript [!DNL Marketo Measure] deve estar em vigor tanto na Página de Aterrissagem quanto no próprio formulário [!DNL Marketo Engage]. Para fazer isso, você precisa carregar o JavaScript [!DNL Marketo Measure] no [!DNL Marketo Engage] conforme explicado nas instruções a seguir.

>[!NOTE]
>
>Se estiver implantando a JavaScript por meio de um provedor de gerenciamento de tags, como o [!DNL Google Tag Manager], não será necessário adicionar manualmente o JS [!DNL Marketo Measure] ao [!DNL Marketo Engage].

## Como adicionar o script [!DNL Marketo Measure] às páginas de aterrissagem [!DNL Marketo Engage] {#how-to-add-marketo-measure-script-to-marketo-engage-landing-pages}

1. Faça logon em sua conta do [!DNL Marketo Engage].
1. Selecione sua página de aterrissagem e clique em **[!UICONTROL Editar rascunho]**.
1. Arraste no elemento HTML.
1. Insira o JavaScript [!DNL Marketo Measure] na seção [!UICONTROL head]:

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

Exemplo na captura de tela abaixo

1. Clique em **[!UICONTROL Salvar]**.

   ![1. Clique em Salvar.](assets/adding-pages-1.png)

## Observações adicionais {#additional-notes}

* Talvez você já tenha outros trechos de código de rastreamento em vigor, como um código [!DNL Google Analytics]. Não há problema com isso, separe-os com um ponto e vírgula `;` e um único espaço. Um exemplo de como isso seria:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="someothercode" src="someotherfile.js" ></script>`

* É provável que você tenha vários modelos de página de aterrissagem em uso. Certifique-se de adicionar o código a todos os modelos que contêm formulários.

* Às vezes, ao editar o template para landing pages, você deve reaprovar as páginas usadas pela landing page. Este artigo explica [como aprovar](https://experienceleague.adobe.com/docs/marketo/using/product-docs/demand-generation/landing-pages/landing-page-actions/approve-multiple-landing-pages-at-once.html?lang=pt-BR){target="_blank"} em massa.
