---
description: Práticas recomendadas para conexões de API - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para conexões de API
exl-id: b8550e4e-a567-427f-b5d3-50232553a066
source-git-commit: 65e7f8bc198ceba2f873ded23c94601080ad0546
workflow-type: tm+mt
source-wordcount: '740'
ht-degree: 0%

---

# Práticas recomendadas para conexões de API {#best-practices-for-api-connections}

## Visão geral {#overview}

[!DNL Marketo Measure] oferece conexões de API com [!DNL Google AdWords], [!DNL Microsoft Bing Ads], [!DNL Facebook Ads]e LinkedIn. Essas conexões de API habilitam [!DNL Marketo Measure] para obter uma variedade de dados das plataformas de anúncios que podem ser reportados nos dados do ponto de contato do comprador. Um recurso importante para essas conexões de API é a capacidade de obter dados gastos automaticamente, economizando tempo e esforço para carregar dados manualmente para relatórios de ROI. A configuração dessas conexões de API não é obrigatória para [!DNL Marketo Measure] para rastrear esses canais, mas eles fornecem detalhes granulares valiosos que aprimoram seus relatórios.

O [!DNL Marketo Measure] As conexões de API são um aspecto inestimável de sua conta e nossas recomendações de práticas recomendadas ajudarão você e sua equipe a utilizar nossas conexões da maneira mais completa possível.

## Prática recomendada {#best-practice}

Independentemente da plataforma de anúncio que você estiver conectando, as diretrizes a seguir são importantes!

* Usar um administrador para se conectar
* Você pode conectar várias contas de anúncios para uma plataforma
* Conecte todas as contas de anúncio possíveis para automatizar o relatório de gastos o máximo possível
* Se disponível, sempre implemente um modelo de rastreamento. O modelo garante que, mesmo que a conta de anúncio seja desconectada, [!DNL Marketo Measure] ainda é capaz de obter detalhes de anúncios granulares

Otimizar cada [!DNL Marketo Measure] Por favor, siga as seguintes práticas recomendadas.

**[!DNL Facebook]**: Conectar-se com marcação automática

Antes de ativar a marcação automática, exporte seu histórico de publicidade para um csv. Ativar a marcação automática redefinirá o histórico de conversão e a prova social de todos os anúncios marcados por [!DNL Marketo Measure].

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] [!DNL Facebook] A API poderá:

* Marcar automaticamente tudo [!DNL Facebook] Anúncios com as [!DNL Marketo Measure] parâmetro `_bf ={creative}`
* Baixar informações de custo de publicidade em todas as atividades ativas [!DNL Facebook] anúncios

>[!NOTE]
>
>Não há modelo de rastreamento para [!DNL Facebook], a API depende do parâmetro de marcação automática (_bf) para coletar os detalhes do anúncio.

**AdWords**: Implementar um modelo de rastreamento no nível da conta e ativar a marcação automática

[!DNL Marketo Measure] A recomenda usar um modelo de Rastreamento no nível da conta, da campanha ou do grupo de anúncios, pois permite a adição e a subtração de parâmetros para todos os anúncios sem o risco de interrupções ou exclusão do Histórico de anúncios.

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] A API do AdWords poderá:

* Marque automaticamente todos os anúncios do AdWords com a variável [!DNL Marketo Measure] parâmetros de `_bk={keyword}, _bt={creative}, _bm={matchtype}, _bn={network}, _bg={adgroupID}`
* Baixe informações de custo de publicidade em todos os anúncios ativos do AdWords

**Bing**: Implementar um modelo de rastreamento no nível da conta e ativar a marcação automática

Não há risco de perder o histórico de anúncios ao configurar seu [!DNL Bing] Conexão de API, diferente de algumas de nossas outras conexões de API.

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] A API do Bing poderá:
* Marque automaticamente todos os anúncios do Bing com os seguintes parâmetros de `_bt={adid}, utm_medium=cpc, utm_source=bing, utm_term={keyword}`
* Baixar informações de custo de publicidade em todos os anúncios ativos do Bing

**linkedIn**: Conectar-se com marcação automática

Habilitar a marcação automática recria um Compartilhamento e o coloca em um novo Criativo, o Criativo antigo é arquivado.

Ao seguir nossa recomendação de práticas recomendadas, a variável [!DNL Marketo Measure] A API do linkedIn poderá:

* Marque automaticamente todos os anúncios do LinkedIn que são do tipo de anúncio Conteúdo patrocinado com as [!DNL Marketo Measure] parâmetro _bl={creativeId}. Esse parâmetro obtém a ID criativa permitindo [!DNL Marketo Measure] para resolver a campanha e as informações criativas.
* Baixe informações de custo de publicidade em todas as atividades [!DNL LinkedIn] anúncios

>[!NOTE]
>
>Não há modelo de rastreamento para [!DNL LinkedIn], a API depende do parâmetro de marcação automática (_bl) para coletar todos os detalhes de anúncios possíveis.

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Embora as práticas recomendadas o protejam de perder dados, se estiverem desconectadas, recomendamos que você revise a conexão regularmente, mensalmente, se possível. Esta é uma simples verificação visual da variável [!UICONTROL Conexões] na sua seção [!DNL Marketo Measure] aplicativo para garantir que não haja ícones de chave vermelha presentes, sinalizando uma conta desconectada.

Quando uma conta conectada à API é desconectada, [!DNL Marketo Measure] O não pode inserir dados de gastos ou adicionar tags a novos anúncios. É por isso que recomendamos sempre implementar um modelo de rastreamento, se possível. O modelo garante que, mesmo que a conta de anúncio seja desconectada, [!DNL Marketo Measure] O ainda pode adicionar tags aos anúncios e obter detalhes granulares dos anúncios. Depois de reconectado, os dados de gastos serão preenchidos novamente e a interrupção no relatório de Canal pago será mínima.

Os motivos para desconexão e reautorização incluem...

* Alteração de senha para a conta de pessoa que está conectada
* Essa pessoa já não está na empresa
* Atualizações às APIs

Se a sua equipe tiver tido algum dos cenários acima, verifique as conexões de API no [!DNL Marketo Measure] para certificar-se de que eles não precisam ser reautorizados.

>[!MORELIKETHIS]
>
>* [Plataformas de anúncios integradas (APIs)](/help/api-connections/utilizing-marketo-measures-api-connections/integrated-ad-platforms.md)
>* [Como as ferramentas de gerenciamento de lances afetam [!DNL Marketo Measure]](/help/api-connections/utilizing-marketo-measures-api-connections/how-bid-management-tools-affect-marketo-measure.md)
>* [[!DNL Marketo Measure] Explicação dos parâmetros da API](/help/api-connections/utilizing-marketo-measures-api-connections/marketo-measure-parameters.md)
>* [Visão geral da API do facebook](/help/api-connections/utilizing-marketo-measures-api-connections/facebook-api.md)
>* [[!DNL LinkedIn] Visão geral da integração](/help/api-connections/utilizing-marketo-measures-api-connections/linkedin-integration.md)
>* [Visão geral da integração do AdWords](/help/api-connections/utilizing-marketo-measures-api-connections/understanding-marketo-measure-adwords-tagging.md)
>* [Reautorizar contas da API conectadas](/help/api-connections/utilizing-marketo-measures-api-connections/reauthorizing-connected-accounts.md)

