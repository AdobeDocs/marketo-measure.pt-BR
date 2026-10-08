---
unique-page-id: 18874720
description: Como as ferramentas de gerenciamento de ofertas afetam [!DNL Marketo Measure] - [!DNL Marketo Measure]
title: Como as ferramentas de gerenciamento de ofertas afetam o [!DNL Marketo Measure]
exl-id: 67c00ad9-8b12-4238-8a1f-2d2f5ed04423
feature: APIs, Integration, UTM Parameters
TQID: 'https://experienceleague.adobe.com/gcugeRrHUi4qetrYBpUavRyrBHVpB0qCzPo4OYMI4hw'
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: fb43f4c1-87d9-4081-8df1-6fe7e6e5cdc8
    internal-label: APIs
  - id: 7da342c5-06ee-5869-b3e8-b73d5bf75a9d
    internal-label: Integration
  - id: 3968a9c0-3e19-5a76-a1f0-f5a9a986c53a
    internal-label: UTM Parameters
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '265'
ht-degree: 0%
---
# Como as ferramentas de gerenciamento de ofertas afetam o [!DNL Marketo Measure] {#how-bid-management-tools-affect-marketo-measure}

Saiba como as plataformas de gerenciamento de ofertas afetam a capacidade do [!DNL Marketo Measure] de rastrear o AdWords e o BingAds, além de como configurar modelos de rastreamento com nossos parâmetros para garantir que tudo seja rastreado corretamente.

Kenshoo e Marin são excelentes ferramentas que permitem aos profissionais de marketing rastrear, gerenciar e otimizar suas campanhas de anúncios com diferentes mecanismos de pesquisa. Para que os parâmetros [!DNL Marketo Measure] sejam anexados a essas URLs de anúncios, será necessário configurar um modelo de rastreamento com nossos parâmetros [!DNL Marketo Measure]. Não é possível conectar suas plataformas de anúncios à conta do [!DNL Marketo Measure] e habilitar a marcação automática, pois isso faz com que o sistema de marcação [!DNL Marketo Measure] concorra com o sistema de marcação do Kenshoo/Marin. Isso faz com que nossos parâmetros sejam alterados e anexados incorretamente. Para contornar isso, os modelos de rastreamento com [!DNL Marketo Measure] parâmetros precisam ser configurados no Kenshoo e no Marin.

## Para Contas [!DNL Adwords] {#for-adwords-accounts}

Configure um template de rastreamento da seguinte maneira:

* Clique na guia **[!UICONTROL Campanhas]**.
* Clique no link **[!UICONTROL Biblioteca compartilhada]** na barra de navegação lateral.
* Clique em **Opções de URL**.
* Ao lado de &quot;Modelo de rastreamento&quot;, clique em **Editar**.
* Preencha o URL:

  * Se TODOS os URLs de anúncios tiverem um &quot;?&quot; nelas, use este URL:
    * `{lpurl}&_bk={keyword}&_bt={creative}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`
  * Se NENHUM dos URLs de anúncios tiver um &quot;?&quot; nelas, use este URL:
    * `{lpurl}?_bk={keyword}&_bt={creative}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`


## Para Contas [!DNL Bing Ads] {#for-bing-ads-accounts}

Configure um template de rastreamento da seguinte maneira:

* Clique na guia **[!UICONTROL Campanhas]**.
* Clique no link **[!UICONTROL Biblioteca compartilhada]** na barra de navegação lateral.
* Clique em **Opções de URL**.
* Ao lado de &quot;Modelo de rastreamento&quot;, clique em **Editar**.
* Preencha o URL:

  * Se TODOS os URLs de anúncios tiverem um &quot;?&quot; nelas, use este URL:
    * `{lpurl}&_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`
  * Se NENHUM dos URLs de anúncios tiver um &quot;?&quot; nelas, use este URL:
    * `{lpurl}?_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`
