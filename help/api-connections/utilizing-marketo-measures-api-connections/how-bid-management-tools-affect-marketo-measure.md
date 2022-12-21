---
unique-page-id: 18874720
description: Como as ferramentas de gerenciamento de lances afetam [!DNL Marketo Measure] - [!DNL Marketo Measure] - Documentação do produto
title: Como as ferramentas de gerenciamento de lances afetam [!DNL Marketo Measure]
exl-id: 67c00ad9-8b12-4238-8a1f-2d2f5ed04423
source-git-commit: 65e7f8bc198ceba2f873ded23c94601080ad0546
workflow-type: tm+mt
source-wordcount: '267'
ht-degree: 0%

---

# Como as ferramentas de gerenciamento de lances afetam [!DNL Marketo Measure] {#how-bid-management-tools-affect-marketo-measure}

Saiba como as plataformas de gerenciamento de lances afetam o [!DNL Marketo Measure] capacidade de rastrear AdWords e BingAds, juntamente com como configurar modelos de rastreamento com nossos parâmetros para garantir que tudo rastreie corretamente.

Kenshoo e Marin são excelentes ferramentas que permitem aos profissionais de marketing rastrear, gerenciar e otimizar suas campanhas publicitárias com diferentes mecanismos de pesquisa. Para [!DNL Marketo Measure] para serem anexados a esses URLs de publicidade, você precisará configurar um modelo de rastreamento com nosso [!DNL Marketo Measure] parâmetros. Não é possível conectar suas plataformas de publicidade ao seu [!DNL Marketo Measure] e ativar a marcação automática conforme causa a variável [!DNL Marketo Measure] sistema de marcação para competir com o sistema de marcação do Kenshoo/Marin. Isso faz com que nossos parâmetros sejam alterados e anexados incorretamente. Para contornar isso, rastreie modelos com [!DNL Marketo Measure] parâmetros precisam ser configurados no Kenshoo e Marin.

## Para [!DNL Adwords] Contas {#for-adwords-accounts}

Configure um modelo de rastreamento da seguinte maneira:

* Clique no botão **[!UICONTROL Campanhas]** guia .
* Clique no botão **[!UICONTROL Biblioteca compartilhada]** na barra de navegação lateral.
* Clique em **Opções de URL**.
* Ao lado de &quot;Modelo de rastreamento&quot;, clique em **Editar**.
* Preencha o URL:

   * Se TODOS os URLs de publicidade tiverem um &quot;?&quot; neles, use este URL:
      * `{lpurl}&_bk={keyword}&_bt={creative}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`
   * Se NENHUM dos URLs de publicidade tiver um &quot;?&quot; neles, use este URL:
      * `{lpurl}?_bk={keyword}&_bt={creative}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`


## Para [!DNL Bing Ads] Contas {#for-bing-ads-accounts}

Configure um modelo de rastreamento da seguinte maneira:

* Clique no botão **[!UICONTROL Campanhas]** guia .
* Clique no botão **[!UICONTROL Biblioteca compartilhada]** na barra de navegação lateral.
* Clique em **Opções de URL**.
* Ao lado de &quot;Modelo de rastreamento&quot;, clique em **Editar**.
* Preencha o URL:

   * Se TODOS os URLs de publicidade tiverem um &quot;?&quot; neles, use este URL:
      * `{lpurl}&_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`
   * Se NENHUM dos URLs de publicidade tiver um &quot;?&quot; neles, use este URL:
      * `{lpurl}?_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`
