---
description: Práticas recomendadas para conexões de API - [!DNL Marketo Measure]
title: Práticas recomendadas para conexões de API
exl-id: b8550e4e-a567-427f-b5d3-50232553a066
feature: APIs, Integration
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '736'
ht-degree: 2%

---

# Práticas recomendadas para conexões de API {#best-practices-for-api-connections}

## Visão geral {#overview}

[!DNL Marketo Measure] oferece conexões de API com o [!DNL Google AdWords], [!DNL Microsoft Bing Ads], [!DNL Facebook Ads]e LinkedIn. Essas conexões de API ativam [!DNL Marketo Measure] para obter uma variedade de dados de suas plataformas de anúncios que podem ser relatados nos dados do ponto de contato do comprador. Um recurso importante dessas conexões de API é a capacidade de obter dados de gastos automaticamente, economizando tempo e esforço da sua equipe em fazer upload manual de dados para relatórios de ROI. A configuração dessas conexões de API não é obrigatória para [!DNL Marketo Measure] para rastrear esses canais, mas fornecem detalhes granulares valiosos que aprimoram seus relatórios.

A variável [!DNL Marketo Measure] As conexões de API são um aspecto inestimável de sua conta, e nossas práticas recomendadas ajudarão você e sua equipe a utilizar nossas conexões o máximo possível.

## Prática recomendada {#best-practice}

Independentemente da plataforma de publicidade que você estiver conectando, as seguintes diretrizes são importantes para ter em mente!

* Usar um administrador para se conectar
* É possível conectar várias contas de anúncios para uma plataforma
* Conecte todas as contas de publicidade possíveis para automatizar seus relatórios de gastos o máximo possível
* Se disponível, sempre implemente um template de rastreamento. O modelo garante que, mesmo se a conta de anúncio se desconectar, [!DNL Marketo Measure] ainda é capaz de obter detalhes de anúncios granulares

Para otimizar cada [!DNL Marketo Measure] da API, siga as seguintes práticas recomendadas.

**[!DNL Facebook]**: Conectar com marcação automática

Antes de ativar a marcação automática, exporte o histórico de anúncios para um csv. Ativar a marcação automática redefinirá o histórico de conversão e a prova social de todos os anúncios marcados por [!DNL Marketo Measure].

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] [!DNL Facebook] A API poderá:

* Marcar tudo automaticamente [!DNL Facebook] Anúncios com os anúncios necessários [!DNL Marketo Measure] parâmetro `_bf ={creative}`
* Baixar informações de custo de anúncio em todos os ativos [!DNL Facebook] anúncios

>[!NOTE]
>
>Não há modelo de rastreamento para [!DNL Facebook], a API depende do parâmetro com tag automática (_bf) para coletar os detalhes do anúncio.

**AdWord**: implemente um modelo de rastreamento no nível da conta e ative a marcação automática

[!DNL Marketo Measure] A recomenda o uso de um modelo de Rastreamento no nível da conta, do nível da campanha ou do nível do grupo de anúncios, pois ele permite a adição e a subtração de parâmetros para todos os anúncios, sem o risco de interrupções ou exclusão do Histórico de anúncios.

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] A API do AdWords poderá:

* Marcar automaticamente todos os anúncios do AdWords com o [!DNL Marketo Measure] parâmetros de `_bk={keyword}, _bt={creative}, _bm={matchtype}, _bn={network}, _bg={adgroupID}`
* Baixar informações sobre custos de anúncios em todos os anúncios ativos do AdWords

**Bing**: implemente um modelo de rastreamento no nível da conta e ative a marcação automática

Não há risco de perder o histórico do anúncio ao configurar seu [!DNL Bing] Conexão de API, diferente de algumas de nossas outras conexões de API.

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] A API do Bing poderá:
* Marcar automaticamente todos os Bing Ads com os seguintes parâmetros de `_bt={adid}, utm_medium=cpc, utm_source=bing, utm_term={keyword}`
* Baixar informações de custo de anúncio em todos os anúncios ativos do Bing

**LinkedIn**: Conectar com marcação automática

A ativação da marcação automática recria um compartilhamento e o coloca em uma nova Creative, a Creative antiga é arquivada.

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] A API do linkedIn poderá:

* Marque automaticamente todos os anúncios do LinkedIn que são do tipo de anúncio Conteúdo patrocinado com o necessário [!DNL Marketo Measure] parameter _bl={creativeId}. Esse parâmetro é extraído da ID criativa, permitindo [!DNL Marketo Measure] para resolver a campanha e as informações criativas.
* Baixar informações sobre custos de anúncios em todas as versões ativas e compatíveis [!DNL LinkedIn] anúncios

>[!NOTE]
>
>Não há modelo de rastreamento para [!DNL LinkedIn], a API depende do parâmetro de marcação automática (_bl) para coletar todos os detalhes de anúncios possíveis.

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Embora seguir nossas práticas recomendadas proteja você de perder dados se desconectado, ainda recomendamos que você analise sua conexão regularmente, mensalmente, se possível. Esta é uma verificação visual simples do [!UICONTROL Conexões] seção no seu [!DNL Marketo Measure] aplicativo para certificar-se de que não há ícones de chave vermelha presentes, sinalizando uma conta desconectada.

Quando uma conta conectada à API é desconectada, [!DNL Marketo Measure] O não pode obter dados de gastos no ou marcar novos anúncios. É por isso que sempre recomendamos a implementação de um template de rastreamento, se possível. O modelo garante que, mesmo se a conta de anúncio se desconectar, [!DNL Marketo Measure] O ainda pode marcar os anúncios e obter detalhes granulares dos anúncios. Depois de reconectados, os dados gastos serão preenchidos novamente e a interrupção dos relatórios de Canal pago será mínima.

Os motivos para desconexão e reautorização incluem...

* Alteração na senha da conta de pessoa que está conectada
* Essa pessoa não está mais na empresa
* Atualizações das APIs

Se sua equipe tiver passado por qualquer um dos cenários acima, verifique as conexões de API na [!DNL Marketo Measure] para garantir que eles não precisem ser reautorizados.

>[!MORELIKETHIS]
>
>* [Plataformas de publicidade integradas (APIs)](/help/api-connections/utilizing-marketo-measures-api-connections/integrated-ad-platforms.md)
>* [Como as ferramentas de gerenciamento de ofertas afetam [!DNL Marketo Measure]](/help/api-connections/utilizing-marketo-measures-api-connections/how-bid-management-tools-affect-marketo-measure.md)
>* [[!DNL Marketo Measure] Parâmetros de API explicados](/help/api-connections/utilizing-marketo-measures-api-connections/marketo-measure-parameters.md)
>* [Visão geral da API do facebook](/help/api-connections/utilizing-marketo-measures-api-connections/facebook-api.md)
>* [[!DNL LinkedIn] Visão geral da integração](/help/api-connections/utilizing-marketo-measures-api-connections/linkedin-integration.md)
>* [Visão geral da integração do AdWords](/help/api-connections/utilizing-marketo-measures-api-connections/understanding-marketo-measure-adwords-tagging.md)
>* [Reautorizar contas da API conectadas](/help/api-connections/utilizing-marketo-measures-api-connections/reauthorizing-connected-accounts.md)
