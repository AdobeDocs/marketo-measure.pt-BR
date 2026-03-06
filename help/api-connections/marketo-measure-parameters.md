---
description: '[!DNL Marketo Measure] Parâmetros - [!DNL Marketo Measure]'
title: Parâmetros do [!DNL Marketo Measure]
exl-id: d66b9864-0d7e-455a-ae20-cca555f4d8c8
feature: APIs, Integration, UTM Parameters
source-git-commit: 7a4661c8d42214d32e5360dc45d6d880b08ef37c
workflow-type: tm+mt
source-wordcount: '243'
ht-degree: 64%

---


# Parâmetros do [!DNL Marketo Measure] {#marketo-measure-parameters}

## Explicação sobre parâmetros do [!DNL Marketo Measure] {#marketo-measure-parameters-explained}

Para obter mais insight com o uso de UTMs, o [!DNL Marketo Measure] anexa parâmetros personalizados aos seus anúncios no [!DNL Google] AdWords, Bing Ads e [!DNL Facebook] Anúncios. [!DNL Marketo Measure] O integra-se a essas plataformas para automatizar a maior parte do processo de configuração. Se você optar por usar a marcação automática, o [!DNL Marketo Measure] anexará automaticamente seus parâmetros às URLs de seus anúncios. [!DNL Marketo Measure] O também baixará automaticamente seus custos de marketing das plataformas e os carregará no aplicativo [!DNL Marketo Measure].

Exemplo de um URL sem parâmetros:

`http://adobe.com/landing-page?myParam=foo`

Exemplo de um URL com parâmetros do [!DNL Marketo Measure]:

`http://adobe.com/landing-page?myParam=foo&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

## Parâmetros do AdWords {#adwords-parameters}

* `_bk={keyword}`
   * Representa a palavra-chave que a pessoa usou no mecanismo de pesquisa.
   * É semelhante ao parâmetro de termos do UTM.

* `_bt={creative}`
   * Representa a ID criativa ou o nome.
   * É semelhante ao parâmetro de conteúdo do UTM.

* `_bm={matchtype}`
   * Representa com que proximidade a palavra-chave foi correspondida.
   * Os tipos de correspondência de palavra-chave ajudam a controlar quais pesquisas acionam seu anúncio. Por exemplo, você pode usar uma correspondência ampla para mostrar seu anúncio a um público-alvo geral ou usar uma correspondência exata para focar em grupos específicos de clientes.
   * Os três tipos de correspondência são: ampla, difusa e exata.

>[!TIP]
>Para obter mais informações sobre tipos de correspondência, [aqui está um artigo relevante do AdWords](https://support.google.com/adwords/answer/2497836?hl=en){target="_blank"}.

* `_bn={network}`
   * Representa o tipo de rede de publicidade - [exibição ou pesquisa](https://support.google.com/adwords/answer/1752334?hl=en){target="_blank"}.
   * Isto é semelhante ao parâmetro UTM de origem.

* `_bg={adgroupID}`
   * Representa a ID do grupo de anúncios ao qual o anúncio pertence

>[!NOTE]
>Não oferecemos suporte a parâmetros de URL de redirecionamento.

## Parâmetros de anúncios do Bing {#bing-ads-parameters}

* `_bt={adid}`
* `utm_medium=cpc`
* `utm_source=bing`
* `utm_term={keyword}`

## Parâmetros do Facebook {#facebook-parameters}

* `_bf ={creative}`
   * Isto representa a ID criativa ou o nome
