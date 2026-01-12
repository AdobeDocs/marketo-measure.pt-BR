---
description: Adicionando [!DNL Marketo Measure] a [!DNL Hubspot] - [!DNL Marketo Measure]
title: Adicionando [!DNL Marketo Measure] a [!DNL Hubspot]
exl-id: 633e7ef7-7959-461e-881f-dcc543595b66
feature: Tracking
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '179'
ht-degree: 1%

---


# Adicionando [!DNL Marketo Measure] a [!DNL Hubspot] {#adding-marketo-measure-to-hubspot}

Saiba como adicionar o JavaScript [!DNL Marketo Measure] para rastrear suas páginas de aterrissagem e envios de formulários do [!DNL Hubspot].

O Hubspot é um pouco diferente de outros sistemas de automação de marketing, pois pode hospedar suas páginas/formulários de aterrissagem E seu site. É importante observar que as instruções abaixo são para ter [!DNL Marketo Measure] atividade de faixa em [!DNL Hubspot] páginas hospedadas. Se você habilitar seu site com um CMS diferente de [!DNL Hubspot] (por exemplo, Wordpress), também precisará adicionar o JavaScript [!DNL Marketo Measure] a esse CMS.

>[!NOTE]
>Se você estiver implantando a JavaScript por meio de um provedor de gerenciamento de tags, como o [!DNL Google Tag Manager], não será necessário colocar manualmente o código rígido da JavaScript [!DNL Marketo Measure] no seu site.

## Introdução {#getting-started}

Depois de fazer logon na conta do [!DNL Hubspot], siga estas etapas.

1. Navegue até Conteúdo.

1. Clique em **[!UICONTROL Configurações de Conteúdo]**.

1. Em [!UICONTROL Configurações de Conteúdo], clique no Cabeçalho do Site HTML (veja a imagem abaixo).

1. Adicione o script a seguir em seu `<header>`:

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

   Deve ter esta aparência:

```text
<!-- Marketo Measure Javascript -->
<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="">
```

>[!TIP]
>Pode já existir outros trechos de código de rastreamento nessa área, como um código Google Analytics. Certifique-se de separá-los por ponto-e-vírgula `;` e um único espaço, assim:
>`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>; <script async="true" type="someothercode" src="someotherfile.js" ></script>`
