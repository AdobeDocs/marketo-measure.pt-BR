---
unique-page-id: 18874608
description: "[!DNL Marketo Measure] Parâmetros - [!DNL Marketo Measure]"
title: "[!DNL Marketo Measure] Parâmetros"
exl-id: d66b9864-0d7e-455a-ae20-cca555f4d8c8
feature: APIs, Integration, UTM Parameters
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '230'
ht-degree: 0%

---

# Parâmetros do [!DNL Marketo Measure] {#marketo-measure-parameters}

## [!DNL Marketo Measure] Parâmetros explicados {#marketo-measure-parameters-explained}

Para obter mais informações sobre a utilização de MTU, [!DNL Marketo Measure] anexa parâmetros personalizados aos seus anúncios no [!DNL Google] AdWords, Bing Ads e [!DNL Facebook] Anúncios. [!DNL Marketo Measure] O integra-se a essas plataformas para automatizar a maior parte do processo de configuração. Se você optar por usar a marcação automática, [!DNL Marketo Measure] O anexará automaticamente os parâmetros aos URLs dos anúncios. [!DNL Marketo Measure] também baixará automaticamente seus custos de marketing das plataformas e os carregará na [!DNL Marketo Measure] aplicativo.

Exemplo de um URL sem parâmetros:

`http://adobe.com/landing-page?myParam=foo`

Exemplo de um URL com [!DNL Marketo Measure] parâmetros:

`http://adobe.com/landing-page?myParam=foo&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

## Parâmetros do AdWords {#adwords-parameters}

* `_bk={keyword}`
   * Representa a palavra-chave que a pessoa usou no mecanismo de pesquisa.
   * É semelhante ao parâmetro de termo UTM.

* `_bt={creative}`
   * Representa a ID criativa ou o nome.
   * É semelhante ao parâmetro de conteúdo UTM.

* `_bm={matchtype}`
   * Representa com que proximidade a palavra-chave foi correspondida.
   * Os tipos de correspondência de palavra-chave ajudam a controlar quais pesquisas acionam seu anúncio. Por exemplo, você pode usar uma ampla correspondência para mostrar seu anúncio para um amplo público ou usar uma correspondência exata para focalizar grupos específicos de clientes.
   * Os três tipos de correspondência são: amplo, difuso e exato.

>[!TIP]
>
>Para obter mais informações sobre tipos de correspondência, [aqui está um artigo relevante do AdWords](https://support.google.com/adwords/answer/2497836?hl=en){target="_blank"}.

* `_bn={network}`
   * Representa o tipo de rede de anúncios - [exibir ou pesquisar](https://support.google.com/adwords/answer/1752334?hl=en){target="_blank"}.
   * É semelhante ao parâmetro Origem UTM.

* `_bg={adgroupID}`
   * Representa a ID do grupo de anúncios ao qual o anúncio pertence

>[!NOTE]
>
>Não oferecemos suporte a parâmetros de URL de redirecionamento.

## Parâmetros do Bing Ads {#bing-ads-parameters}

* `_bt={adid}`
* `utm_medium=cpc`
* `utm_source=bing`
* `utm_term={keyword}`

## Parâmetros do facebook {#facebook-parameters}

* `_bf ={creative}`
   * Representa a ID ou o nome do criativo
