---
description: Práticas recomendadas para canais offline - [!DNL Marketo Measure]
title: Práticas recomendadas para canais offline
exl-id: 71c50614-8d5b-469f-bc02-3cc489464a4e
feature: Channels
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '1054'
ht-degree: 4%

---

# Práticas recomendadas para canais offline {#best-practices-for-offline-channels}

## Visão geral {#overview}

Para ter informações [!DNL Marketo Measure] Os canais de marketing devem estar configurados corretamente. O &#39;[!UICONTROL Canal de marketing]O campo &quot; exibe o grupo de nível mais alto de táticas de marketing ao qual um ponto de contato pode pertencer (por exemplo, Eventos, Webinars, Associação de conteúdo e assim por diante).

Há dois aspectos para configurar seus canais de marketing: online e offline. Este documento se concentra no [!DNL Marketo Measure] práticas recomendadas para configurar e manter seus Canais offline e como eles são sincronizados com o [!DNL Marketo Measure] por meio de Campanhas CRM.

Os canais offline têm dois aspectos principais:

1. Mapeamento de canal offline, que é a estrutura que informa [!DNL Marketo Measure] a qual canal e subcanal o ponto de contato offline pertence
1. Sincronização de campanha offline que é a criação dos pontos de contato offline

Os pontos de contato offline são criados a partir de uma Campanha CRM e se destinam a rastrear qualquer interação de marketing que não possa ser rastreada digitalmente por meio do [!DNL Marketo Measure] JavaScript que é implementado nas páginas do seu site. Quando uma Campanha CRM é sincronizada com [!DNL Marketo Measure], pontos de contato são criados para os Membros definidos do Campaign.

O valor &quot;Canal de marketing&quot; para esses pontos de contato é baseado no campo &quot;Tipo&quot; na campanha. O mapeamento de &quot;Tipo de campanha do CRM&quot; para &quot;Canal de marketing&quot; e &quot;Subcanal&quot; é gerenciado na guia &quot;Canais offline&quot; do [!DNL Marketo Measure] Configurações da conta. Garantir que seu mapeamento de canal offline seja preciso e esteja atualizado garantirá que seus dados de ponto de contato offline sejam atribuídos aos Canais de marketing e Subcanais corretos em seu [!DNL Marketo Measure] Relatórios.

## Prática recomendada | Mapeamento de canal offline {#best-practice-offline-channel-mapping}

Se você estiver mapeando seus Canais offline pela primeira vez ou apenas revisando-os para verificar a precisão, lembre-se das seguintes práticas recomendadas.

* Criar uma estrutura deliberada para seus Canais offline
   * Reserve algum tempo para pensar sobre a organização de suas campanhas de marketing e como elas se encaixam na estrutura do [!DNL Marketo Measure]. Determine quais canais e subcanais devem ser representados nos canais offline e quais tipos de campanha do CRM diferenciam esses canais uns dos outros
* Trabalhe para utilizar primeiro os valores atuais de &quot;Tipo&quot; da campanha do CRM
   * Os canais offline são definidos pelo &quot;Tipo&quot; da campanha do CRM. No entanto, o valor &quot;Tipo&quot; da campanha do CRM personalizada pode precisar ser criado para acomodar os valores ideais de Canal offline e Subcanal. Os valores ideais do &quot;Tipo&quot; de campanha de CRM personalizado devem ter a convenção de nomenclatura mostrada abaixo:
      * CANAL - SUBCANAL
      * Exemplo: Evento - Feira de Negócios
      * Isso garante que o mapeamento para o nível de Subcanal seja o mais fácil e limpo possível
* Um Subcanal só pode ser mapeado para um &quot;Tipo&quot; de Campanha do CRM
   * Vários &quot;tipos&quot; de campanha de CRM podem ser mapeados para um único canal, mas apenas um &quot;tipo&quot; de campanha de CRM pode ser mapeado para cada subcanal em cada canal
* Somente os &#39;Tipos&#39; de Campanha do CRM OFFLINE devem ser mapeados para Canais Offline, pois somente as Campanhas Offline devem ser sincronizadas com [!DNL Marketo Measure] para criar pontos de contato:
   * Os &quot;Tipos&quot; da campanha do CRM ONLINE devem ser mapeados para um [!UICONTROL Canal de marketing] = &quot;NULL&quot;. Esse valor é recomendado, pois atua como um &#39;sinalizador vermelho&#39; que indica que seus Canais offline foram revisados e qualquer &#39;Tipo&#39; de campanha do CRM mapeado para &quot;NULL&quot; é um &#39;Tipo&#39; ONLINE e não deve ser sincronizado com [!DNL Marketo Measure]. Os pontos de contato relacionados aos &quot;Tipos&quot; de campanha CRM online já seriam rastreados via [!DNL Marketo Measure] Funcionalidade e canais online. A sincronização dessas campanhas corre o risco de &quot;duplicar&quot; pontos de contato/dupla contagem

## Prática recomendada | Sincronização de campanha offline {#best-practice-offline-campaign-sync}

* Verifique se o campo &quot;Tipo&quot; está correto em cada campanha de CRM
   * &quot;Tipo&quot; determina o Canal de marketing e o Subcanal para quaisquer pontos de contato originados da campanha após a sincronização
* Seja usando o método de sincronização de campanha baseado em CRM (Habilitar pontos de contato do comprador) ou o [!DNL Marketo Measure] Método de sincronização baseado em aplicativos (Sincronização de campanha personalizada no )[!UICONTROL Campanhas]Guia &#39; do seu [!UICONTROL Marketo Measure] Configurações da conta), os pontos de contato offline só devem ser criados se o membro da campanha tiver um engajamento offline real com a campanha e sua marca:
   * Para canais offline como eventos ou webinários: os &quot;registros&quot; normalmente são rastreados por meio de envios de formulários em seu site e [!DNL Marketo Measure] Funcionalidade online. Portanto, os Membros da campanha com um Status de &quot;Registrado&quot; não devem receber um ponto de contato offline da campanha para evitar dupla contagem. Os pontos de contato offline devem ser representativos apenas da &quot;participação&quot; no evento ou webinário.
   * Alguns canais offline, como Conteúdo sindicado, são mais simples, pois cada membro do Campaign tem o mesmo status &quot;respondido&quot; que representa que realmente respondeu à campanha. Nesse caso, baixe conteúdo em um site de terceiros e, portanto, deve receber um ponto de contato offline
* Ao usar o método de sincronização Campanha personalizada no [!DNL Marketo Measure] Certifique-se de que o campo &quot;Data do ponto de contato&quot; seja baseado no campo de data do membro da campanha ou da campanha que seja mais indicativo de quando a interação do ponto de contato realmente ocorreu
* Use o botão &quot;Atualização em massa da data do ponto de contato&quot; se precisar substituir a &quot;Data do ponto de contato&quot; por qualquer um dos pontos de contato offline originados de uma campanha de CRM. A &quot;Data do ponto de contato&quot; deve ser o mais precisa possível para garantir que o ponto de contato contenha a &quot;Posição do ponto de contato&quot; mais precisa possível e, portanto, o valor correto do crédito de atribuição

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Depois de configurado inicialmente, sua configuração Canal offline continua a criar pontos de contato offline de acordo. Como prática recomendada, recomendamos que você analise sua configuração offline pelo menos duas vezes por ano. Isso garante dados de ponto de contato do Comprador limpos e precisos.

Além disso, se você fizer alterações no gerenciamento ou nos processos do Campaign, precisará verificar se está atualizando o [!DNL Marketo Measure] Processo de sincronização e/ou mapeamento de canal offline.

Alterações que podem fazer com que sua equipe atualize a configuração do Canal offline no [!DNL Marketo Measure] podem incluir:

* &quot;Tipos&quot; de campanha do CRM criados ou editados
* &quot;Status&quot; do membro da campanha criado ou editado
* Se estiver usando o método de sincronização de campanha do CRM por meio do campo &quot;Habilitar pontos de contato do comprador&quot;, verifique se esse campo foi revisado e atualizado para cada Campanha CRM criada. Se esse campo for negligenciado, não haverá dados de ponto de contato offline relacionados
* Se você encontrar pontos de contato offline de uma Campanha CRM que pareçam pontos de contato online (Canal de marketing = NULL), verifique se a Campanha CRM relacionada foi revisada e a sincronização está desabilitada

Se sua equipe tiver tido alguma das situações acima, [!DNL Marketo Measure] A recomenda que você revise o mapeamento de canal offline e as Campanhas offline para fazer as alterações apropriadas e garantir que elas sejam sincronizadas corretamente.

>[!MORELIKETHIS]
>
>* [Configuração de canal offline](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md)
>* [Sincronização de campanha personalizada - Sincronização de aplicativos](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md)
>* [Sincronização de Campanhas Offline - Sincronização de CRM](/help/channel-tracking-and-setup/offline-channels/legacy-processes/syncing-offline-campaigns.md)
>* [Membros offline do Campaign e do Campaign - Sincronização de CRM](/help/channel-tracking-and-setup/offline-channels/legacy-processes/campaigns-and-campaign-members.md)
>* [Datas de sincronização do Campaign - Sincronização de CRM](/help/channel-tracking-and-setup/offline-channels/legacy-processes/campaign-sync-dates.md)
>* [Configurações para vários tipos de registros de campanha](/help/channel-tracking-and-setup/offline-channels/configurations-for-multiple-campaign-record-types.md)
>* [Criar uma visualização da lista de campanhas](/help/channel-tracking-and-setup/offline-channels/legacy-processes/creating-a-campaign-list-view-for-salesforce-campaigns.md)
>* [Sincronização de dados históricos](/help/channel-tracking-and-setup/offline-channels/legacy-processes/syncing-historical-data.md)
