---
unique-page-id: 18874608
description: “Parâmetros do [!DNL Marketo Measure] -  [!DNL Marketo Measure]”
title: “Parâmetros do [!DNL Marketo Measure]”
exl-id: d66b9864-0d7e-455a-ae20-cca555f4d8c8
feature: APIs, Integration, UTM Parameters
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '230'
ht-degree: 100%

---

# Parâmetros do [!DNL Marketo Measure] {#marketo-measure-parameters}

## Explicação sobre parâmetros do [!DNL Marketo Measure] {#marketo-measure-parameters-explained}

Para fornecer mais informações sobre o uso de UTMs, o [!DNL Marketo Measure] anexa parâmetros personalizados aos seus anúncios do [!DNL Google] AdWords, do Bing e do [!DNL Facebook]. O [!DNL Marketo Measure] integra-se a essas plataformas para automatizar a maior parte do processo de configuração. Se você optar por usar a marcação automática, o [!DNL Marketo Measure] anexará automaticamente os parâmetros aos URLs dos anúncios. O [!DNL Marketo Measure] também baixará automaticamente os custos de marketing das plataformas e os carregará no aplicativo do [!DNL Marketo Measure].

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
>
>Para obter mais informações sobre tipos de correspondência, [veja este artigo relevante do AdWords](https://support.google.com/adwords/answer/2497836?hl=en){target="_blank"}.

* `_bn={network}`
   * Representa o tipo de rede de publicidade - [Exibição ou pesquisa](https://support.google.com/adwords/answer/1752334?hl=en){target="_blank"}.
   * Isto é semelhante ao parâmetro UTM de origem.

* `_bg={adgroupID}`
   * Representa a ID do grupo de anúncios ao qual o anúncio pertence

>[!NOTE]
>
>Não oferecemos suporte a parâmetros de URL de redirecionamento.

## Parâmetros de anúncios do Bing {#bing-ads-parameters}

* `_bt={adid}`
* `utm_medium=cpc`
* `utm_source=bing`
* `utm_term={keyword}`

## Parâmetros do Facebook {#facebook-parameters}

* `_bf ={creative}`
   * Isto representa a ID criativa ou o nome
