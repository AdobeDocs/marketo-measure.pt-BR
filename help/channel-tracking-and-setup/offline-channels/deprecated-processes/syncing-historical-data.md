---
unique-page-id: 42762310
description: Sincronização de dados históricos - [!DNL Marketo Measure] - Documentação do produto
title: Sincronização de dados históricos
exl-id: 5a3c1a71-463a-4d75-98b9-fc225839512a
feature: Channels
source-git-commit: 3df1bd288ebd65f75a2ed52d7c8a6faf50c7ff1f
workflow-type: tm+mt
source-wordcount: '1496'
ht-degree: 2%

---

# Sincronização de dados históricos {#syncing-historical-data}

[!DNL Marketo Measure] O é uma solução que fornece os dados mais granulares e acionáveis. Entendemos, no entanto, que você pode ter dados existentes para os quais gostaria de ter atribuição. É possível gerar pontos de contato para dados históricos, mas é importante levar alguns fatores em consideração antes de prosseguir com esse processo.

## Fatores a serem considerados {#factors-to-consider}

**Os dados já estão organizados em campanhas?**

a. Os dados precisam ser organizados em Campanhas para serem sincronizados com [!DNL Marketo Measure] para gerar Touchpoints. Se não estiver organizado atualmente em Campanhas, você deverá avaliar se vale a pena o tempo e os recursos necessários para segmentar os dados nas campanhas apropriadas.

b. A data em que o membro foi adicionado à campanha ou marcado como respondido será usada para a data do ponto de contato, portanto, também precisa ser precisa. [!DNL Marketo Measure] O oferece soluções alternativas no SFDC e no MSD para atualizar as datas, mas isso pode ser demorado, dependendo do volume.

**Você tem uma quantidade razoavelmente igual de dados organizados em campanhas para todos os canais (pesquisa paga, eventos, orgânico etc.)?**

É importante ter uma imagem equilibrada da atribuição para ter relatórios precisos e &quot;justos&quot;. Por exemplo, se você só tiver dados para esforços de canal offline de histórico, como Eventos, os dados serão inerentemente enviesados sem dados online de histórico para complementá-los.

**Que nível de granularidade você está esperando?**

Você conhecerá essencialmente apenas o Canal, Subcanal e nome da Campanha.

**Quais serão suas metas de relatórios no futuro?**

Esses dados serão limitados, portanto, é importante considerar como você planeja usá-los. Pode não fazer mais sentido comparar dados históricos a dados futuros.

**Até que ponto você quer ir?**

[!DNL Marketo Measure] A recomenda enfaticamente não ultrapassar o ano anterior.

Este é um tópico que recomendamos discutir com o seu [!DNL Marketo Measure] entre em contato primeiro. Se você considerou o que foi exposto acima e gostaria de continuar, consulte as instruções gerais (separadas por [!DNL Salesforce] e [!DNL Microsoft Dynamics]) estão abaixo.

## Sincronização de campanhas históricas no [!DNL Salesforce] {#syncing-historic-campaigns-in-salesforce}

**Online:**

Para sincronizar dados online históricos, os dados devem ser organizados em Campanhas do Salesforce para as quais você sincronizaria [!DNL Marketo Measure] via [!DNL Salesforce] Regras de sincronização do Campaign no [!DNL Marketo Measure] aplicativo. É importante garantir que os pontos de contato não sejam gerados de nenhuma dessas campanhas após a data de ativação do JavaScript. O motivo para isso é evitar pontos de contato duplicados. Depois que o JavaScript estiver ativo, os esforços online serão rastreados automaticamente, de modo que não queremos rastreá-los também por meio de uma campanha do SFDC. Para evitar esse problema, adicione uma noção de tempo à regra. Talvez algo como &quot;a data de criação do membro da campanha é anterior a&quot; [Data de ativação do JavaScript]&quot;.

![](assets/syncing-historical-data-1.png)

O componente de mapeamento de canal para dados online históricos pode ser um pouco complicado. Queremos que ele corresponda às suas regras de canal online atuais (da folha de regras online) o mais próximo possível para relatórios limpos. Veja abaixo um exemplo de mapeamento de canal ideal.

>[!NOTE]
>
>Esse mapeamento de canal é feito no [!UICONTROL Canais offline] seção do [!DNL Marketo Measure] desde que estamos usando campanhas do SFDC.

| Tipo de campanha do Salesforce | Canal | Subcanal |
|---|---|---|
| Pesquisa paga - AdWords | Pesquisa paga | AdWords |
| Pesquisa paga - Bing | Pesquisa paga | Bing |
| Pesquisa paga - Yahoo | Pesquisa paga | Yahoo |

Os dados online adicionados dessa maneira serão inerentemente menos granulares que os dados online [!DNL Marketo Measure] rastreia via JavaScript. Por exemplo, campos como URL do formulário, Página de aterrissagem, Página do referenciador etc. não serão preenchidos. Portanto, é recomendável dividir as campanhas em cada fonte, se possível. Como visto no exemplo acima, seria necessário ter vários Tipos de campanha para cada fonte para ter granularidade nos relatórios.

Talvez não seja possível ou razoável ter o número de tipos de campanha do SFDC para oferecer suporte ao mapeamento granular de canais, portanto, você pode recorrer apenas ao mapeamento para o nível do canal e ignorar os subcanais. Se o nível do Canal também não for conhecido, você pode configurar um canal proxy como &quot;Histórico digital&quot; para pelo menos saber que foi um toque online.

Se você precisar editar em massa a data do ponto de contato que será enviada para esses esforços online históricos, use o [!DNL Marketo Measure] personalizado&quot;[!UICONTROL Atualização em massa da data do ponto de contato]&quot; (disponível como um campo personalizado no Objeto de campanha no SFDC). Se a Campanha tiver um período curto, talvez valha a pena editar em massa a data do ponto de contato em um intervalo de dia a dia, enquanto pode fazer sentido atualizar em massa semanalmente se a Campanha tiver um período mais longo. Se você aproveitar a funcionalidade Atualização em massa da Data do ponto de contato, atualize a Regra de sincronização de campanha para usar a Data do ponto de contato do comprador no campo de data. Observe que isso pode exigir ser criativo com suas regras de sincronização do Campaign se isso se aplicar somente a uma ou duas Campanhas, e não a todas.

**Offline:**

Os dados históricos das iniciativas de marketing offline (que não podem ser rastreadas via JavaScript) também precisarão ser organizados em campanhas do SFDC. As campanhas do SFDC são o caminho [!DNL Marketo Measure] rastreia os esforços off-line, independentemente se a atividade é &quot;histórica&quot; ou &quot;atual/pós[!DNL Marketo Measure] implementação&quot;, siga o mesmo mapeamento de canal decidido no treinamento original de Configuração de canal offline.

Se necessário, use o botão &quot;Atualizar data do ponto de contato em massa&quot; para editar em massa a data do ponto de contato dos membros da campanha. Por exemplo, se você estiver criando campanhas SFDC após a ocorrência do evento, convém fazer uma edição em massa para a data correta. Se você aproveitar a funcionalidade Atualização em massa da Data do ponto de contato, atualize a Regra de sincronização de campanha para usar a Data do ponto de contato do comprador no campo de data. Observe que isso pode exigir ser criativo com suas regras de sincronização do Campaign se isso se aplicar somente a uma ou duas Campanhas, e não a todas.

## Sincronização de campanhas históricas no [!DNL Dynamics] {#syncing-historic-campaigns-in-dynamics}

[!DNL Marketo Measure] O é capaz de gerar retroativamente pontos de contato para interações que ocorreram no passado, desde que estejam organizados em Campanhas no [!DNL Dynamics].

Isso geralmente envolve trabalho no CRM para levar em conta as datas do histórico. O manuseio também será diferente para esforços online (rastreados por JS) e esforços offline (não podem ser rastreados por JS).

Siga as instruções abaixo para organizar os dados históricos em [!DNL Dynamics] em um formato que pode ser sincronizado com [!DNL Marketo Measure].

**Online:**

Os dados históricos digitais devem ser organizados em [!DNL Dynamics] campanhas para serem preenchidas retroativamente. Idealmente, essa estrutura já está em vigor.

Se os dados forem alojados em outro lugar (como ainda viver na Automação de marketing), eles precisarão ser enviados para [!DNL Dynamics] e organizados nas campanhas apropriadas. Em seguida, será necessário considerar a Data do ponto de contato como deseja que ela reflita a data do passado, não a data em que ela foi enviada [!DNL Dynamics]. Para substituir essa data, é possível usar o campo personalizado &quot;Data do ponto de contato do comprador&quot; para alterar a data. Será necessário adicioná-lo ao Formulário da Lista de marketing.

![](assets/syncing-historical-data-2.png)

Como resultado, é possível definir em massa a data de todos na Lista de marketing que será usada para a Data do ponto de contato. Para ter datas históricas mais precisas, crie várias Listas de marketing para a mesma campanha, cada uma com sua própria Data de ponto de contato. Se a Campanha tiver um curto período de tempo, talvez valha a pena criar uma Lista de marketing para cada dia. Se a Campanha tiver um período de tempo mais longo, pode fazer sentido criar uma Lista de marketing semanalmente.

Mais informações sobre como Sincronizar Listas de Marketing podem ser encontradas aqui: [[!DNL Dynamics] Campanhas e listas de marketing](/help/channel-tracking-and-setup/offline-channels/deprecated-processes/dynamics-campaigns-and-marketing-lists.md)

>[!NOTE]
>
>Se, por qualquer motivo, você tiver uma atividade de rastreamento de campanha online que esteja ativa após a data de ativação do JavaScript, defina o &quot;[!UICONTROL Data de término do ponto de contato]&quot; até a data em que o JS foi ativado. Isso evita pontos de contato duplicados para a mesma interação.

Considerações: dados online adicionados dessa maneira serão inerentemente menos granulares que os dados online [!DNL Marketo Measure] rastreia via JavaScript. Por exemplo, campos como: URL do formulário, Página de aterrissagem, Página do referenciador etc. não serão preenchidos. Portanto, é recomendável dividir as campanhas em cada fonte, se possível. Veja abaixo um exemplo de mapeamento ideal.

| Tipo de campanha do Dynamics | Canal | Subcanal |
|---|---|---|
| Pesquisa paga - AdWords | Pesquisa paga | AdWords |
| Pesquisa paga - Bing | Pesquisa paga | Bing |
| Pesquisa paga - Yahoo | Pesquisa paga | Yahoo |

Se você não tiver uma maneira de identificar uma fonte ou se não valer o tempo e o esforço, poderá usar um Tipo de campanha mapeado para um canal chamado algo como &quot;Digital herdado&quot; ou &quot;Site histórico&quot;.

**Offline:**

Para ter pontos de contato para esforços de marketing offline do passado, os dados devem ser organizados em [!DNL Dynamics] campanhas e sincronizado com [!DNL Marketo Measure]. O processo é o mesmo dos canais offline atuais (sincronize a campanha via Listas de marketing ou Respostas da campanha). Veja abaixo um exemplo de mapeamento de canal.

| Tipo de campanha do Dynamics | Canal | Subcanal |
|---|---|---|
| Eventos - Conferências Patrocinadas | Eventos | Conferências Patrocinadas |
| Eventos - Eventos para parceiros | Eventos | Eventos para parceiros |
| Eventos - Eventos hospedados | Eventos | Eventos hospedados |
| Webinário - Webinário de parceiros | Webinar | Webinário do parceiro |

Se esses dados ainda não estiverem organizados em Campanhas com as datas corretas definidas, você poderá usar o campo &quot;Data do ponto de contato do comprador&quot; para refletir a data precisa da atividade offline no passado.

