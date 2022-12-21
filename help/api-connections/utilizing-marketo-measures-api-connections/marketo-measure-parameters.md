---
unique-page-id: 18874608
description: "[!DNL Marketo Measure] Parâmetros - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Parâmetros"
exl-id: d66b9864-0d7e-455a-ae20-cca555f4d8c8
source-git-commit: 65e7f8bc198ceba2f873ded23c94601080ad0546
workflow-type: tm+mt
source-wordcount: '239'
ht-degree: 0%

---

# [!DNL Marketo Measure] Parâmetros {#marketo-measure-parameters}

## [!DNL Marketo Measure] Parâmetros explicados {#marketo-measure-parameters-explained}

Para obter mais informações sobre o uso de UTMs, [!DNL Marketo Measure] anexa parâmetros personalizados a suas publicidades em [!DNL Google] AdWords, Bing Ads e [!DNL Facebook] Anúncios. [!DNL Marketo Measure] O integra-se com essas plataformas para automatizar a maioria do processo de configuração. Se você optar por usar a marcação automática, [!DNL Marketo Measure] O anexará automaticamente seus parâmetros aos URLs de suas publicidades. [!DNL Marketo Measure] também baixará automaticamente os custos de marketing das plataformas e os carregará no [!DNL Marketo Measure] aplicativo.

Exemplo de um URL sem parâmetros:

`http://adobe.com/landing-page?myParam=foo`

Exemplo de um URL com [!DNL Marketo Measure] parâmetros:

`http://adobe.com/landing-page?myParam=foo&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

## Parâmetros do AdWords {#adwords-parameters}

* `_bk={keyword}`
   * Representa a palavra-chave que a pessoa usou no mecanismo de pesquisa.
   * É semelhante ao parâmetro de termo UTM.

* `_bt={creative}`
   * Representa a ID ou o nome criativo.
   * É semelhante ao parâmetro de conteúdo da UTM.

* `_bm={matchtype}`
   * Representa o grau de correspondência da palavra-chave.
   * Os tipos de correspondência de palavras-chave ajudam a controlar quais pesquisas acionam sua publicidade. Por exemplo, você pode usar uma ampla correspondência para mostrar sua publicidade para um público-alvo amplo ou pode usar a correspondência exata para participar de grupos específicos de clientes.
   * Os três tipos de correspondência são: amplo, difuso e exato.

>[!NOTE]
>
>Para obter mais informações sobre tipos de correspondência, [este é um artigo relevante do AdWords](https://support.google.com/adwords/answer/2497836?hl=en){target=&quot;_blank&quot;}.

* `_bn={network}`
   * Representa o tipo de rede de anúncios - [exibir ou pesquisar](https://support.google.com/adwords/answer/1752334?hl=en){target=&quot;_blank&quot;}.
   * Isso é semelhante ao parâmetro de origem da UTM.

* `_bg={adgroupID}`
   * Representa a ID do Grupo de publicidade ao qual a publicidade pertence

## Parâmetros do Bing Ads {#bing-ads-parameters}

* `_bt={adid}`
* `utm_medium=cpc`
* `utm_source=bing`
* `utm_term={keyword}`

## Parâmetros facebook {#facebook-parameters}

* `_bf ={creative}`
   * Representa a ID ou o nome da criação
