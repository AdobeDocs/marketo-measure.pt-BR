---
description: Práticas recomendadas para orientação de Canais offline para usuários do Marketo Measure
title: Práticas recomendadas para canais offline
exl-id: 71c50614-8d5b-469f-bc02-3cc489464a4e
feature: Channels
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '1061'
ht-degree: 4%

---


# Práticas recomendadas para canais offline {#best-practices-for-offline-channels}

## Visão geral {#overview}

Para ter relatórios precisos do [!DNL Marketo Measure], seus Canais de marketing devem estar configurados corretamente. O campo &#39;[!UICONTROL Canal de marketing]&#39; exibe o grupo de nível mais alto de táticas de marketing ao qual um ponto de contato pode pertencer (por exemplo, Eventos, Webinars, Associação de conteúdo e assim por diante).

Há dois aspectos para configurar seus canais de marketing: online e offline. Este documento está focado nas práticas recomendadas do [!DNL Marketo Measure] para configurar e manter seus Canais Offline e como eles são sincronizados com o [!DNL Marketo Measure] através das Campanhas CRM.

Os canais offline têm dois aspectos principais:

1. Mapeamento de Canal Offline, que é a estrutura que informa a [!DNL Marketo Measure] a qual Canal e Subcanal o ponto de contato Offline pertence
1. Sincronização de campanha offline que é a criação dos pontos de contato offline

Os pontos de contato offline são criados a partir de uma Campanha CRM e se destinam a rastrear qualquer interação de marketing que não possa ser rastreada digitalmente por meio do JavaScript [!DNL Marketo Measure] implementado nas páginas do seu site. Quando uma Campanha do CRM é sincronizada com [!DNL Marketo Measure], pontos de contato são criados para os Membros da Campanha definidos na Campanha.

O valor &quot;Canal de marketing&quot; para esses pontos de contato é baseado no campo &quot;Tipo&quot; na campanha. O mapeamento de &quot;Tipo de campanha do CRM&quot; para &quot;Canal de marketing&quot; e &quot;Subcanal&quot; é gerenciado na guia &quot;Canais offline&quot; das Configurações da conta do [!DNL Marketo Measure]. Garantir que seu mapeamento de Canal offline seja preciso e esteja atualizado garantirá que seus dados de ponto de contato offline sejam atribuídos aos Canais de marketing e Subcanais corretos em seus Relatórios do [!DNL Marketo Measure].

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
   * Os &#39;Tipos&#39; de Campanha do CRM ONLINE devem ser mapeados para um [!UICONTROL Canal de Marketing] = &quot;NULL&quot;. Esse valor é recomendado, pois atua como um &#39;sinalizador vermelho&#39; que indica que seus Canais Offline foram revisados e qualquer &#39;Tipo&#39; de Campanha do CRM que esteja mapeado para &quot;NULL&quot; é um &#39;Tipo&#39; ONLINE e não deve ser sincronizado com [!DNL Marketo Measure]. Os pontos de contato relacionados aos &quot;Tipos&quot; de Campanha do CRM Online já seriam rastreados por meio da funcionalidade e dos canais Online [!DNL Marketo Measure]. A sincronização dessas campanhas corre o risco de &quot;duplicar&quot; pontos de contato/dupla contagem

## Prática recomendada | Sincronização de campanha offline {#best-practice-offline-campaign-sync}

* Verifique se o campo &quot;Tipo&quot; está correto em cada campanha de CRM
   * &quot;Tipo&quot; determina o Canal de marketing e o Subcanal para quaisquer pontos de contato originados da campanha após a sincronização
* Seja usando o método de Sincronização de Campanha baseado em CRM (Habilitar Pontos de Contato do Comprador) ou o método de sincronização baseado em Aplicativo [!DNL Marketo Measure] (Sincronização de Campanha Personalizada na guia &#39;[!UICONTROL Campanhas]&#39; das Configurações de Conta do [!UICONTROL Marketo Measure]), os pontos de contato offline só deverão ser criados se o Membro da Campanha tiver um envolvimento offline real com a Campanha e sua marca:
   * Para Canais Offline como Eventos ou Webinars: os &quot;registros&quot; normalmente são rastreados por meio de envios de formulário no seu site e pela funcionalidade Online do [!DNL Marketo Measure]. Portanto, os Membros da campanha com um Status de &quot;Registrado&quot; não devem receber um ponto de contato offline da campanha para evitar dupla contagem. Os pontos de contato offline devem ser representativos apenas da &quot;participação&quot; no evento ou webinário.
   * Alguns canais offline, como Conteúdo sindicado, são mais simples, pois cada membro do Campaign tem o mesmo status &quot;respondido&quot; que representa que realmente respondeu à campanha. Nesse caso, baixe conteúdo em um site de terceiros e, portanto, deve receber um ponto de contato offline
* Ao usar o método de sincronização de campanha personalizado no aplicativo [!DNL Marketo Measure], verifique se o campo &quot;Data do ponto de contato&quot; é baseado no campo de data do membro da campanha ou da campanha que é mais indicativo de quando a interação do ponto de contato realmente ocorreu
* Use o botão &quot;Atualização em massa da data do ponto de contato&quot; se precisar substituir a &quot;Data do ponto de contato&quot; por qualquer um dos pontos de contato offline originados de uma campanha de CRM. A &quot;Data do ponto de contato&quot; deve ser o mais precisa possível para garantir que o ponto de contato contenha a &quot;Posição do ponto de contato&quot; mais precisa possível e, portanto, o valor correto do crédito de atribuição

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Depois de configurado inicialmente, sua configuração Canal offline continua a criar pontos de contato offline de acordo. Como prática recomendada, recomendamos que você analise sua configuração offline pelo menos duas vezes por ano. Isso garante dados de ponto de contato do Comprador limpos e precisos.

Além disso, se você fizer alterações nos processos ou no gerenciamento do Campaign, será necessário verificar se está atualizando o processo de sincronização e/ou mapeamento de canal offline do [!DNL Marketo Measure].

As alterações que podem fazer com que sua equipe atualize a configuração Canal Offline no [!DNL Marketo Measure] podem incluir:

* &quot;Tipos&quot; de campanha do CRM criados ou editados
* &quot;Status&quot; do membro da campanha criado ou editado
* Se estiver usando o método de sincronização de campanha do CRM por meio do campo &quot;Habilitar pontos de contato do comprador&quot;, verifique se esse campo foi revisado e atualizado para cada Campanha CRM criada. Se esse campo for negligenciado, não haverá dados de ponto de contato offline relacionados
* Se você encontrar pontos de contato offline de uma Campanha CRM que pareçam pontos de contato online (Canal de marketing = NULL), verifique se a Campanha CRM relacionada foi revisada e a sincronização está desabilitada

Se sua equipe tiver tido alguma das situações acima, o [!DNL Marketo Measure] recomenda que você revise o mapeamento de Canais offline e as Campanhas offline para fazer as alterações apropriadas e garantir que elas sejam sincronizadas corretamente.

>[!MORELIKETHIS]
> [Configuração de Canal Offline](/help/channel-tracking-and-setup/offline-custom-channel-setup.md)
> [Sincronização de Campanha Personalizada - Sincronização de Aplicativo](/help/channel-tracking-and-setup/custom-campaign-sync.md)
> [Sincronizando Campanhas Offline - Sincronização do CRM](/help/channel-tracking-and-setup/syncing-offline-campaigns.md)
> [Membros da Campanha e do Campaign Offline - Sincronização do CRM](/help/channel-tracking-and-setup/campaigns-and-campaign-members.md)
> [Datas de Sincronização da Campanha - Sincronização do CRM](/help/channel-tracking-and-setup/campaign-sync-dates.md)
> [Configurações para Vários Tipos de Registros de Campanha](/help/channel-tracking-and-setup/configurations-record-types.md)
> [Criando uma Exibição da Lista de Campanhas](/help/channel-tracking-and-setup/creating-a-campaign-list-view-for-salesforce-campaigns.md)
> [Sincronizando Dados Históricos](/help/channel-tracking-and-setup/syncing-historical-data.md)
