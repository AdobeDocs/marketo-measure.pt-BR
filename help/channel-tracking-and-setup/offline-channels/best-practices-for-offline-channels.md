---
description: Práticas recomendadas para canais offline - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para canais offline
exl-id: 71c50614-8d5b-469f-bc02-3cc489464a4e
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '1057'
ht-degree: 0%

---

# Práticas recomendadas para canais offline {#best-practices-for-offline-channels}

## Visão geral {#overview}

Para ter precisão [!DNL Marketo Measure] seus Canais de marketing devem ser configurados corretamente. O &quot;[!UICONTROL Canal de marketing]O campo &#39; exibe o grupo de mais alto nível de táticas de marketing às quais um ponto de contato pode pertencer (por exemplo, Eventos, Webinars, Sincronização de conteúdo etc.).

Há dois aspectos para configurar seus canais de marketing: online e offline. Este documento se concentrará no [!DNL Marketo Measure] recomendações de práticas recomendadas para configurar e manter seus Canais offline e como eles são sincronizados [!DNL Marketo Measure] por meio de campanhas CRM.

Os Canais offline têm dois aspectos principais:

1. Mapeamento de canal offline, que é a estrutura que informa [!DNL Marketo Measure] a qual canal e subcanal o ponto de contato offline pertence
1. Sincronização de campanha offline, que é a criação de pontos de contato offline

Os pontos de contato offline são criados a partir de uma Campanha CRM e destinam-se a rastrear qualquer interação de marketing que não possa ser rastreada digitalmente por meio do [!DNL Marketo Measure] JavaScript que é implementado nas páginas do seu site. Quando uma Campanha CRM é sincronizada com [!DNL Marketo Measure], pontos de contato são criados para os membros da campanha definidos na Campanha.

O valor &quot;Canal de marketing&quot; para esses pontos de contato é baseado no campo &quot;Tipo&quot; na Campanha. O mapeamento de &quot;Tipo de campanha CRM&quot; para &quot;Canal de marketing&quot; e &quot;Subcanal&quot; é gerenciado na guia &quot;Canais offline&quot; de sua [!DNL Marketo Measure] Configurações da conta. Garantir que seu mapeamento de Canal offline seja preciso e atualizado garantirá que seus dados de ponto de contato offline sejam atribuídos aos Canais e Subcanais de marketing corretos em seus [!DNL Marketo Measure] Relatório.

## Prática recomendada | Mapeamento de canais offline {#best-practice-offline-channel-mapping}

Esteja você mapeando seus Canais offline pela primeira vez ou apenas revendo-os para verificar a precisão, lembre-se das práticas recomendadas a seguir.

* Crie uma estrutura deliberada para seus Canais offline
   * Reserve algum tempo para pensar sobre a organização de suas campanhas de marketing e como elas se encaixam no [!DNL Marketo Measure] estrutura. Determine quais canais e subcanais devem ser representados em seus Canais offline, bem como quais tipos de campanha do CRM diferenciam esses canais uns dos outros
* Trabalhe para utilizar seus valores &quot;Tipo&quot; atuais da Campanha do CRM primeiro
   * Os Canais offline são definidos pelo &quot;Tipo&quot; de campanha do CRM. No entanto, o valor &quot;Tipo&quot; de campanha do CRM personalizado pode precisar ser criado para acomodar os valores ideais de Canal offline e Subcanal. Os valores &quot;Tipo&quot; de campanha CRM personalizada ideal devem ter a convenção de nomenclatura mostrada abaixo:
      * CANAL - SUBCANAL
      * Exemplo: Evento - Transmissão
      * Isso garante que o mapeamento para o nível de Subcanal seja o mais fácil e limpo possível
* Um Subcanal só pode ser mapeado para um &quot;Tipo&quot; de Campanha CRM
   * Vários &quot;Tipos&quot; de campanha do CRM podem ser mapeados para um único Canal, mas apenas um &quot;Tipo&quot; de campanha do CRM pode ser mapeado para cada Subcanal em cada Canal
* Somente os &quot;Tipos&quot; de campanha OFFLINE CRM devem ser mapeados para Canais offline, pois somente as Campanhas offline devem ser sincronizadas com [!DNL Marketo Measure] para criar pontos de contato:
   * Os &quot;Tipos&quot; de campanha do CRM ONLINE devem ser mapeados para um [!UICONTROL Canal de marketing] = &quot;NULL&quot;. Esse valor é recomendado, pois atua como um &quot;sinalizador vermelho&quot; que indica que seus Canais offline foram revisados e qualquer &quot;Tipo&quot; de campanha CRM mapeado para &quot;NULL&quot; é um &quot;Tipo&quot; ONLINE e não deve ser sincronizado com [!DNL Marketo Measure]. Os pontos de contato relacionados aos &quot;Tipos&quot; de campanha do CRM online já seriam rastreados por meio de [!DNL Marketo Measure] Funcionalidade e canais online. A sincronização dessas campanhas corre o risco de pontos de contato &quot;duplicados&quot;/contagem dupla

## Prática recomendada | Sincronização de campanha offline {#best-practice-offline-campaign-sync}

* Verifique se o campo &quot;Type&quot; está preciso em cada campanha CRM
   * &quot;Tipo&quot; determina o Canal de marketing e o Subcanal para quaisquer pontos de contato provenientes da campanha depois de sincronizados
* Se estiver usando o método de Sincronização de campanha baseado em CRM (Ativar pontos de contato do comprador) ou a variável [!DNL Marketo Measure] Método de sincronização baseado no aplicativo (Sincronização de campanha personalizada no &quot;[!UICONTROL Campanhas]da sua [!UICONTROL Medida do Marketo] Configurações da conta), pontos de contato offline só devem ser criados se o Membro da campanha tiver um envolvimento offline com a campanha e sua marca:
   * Para Canais offline como Eventos ou Webinars: os &quot;registros&quot; geralmente são rastreados por meio de envios de formulários no seu site e [!DNL Marketo Measure] Funcionalidade online. Portanto, os membros da campanha com status &quot;Registrado&quot; não devem receber um ponto de contato offline da campanha para evitar a dupla contagem. Os pontos de contato offline devem ser representativos apenas da &quot;participação&quot; no evento ou webinar.
   * Alguns Canais Offline, como o Content Syndication, geralmente são mais simples, pois cada Membro da campanha tem o mesmo status &quot;respondido&quot; que representa que realmente respondeu à campanha. Nesse caso, baixe o conteúdo em um site de terceiros e, portanto, deve receber um ponto de contato offline
* Ao usar o método de Sincronização de campanha personalizada no [!DNL Marketo Measure] Aplicativo, verifique se o campo &quot;Data do ponto de contato&quot; se baseia no campo de data do membro da campanha ou campanha que é mais indicativo de quando a interação do ponto de contato realmente ocorreu
* Utilize o botão &quot;Data do ponto de contato da atualização em massa&quot; se precisar substituir a &quot;Data do ponto de contato&quot; para qualquer um dos pontos de contato offline originados de uma campanha CRM. A &#39;Data do ponto de contato&#39; precisa ser o mais precisa possível para garantir que o ponto de contato tenha a &#39;Posição do ponto de contato&#39; mais precisa possível e, portanto, a quantidade adequada de crédito de atribuição

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Após a configuração inicial, a configuração do Canal offline continuará a criar pontos de contato offline de acordo. Como prática recomendada, recomendamos que você revise sua configuração Offline pelo menos duas vezes por ano. Isso garantirá dados limpos e precisos do ponto de contato do comprador.

Além disso, se você fizer alterações no gerenciamento ou nos processos do Campaign, precisará verificar se está atualizando o relatório [!DNL Marketo Measure] Processo de sincronização e/ou mapeamento de canal offline.

Alterações que podem acionar a equipe a fazer atualizações na configuração do Canal offline no [!DNL Marketo Measure] pode incluir:

* Campanha CRM &quot;Tipo(s)&quot; criada(s) ou editada(s)
* &#39;Status&#39; do Membro da Campanha criado ou editado
* Se estiver usando o método de Sincronização de campanha do CRM por meio do campo &quot;Ativar pontos de contato do comprador&quot;, verifique se esse campo é revisado e atualizado para cada campanha do CRM criada. Se esse campo for negligenciado, não haverá dados de pontos de contato offline relacionados
* Se você encontrar pontos de contato offline de uma Campanha CRM que parecem pontos de contato online (Canal de marketing = NULL), verifique se a Campanha de CRM relacionada foi analisada e se a sincronização foi desativada

Se a sua equipe tiver experimentado recentemente alguma das situações acima, [!DNL Marketo Measure] A recomenda que você analise o mapeamento do Canal offline e as Campanhas offline para fazer as alterações apropriadas e garantir que elas sejam sincronizadas corretamente.

>[!MORELIKETHIS]
>
>* [Configuração do Canal Offline](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md)
>* [Sincronização de campanha personalizada - Sincronização de aplicativo](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md)
>* [Sincronização de campanhas offline - Sincronização CRM](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md)
>* [Membros offline do Campaign e do Campaign - Sincronização CRM](/help/channel-tracking-and-setup/offline-channels/campaigns-and-campaign-members.md)
>* [Datas de sincronização da campanha - Sincronização do CRM](/help/channel-tracking-and-setup/offline-channels/campaign-sync-dates.md)
>* [Configurações para vários tipos de registro de campanha](/help/channel-tracking-and-setup/offline-channels/configurations-for-multiple-campaign-record-types.md)
>* [Criando uma exibição de lista de campanha](/help/channel-tracking-and-setup/offline-channels/creating-a-campaign-list-view-for-salesforce-campaigns.md)
>* [Sincronização de dados históricos](/help/channel-tracking-and-setup/offline-channels/syncing-historical-data.md)

