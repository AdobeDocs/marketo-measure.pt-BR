---
description: Orientação de sincronização de dados históricos para usuários do Marketo Measure
title: Sincronização de dados históricos
exl-id: 5a3c1a71-463a-4d75-98b9-fc225839512a
feature: Channels
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '1516'
ht-degree: 3%

---

# Sincronização de dados históricos {#syncing-historical-data}

O [!DNL Marketo Measure] é uma solução que fornece os dados mais granulares e acionáveis. Entendemos, no entanto, que você pode ter dados existentes para os quais gostaria de ter atribuição. É possível gerar pontos de contato para dados históricos, mas é importante levar alguns fatores em consideração antes de prosseguir com esse processo.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado do aplicativo](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md){target="_blank"}.

## Fatores a serem considerados {#factors-to-consider}

**Os dados já estão organizados em campanhas?**

a. Os dados precisam ser organizados em Campanhas para serem sincronizados com [!DNL Marketo Measure] para que os Pontos de Contato sejam gerados. Se não estiver organizado atualmente em Campanhas, você desejará avaliar se vale o tempo e os recursos necessários para segmentar os dados nas campanhas apropriadas.

b. A data em que o membro foi adicionado à campanha ou marcado como respondido será usada para a data do ponto de contato, portanto, também precisa ser precisa. O [!DNL Marketo Measure] oferece soluções alternativas no SFDC e no MSD para atualizar as datas, mas isso pode ser demorado, dependendo do volume.

**Você tem uma quantidade bastante semelhante de dados organizados em campanhas para todos os Canais (pesquisa paga, eventos, orgânico etc.)?**

É importante ter uma imagem equilibrada da atribuição para ter relatórios precisos e &quot;justos&quot;. Por exemplo, se você só tiver dados para esforços de canal offline de histórico, como Eventos, os dados serão inerentemente enviesados sem dados online de histórico para complementá-los.

**Que nível de granularidade você está esperando?**

Basicamente, você saberá apenas o Canal, Subcanal e nome da Campanha.

**Quais são suas metas de relatórios no futuro?**

Esses dados serão limitados, portanto, é importante considerar como você planeja usá-los. Pode não fazer mais sentido comparar dados históricos a dados futuros.

**Até que ponto você deseja voltar?**

A [!DNL Marketo Measure] recomenda não ultrapassar o ano anterior.

É um tópico que recomendamos discutir primeiro com o contato do [!DNL Marketo Measure]. Se você considerou o exposto acima e gostaria de continuar, as instruções gerais (separadas para [!DNL Salesforce] e [!DNL Microsoft Dynamics]) estão exibidas abaixo.

## Sincronizando Campanhas Históricas em [!DNL Salesforce] {#syncing-historic-campaigns-in-salesforce}

**Online:**

Para sincronizar dados online históricos, os dados devem ser organizados em Campanhas do Salesforce que você sincronizaria com [!DNL Marketo Measure] por meio de [!DNL Salesforce] regras de sincronização de campanha no aplicativo [!DNL Marketo Measure]. É importante garantir que os pontos de contato não sejam gerados a partir de nenhuma dessas campanhas após a data de ativação do JavaScript. O motivo para isso é evitar pontos de contato duplicados. Após a ativação da JavaScript, os esforços online são rastreados automaticamente, para que não queiramos rastreá-los por meio de uma campanha do SFDC. Para evitar esse problema, adicione uma noção de tempo à regra. Talvez algo como &quot;a data de criação do membro da campanha seja anterior à [data de publicação do JavaScript]&quot;.

![](assets/dynamics-lists-1.png)

O componente de mapeamento de canal para dados online históricos pode ser um pouco complicado. Queremos que ele corresponda às suas regras de canal online atuais (da folha de regras online) o mais próximo possível para relatórios limpos. Veja abaixo um exemplo de mapeamento de canal ideal.

>[!NOTE]
>
>Este mapeamento de canal é feito na seção [!UICONTROL Canais Offline] do aplicativo [!DNL Marketo Measure], pois estamos usando campanhas do SFDC.

| Tipo de campanha do Salesforce | Canal | Subcanal |
|---|---|---|
| Pesquisa paga - AdWords | Pesquisa paga | AdWords |
| Pesquisa paga - Bing | Pesquisa paga | Bing |
| Pesquisa paga - Yahoo | Pesquisa paga | Yahoo |

Os dados online adicionados desta forma serão inerentemente menos granulares que os dados online [!DNL Marketo Measure] que são rastreados via JavaScript. Por exemplo, campos como URL do formulário, Página de aterrissagem, Página do referenciador etc. não serão preenchidos. Portanto, é recomendável dividir as campanhas em cada fonte, se possível. Como visto no exemplo acima, seria necessário ter vários Tipos de campanha para cada fonte para ter granularidade nos relatórios.

Talvez não seja possível ou razoável ter o número de Tipos de campanha do SFDC para oferecer suporte ao mapeamento de canal granular, portanto, você pode recorrer apenas ao mapeamento para o nível do canal e ignorar os subcanais. Se o nível do Canal também não for conhecido, você pode configurar um canal proxy como &quot;Histórico digital&quot; para pelo menos saber que foi um toque online.

Se você precisar editar em massa a data do ponto de contato que será enviada para esses esforços online históricos, use o botão [!DNL Marketo Measure] personalizado &quot;[!UICONTROL Atualização em massa da data do ponto de contato]&quot; (disponível como um campo personalizado no Objeto de campanha no SFDC). Se a Campanha tiver um período curto, talvez valha a pena editar em massa a data do ponto de contato em um intervalo de dia a dia, enquanto pode fazer sentido atualizar em massa semanalmente se a Campanha tiver um período mais longo. Se você usar a funcionalidade Atualização em massa da data do ponto de contato, atualize a Regra de sincronização do Campaign para usar a Data do Buyer Touchpoint no campo de data. Observe que isso pode exigir ser criativo com suas regras de sincronização do Campaign se isso se aplicar somente a uma ou duas Campanhas, e não a todas.

**Offline:**

Os dados históricos de esforços de marketing offline (aqueles que não podem ser rastreados por meio do JavaScript) também precisarão ser organizados em campanhas do SFDC. As campanhas do SFDC são a forma como [!DNL Marketo Measure] rastreia os esforços offline, independentemente de a atividade ser &quot;histórica&quot; ou &quot;implementação atual/pós[!DNL Marketo Measure]&quot;. Portanto, siga o mesmo mapeamento de canal decidido no treinamento original de Configuração de Canal Offline.

Se necessário, use o botão &quot;Atualizar data do ponto de contato em massa&quot; para editar em massa a data do ponto de contato dos membros da campanha. Por exemplo, se você estiver criando campanhas do SFDC após a ocorrência do evento, convém fazer uma edição em massa para a data correta. Se você usar a funcionalidade Atualização em massa da data do ponto de contato, atualize a Regra de sincronização do Campaign para usar a Data do Buyer Touchpoint no campo de data. Observe que isso pode exigir ser criativo com suas regras de sincronização do Campaign se isso se aplicar somente a uma ou duas Campanhas, e não a todas.

## Sincronizando Campanhas Históricas em [!DNL Dynamics] {#syncing-historic-campaigns-in-dynamics}

O [!DNL Marketo Measure] pode gerar retroativamente pontos de contato para interações que ocorreram no passado, desde que estejam organizados em Campanhas no [!DNL Dynamics].

Isso geralmente envolve trabalho no CRM para levar em conta as datas do histórico. O manuseio também será diferente para esforços online (rastreados por JS) e esforços offline (não podem ser rastreados por JS).

Siga as instruções abaixo para organizar dados históricos em [!DNL Dynamics] em um formato que possa ser sincronizado com [!DNL Marketo Measure].

**Online:**

Os dados digitais históricos precisam ser organizados em [!DNL Dynamics] campanhas para serem preenchidos retroativamente. Idealmente, essa estrutura já está em vigor.

Se os dados forem alojados em outro lugar (como ainda vivendo na Automação de Marketing), eles precisarão ser enviados para [!DNL Dynamics] e organizados nas campanhas apropriadas. Em seguida, será necessário considerar a Data do ponto de contato como deseja que ela reflita a data do passado, não a data em que ela foi enviada para [!DNL Dynamics]. Para substituir essa data, é possível usar o campo personalizado &quot;Data do Buyer Touchpoint&quot; para alterar a data. Será necessário adicioná-lo ao Formulário da Lista de marketing.

![](assets/dynamics-lists-10.png)

Como resultado, é possível definir em massa a data de todos na Lista de marketing que será usada para a Data do ponto de contato. Para ter datas históricas mais precisas, crie várias Listas de marketing para a mesma campanha, cada uma com sua própria Data de ponto de contato. Se a Campanha tiver um curto período de tempo, talvez valha a pena criar uma Lista de marketing para cada dia. Se a Campanha tiver um período de tempo mais longo, pode fazer sentido criar uma Lista de marketing semanalmente.

Mais informações sobre como sincronizar Listas de Marketing podem ser encontradas aqui: [[!DNL Dynamics] Campanhas e Listas de Marketing](/help/channel-tracking-and-setup/offline-channels/legacy-processes/dynamics-campaigns-and-marketing-lists.md)

>[!NOTE]
>
>Se, por qualquer motivo, você tiver uma atividade de rastreamento online de campanha que esteja ativa após a data de ativação do JavaScript, certifique-se de definir o campo &quot;[!UICONTROL Data de término do ponto de contato]&quot; para a data em que o JS foi ativado. Isso evita pontos de contato duplicados para a mesma interação.

Considerações: dados online adicionados desta maneira serão inerentemente menos granulares que os dados online [!DNL Marketo Measure] que são rastreados pela JavaScript. Por exemplo, campos como: URL do formulário, Página de aterrissagem, Página do referenciador etc. não serão preenchidos. Portanto, é recomendável dividir as campanhas em cada fonte, se possível. Veja abaixo um exemplo de mapeamento ideal.

| Tipo de campanha do Dynamics | Canal | Subcanal |
|---|---|---|
| Pesquisa paga - AdWords | Pesquisa paga | AdWords |
| Pesquisa paga - Bing | Pesquisa paga | Bing |
| Pesquisa paga - Yahoo | Pesquisa paga | Yahoo |

Se você não tiver uma maneira de identificar uma fonte ou se não valer o tempo e o esforço, poderá usar um Tipo de campanha mapeado para um canal chamado algo como &quot;Digital herdado&quot; ou &quot;Site histórico&quot;.

**Offline:**

Para ter pontos de contato para esforços de marketing offline do passado, os dados devem ser organizados em [!DNL Dynamics] campanhas e sincronizados com [!DNL Marketo Measure]. O processo é o mesmo dos canais offline atuais (sincronize a campanha via Listas de marketing ou Respostas da campanha). Veja abaixo um exemplo de mapeamento de canal.

| Tipo de campanha do Dynamics | Canal | Subcanal |
|---|---|---|
| Eventos - Conferências Patrocinadas | Eventos | Conferências Patrocinadas |
| Eventos - Eventos para parceiros | Eventos | Eventos para parceiros |
| Eventos - Eventos hospedados | Eventos | Eventos hospedados |
| Webinário - Webinário de parceiros | Webinário | Webinário do parceiro |

Se esses dados ainda não estiverem organizados em Campanhas com as datas corretas definidas, você poderá usar o campo &quot;Data do Buyer Touchpoint&quot; para refletir a data precisa da atividade offline no passado.

