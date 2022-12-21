---
unique-page-id: 18874759
description: Adição de [!DNL Marketo Measure] para [!DNL Hubspot] - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] para [!DNL Hubspot]
exl-id: 633e7ef7-7959-461e-881f-dcc543595b66
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '182'
ht-degree: 1%

---

# Adição de [!DNL Marketo Measure] para [!DNL Hubspot] {#adding-marketo-measure-to-hubspot}

Saiba como adicionar o [!DNL Marketo Measure] JavaScript para rastrear seu [!DNL Hubspot] páginas de aterrissagem e envios de formulários.

O Hubspot é um pouco diferente de outros sistemas de automação de marketing, na medida em que pode hospedar suas páginas/formulários de aterrissagem e seu site. É importante observar que as instruções abaixo são para ter [!DNL Marketo Measure] rastrear atividade em [!DNL Hubspot]Páginas hospedadas. Se você alimentar seu site com um CMS diferente de [!DNL Hubspot] (por exemplo, Wordpress), será necessário adicionar a variável [!DNL Marketo Measure] JavaScript para esse CMS também.

>[!NOTE]
>
>Se você estiver implantando o JavaScript por meio de um provedor de gerenciamento de tags, como [!DNL Google Tag Manager], não é necessário colocar manualmente o código fixo do [!DNL Marketo Measure] JavaScript no seu site.

## Introdução {#getting-started}

Depois de fazer logon no [!DNL Hubspot] siga estas etapas.

1. Navegue até Conteúdo.

1. Clique em **[!UICONTROL Configurações de conteúdo]**.

1. Within [!UICONTROL Configurações de conteúdo], clique no HTML do cabeçalho do site (veja a imagem abaixo).

1. Adicione o seguinte script em `<header>`:

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

   Deve ser assim:

```text
<!-- Marketo Measure Javascript -->
<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="">
```

>[!TIP]
>
>Já pode haver outros trechos do código de rastreamento nessa área, como um código Google Analytics. Certifique-se de separá-los por ponto e vírgula `;` e um espaço único, assim:
>
>`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="someothercode" src="someotherfile.js" ></script>`
