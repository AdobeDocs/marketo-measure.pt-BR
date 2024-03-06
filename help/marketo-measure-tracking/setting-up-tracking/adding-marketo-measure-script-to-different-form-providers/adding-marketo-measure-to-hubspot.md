---
unique-page-id: 18874759
description: Adicionando [!DNL Marketo Measure] para [!DNL Hubspot] - [!DNL Marketo Measure]
title: Adicionando [!DNL Marketo Measure] para [!DNL Hubspot]
exl-id: 633e7ef7-7959-461e-881f-dcc543595b66
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '179'
ht-degree: 1%

---

# Adicionando [!DNL Marketo Measure] para [!DNL Hubspot] {#adding-marketo-measure-to-hubspot}

Saiba como adicionar o [!DNL Marketo Measure] JavaScript para rastrear seu [!DNL Hubspot] páginas de aterrissagem e envios de formulários.

O Hubspot é um pouco diferente de outros sistemas de automação de marketing, pois pode hospedar suas páginas/formulários de aterrissagem E seu site. É importante observar que as instruções abaixo são para ter [!DNL Marketo Measure] rastrear atividade em [!DNL Hubspot]Páginas hospedadas pelo. Se você potencializar seu site com um CMS diferente de [!DNL Hubspot] (por exemplo, Wordpress), é necessário adicionar a variável [!DNL Marketo Measure] JavaScript para esse CMS também.

>[!NOTE]
>
>Se estiver implantando o JavaScript por meio de um provedor de gerenciamento de tags, como [!DNL Google Tag Manager], não é necessário codificar manualmente o [!DNL Marketo Measure] JavaScript no seu site.

## Introdução {#getting-started}

Depois de fazer logon no [!DNL Hubspot] conta, siga estas etapas.

1. Navegue até Conteúdo.

1. Clique em **[!UICONTROL Configurações de conteúdo]**.

1. Dentro de [!UICONTROL Configurações de conteúdo], clique no HTML do Cabeçalho do Site (veja a imagem abaixo).

1. Adicione o script a seguir em seu `<header>`:

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

   Deve ter esta aparência:

```text
<!-- Marketo Measure Javascript -->
<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="">
```

>[!TIP]
>
>Pode já haver outros trechos de código de rastreamento nesta área, como um código Google Analytics. Certifique-se de separá-los por ponto e vírgula `;` e um único espaço, assim:
>
>`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="someothercode" src="someotherfile.js" ></script>`
