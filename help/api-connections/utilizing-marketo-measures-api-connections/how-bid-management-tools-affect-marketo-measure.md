---
unique-page-id: 18874720
description: Como as ferramentas de gerenciamento de ofertas afetam [!DNL Marketo Measure] - [!DNL Marketo Measure]
title: Como as ferramentas de gerenciamento de lances afetam [!DNL Marketo Measure]
exl-id: 67c00ad9-8b12-4238-8a1f-2d2f5ed04423
feature: APIs, Integration, UTM Parameters
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '265'
ht-degree: 1%

---

# Como as ferramentas de gerenciamento de ofertas afetam [!DNL Marketo Measure] {#how-bid-management-tools-affect-marketo-measure}

Saiba como as plataformas de gerenciamento de ofertas afetam o [!DNL Marketo Measure] A capacidade de rastrear AdWords e BingAds, juntamente com a configuração de modelos de rastreamento com nossos parâmetros para garantir que tudo seja rastreado corretamente.

Kenshoo e Marin são excelentes ferramentas que permitem aos profissionais de marketing rastrear, gerenciar e otimizar suas campanhas de anúncios com diferentes mecanismos de pesquisa. A fim de [!DNL Marketo Measure] parâmetros a serem anexados a esses URLs de anúncios, será necessário configurar um modelo de rastreamento com nosso [!DNL Marketo Measure] parâmetros. Não é possível conectar suas plataformas de anúncios à [!DNL Marketo Measure] e habilite a marcação automática, pois causa a falha do [!DNL Marketo Measure] para competir com o sistema de marcação do Kenshoo/Marin. Isso faz com que nossos parâmetros sejam alterados e anexados incorretamente. Para contornar isso, os modelos de rastreamento com [!DNL Marketo Measure] parâmetros precisam ser configurados no Kenshoo e no Marin.

## Para [!DNL Adwords] Contas {#for-adwords-accounts}

Configure um template de rastreamento da seguinte maneira:

* Clique em **[!UICONTROL Campanhas]** guia.
* Clique em **[!UICONTROL Biblioteca compartilhada]** na barra de navegação lateral.
* Clique em **Opções de URL**.
* Ao lado de &quot;Modelo de rastreamento&quot;, clique em **Editar**.
* Preencha o URL:

   * Se TODOS os URLs de anúncios tiverem um &quot;?&quot; nelas, use este URL:
      * `{lpurl}&_bk={keyword}&_bt={creative}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`
   * Se NENHUM dos URLs de anúncios tiver um &quot;?&quot; nelas, use este URL:
      * `{lpurl}?_bk={keyword}&_bt={creative}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`


## Para [!DNL Bing Ads] Contas {#for-bing-ads-accounts}

Configure um template de rastreamento da seguinte maneira:

* Clique em **[!UICONTROL Campanhas]** guia.
* Clique em **[!UICONTROL Biblioteca compartilhada]** na barra de navegação lateral.
* Clique em **Opções de URL**.
* Ao lado de &quot;Modelo de rastreamento&quot;, clique em **Editar**.
* Preencha o URL:

   * Se TODOS os URLs de anúncios tiverem um &quot;?&quot; nelas, use este URL:
      * `{lpurl}&_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`
   * Se NENHUM dos URLs de anúncios tiver um &quot;?&quot; nelas, use este URL:
      * `{lpurl}?_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`
