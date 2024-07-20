---
description: Práticas recomendadas para conexões de API -  [!DNL Marketo Measure]
title: Práticas recomendadas para conexões de API
exl-id: b8550e4e-a567-427f-b5d3-50232553a066
feature: APIs, Integration
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '737'
ht-degree: 100%

---

# Práticas recomendadas para conexões de API {#best-practices-for-api-connections}

## Visão geral {#overview}

O [!DNL Marketo Measure] oferece conexões de API com o [!DNL Google AdWords], [!DNL Microsoft Bing Ads], [!DNL Facebook Ads] e LinkedIn. Essas conexões de API permitem que o [!DNL Marketo Measure] obtenha uma variedade de dados de suas plataformas de anúncios, os quais podem ser relatados nos dados do Buyer Touchpoint. Um recurso importante dessas conexões de API é a capacidade de obter dados de despesas automaticamente, economizando o tempo e esforço que você e sua equipe dedicam ao upload manual de dados para relatórios de ROI. Configurar essas conexões de API não é obrigatório para o [!DNL Marketo Measure] rastrear esses canais, mas elas fornecem informações valiosas que aprimoram os relatórios.

As conexões de API do [!DNL Marketo Measure] são um aspecto inestimável de sua conta e nossas práticas recomendadas ajudarão você e sua equipe a aproveitá-las ao máximo.

## Prática recomendada {#best-practice}

Independentemente da plataforma de anúncios utilizada, é importante considerar as diretrizes a seguir.

* Usar uma conta de admin para se conectar
* É possível conectar várias contas de anúncios em uma plataforma
* Conecte todas as contas de anúncios possíveis para automatizar ao máximo os relatórios de despesas
* Se disponível, sempre implemente um modelo de rastreamento. O modelo garante que, mesmo que a conta de anúncios seja desconectada, o [!DNL Marketo Measure] ainda possa obter detalhes de anúncios importantes

Para otimizar cada API do [!DNL Marketo Measure], siga as práticas recomendadas a seguir.

**[!DNL Facebook]**: conectar com o recurso de marcação automática

Antes de habilitar a marcação automática, exporte o histórico de anúncios para um CSV. Habilitar a marcação automática redefinirá o histórico de conversão e a prova social de todos os anúncios marcados pelo [!DNL Marketo Measure].

Por seguir nossas práticas recomendadas, a API do [!DNL Facebook] para [!DNL Marketo Measure] poderá:

* Marcar automaticamente todos os anúncios do [!DNL Facebook] com o parâmetro `_bf ={creative}`, necessário para o [!DNL Marketo Measure] 
* Baixar informações de custo de anúncio de todos os anúncios ativos do [!DNL Facebook] 

>[!NOTE]
>
>Não há modelo de rastreamento para o [!DNL Facebook], a API depende do parâmetro de marcação automática (_bf) para coletar os detalhes do anúncio.

**AdWords**: implemente um modelo de rastreamento no nível da conta e habilite a marcação automática

O [!DNL Marketo Measure] recomenda o uso de um modelo de rastreamento de nível de conta, de campanha ou de grupo de anúncios, pois isso permite adicionar ou remover parâmetros de todos os anúncios sem o risco de interromper ou excluir o histórico de anúncios.

Por seguir nossas práticas recomendadas, a API AdWords do [!DNL Marketo Measure] poderá:

* Marcar automaticamente todos os anúncios do AdWords com os parâmetros `_bk={keyword}, _bt={creative}, _bm={matchtype}, _bn={network}, _bg={adgroupID}` do [!DNL Marketo Measure]
* Baixar informações sobre custos de anúncios em todos os anúncios ativos do AdWords

**Bing**: implemente um modelo de rastreamento no nível da conta e habilite a marcação automática

Diferentemente do que pode acontecer ao configurar outras conexões de API, não há risco de perder o histórico de anúncios ao configurar a conexão de API do [!DNL Bing].

Por seguir nossas práticas recomendadas, a API Bing do [!DNL Marketo Measure] poderá:
* Marcar automaticamente todos os anúncios do Bing com os seguintes parâmetros de `_bt={adid}, utm_medium=cpc, utm_source=bing, utm_term={keyword}`
* Baixar informações de custo de anúncio em todos os anúncios ativos do Bing

**LinkedIn**: conecte com o recurso de marcação automática

Habilitar a marcação automática recria um compartilhamento e o insere em um novo campo de criação, enquanto o campo antigo é arquivado.

Por seguir nossas práticas recomendadas, a API LinkedIn do [!DNL Marketo Measure] poderá:

* Marcar automaticamente todos os anúncios de conteúdo patrocinado do LinkedIn com o parâmetro necessário do [!DNL Marketo Measure]: _bl={creativeId}. Esse parâmetro extrai a ID de criação, permitindo que o [!DNL Marketo Measure] resolva a campanha e as informações de criação.
* Baixar informações sobre custos de anúncio de todos os anúncios ativos e compatíveis do [!DNL LinkedIn]

>[!NOTE]
>
>Não há modelo de rastreamento para o [!DNL LinkedIn], a API depende do parâmetro de marcação automática (_bl) para coletar todos os detalhes de anúncios possíveis.

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Embora seguir nossas práticas recomendadas proteja contra a perda de dados em caso de perda de conexão, ainda recomendamos que você analise sua conexão regularmente (mensalmente, se possível).  Para isso, basta realizar uma verificação visual simples da seção [!UICONTROL Conexões] no aplicativo do [!DNL Marketo Measure] para garantir que não haja um ícone de “chave vermelha” nessa seção, o que seria o sinal de uma conta desconectada.

Ao desconectar uma conta da API, o [!DNL Marketo Measure] não pode obter dados de despesas ou marcar novos anúncios. É por isso que sempre recomendamos a implementação de um modelo de rastreamento, se possível. O modelo garante que, mesmo que a conta de anúncios seja desconectada, o [!DNL Marketo Measure] ainda possa marcar os anúncios e obter detalhes importantes. Depois de reconectada, os dados de despesas serão preenchidos novamente e a interrupção dos relatórios dos canais pagos será mínima.

Alguns motivos pelos quais a conta pode ser desconectada e necessitar de reautorização são:

* Alteração da senha da conta pessoal conectada
* Essa pessoa não está mais na empresa
* Atualizações das APIs

Se a equipe se deparar com algum dos cenários acima, verifique as conexões de API no aplicativo do [!DNL Marketo Measure] para garantir que elas não precisem ser autorizadas novamente.

>[!MORELIKETHIS]
>
>* [Plataformas de anúncios integradas (APIs)](/help/api-connections/utilizing-marketo-measures-api-connections/integrated-ad-platforms.md)
>* [Como as ferramentas de gerenciamento de lances afetam o  [!DNL Marketo Measure]](/help/api-connections/utilizing-marketo-measures-api-connections/how-bid-management-tools-affect-marketo-measure.md)
>* [[!DNL Marketo Measure] Explicação sobre parâmetros de API](/help/api-connections/utilizing-marketo-measures-api-connections/marketo-measure-parameters.md)
>* [Visão geral da API do Facebook](/help/api-connections/utilizing-marketo-measures-api-connections/facebook-api.md)
>* [[!DNL LinkedIn] Visão geral da integração](/help/api-connections/utilizing-marketo-measures-api-connections/linkedin-integration.md)
>* [Visão geral da integração do AdWords](/help/api-connections/utilizing-marketo-measures-api-connections/understanding-marketo-measure-adwords-tagging.md)
>* [Reautorizar contas de API conectadas](/help/api-connections/utilizing-marketo-measures-api-connections/reauthorizing-connected-accounts.md)
