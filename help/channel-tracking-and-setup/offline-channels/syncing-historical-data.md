---
unique-page-id: 42762310
description: Sincronização de dados históricos - [!DNL Marketo Measure] - Documentação do produto
title: Sincronização de dados históricos
exl-id: 5a3c1a71-463a-4d75-98b9-fc225839512a
source-git-commit: 02f686645e942089df92800d8d14c76215ae558f
workflow-type: tm+mt
source-wordcount: '1496'
ht-degree: 1%

---

# Sincronização de dados históricos {#syncing-historical-data}

[!DNL Marketo Measure] O é uma solução que fornece os dados mais granulares e acionáveis. No entanto, entendemos que você pode ter dados existentes para os quais gostaria de ter atribuição. É possível gerar pontos de contato para dados históricos, mas é importante levar alguns fatores em consideração antes de avançar com esse processo.

## Fatores a serem considerados {#factors-to-consider}

**Os dados já estão organizados em campanhas?**

a. Os dados precisam ser organizados em Campanhas para serem sincronizados com o [!DNL Marketo Measure] para gerar pontos de contato. Se não estiver organizado no momento em Campanhas, você deverá avaliar se vale o tempo e os recursos necessários para segmentar os dados nas campanhas apropriadas.

b. A data em que o membro foi adicionado à campanha ou marcado como respondido será usada para a data do ponto de contato, portanto, isso também precisa ser preciso. [!DNL Marketo Measure] O oferece soluções alternativas no SFDC e no MSD para atualizar as datas, mas isso pode ser demorado dependendo do volume.

**Você tem uma quantidade bastante igual de dados organizados em campanhas para todos os Canais (pesquisa paga, eventos, orgânicos, etc)?**

É importante ter uma imagem equilibrada da atribuição para ter relatórios precisos e &quot;justos&quot;. Por exemplo, se você tiver apenas dados para o histórico de esforços de canais offline como Eventos, os dados serão inerentemente tendenciosos sem dados online históricos para complementá-los.

**Que nível de granularidade você espera?**

Essencialmente, você saberá somente o nome do Canal, Subcanal e Campanha.

**Quais são seus objetivos de relatórios no futuro?**

Esses dados serão limitados, então é importante considerar como você planeja usá-los. Pode não fazer mais sentido comparar dados históricos com dados futuros.

**Até onde você quer ir?**

[!DNL Marketo Measure] recomenda vivamente que não se vá além do ano anterior.

Este é um tópico que incentivamos a discussão com o seu [!DNL Marketo Measure] entre em contato primeiro. Se você tiver considerado o acima e quiser continuar, consulte as instruções gerais (separadas para [!DNL Salesforce] e [!DNL Microsoft Dynamics]) estão abaixo.

## Sincronização de campanhas históricas em [!DNL Salesforce] {#syncing-historic-campaigns-in-salesforce}

**Online:**

Para sincronizar dados históricos online, os dados devem ser organizados em Campanhas do Salesforce para as quais você sincronizaria [!DNL Marketo Measure] via [!DNL Salesforce] Regras de sincronização de campanha no [!DNL Marketo Measure] aplicativo. É importante garantir que os pontos de contato não sejam gerados a partir de nenhuma dessas campanhas após a data em que seu JavaScript entrou em vigor. O motivo para isso é evitar pontos de contato duplicados. Depois que o JavaScript é ativado, os esforços online são rastreados automaticamente, portanto não queremos rastreá-los também por meio de uma campanha SFDC. Para evitar esse problema, não deixe de adicionar um tempo à regra. Talvez algo como &quot;Data de criação do membro da campanha é menor que [Data de ativação do JavaScript]&quot;.

![](assets/syncing-historical-data-1.png)

O componente de mapeamento de canal para dados online históricos pode ser um pouco complicado. Queremos que ele corresponda as regras de seu canal online atual (da planilha de regras online) o mais possível para relatórios limpos. Abaixo está um exemplo do mapeamento de canal ideal.

>[!NOTE]
>
>Esse mapeamento de canal é feito na variável [!UICONTROL Canais offline] da seção [!DNL Marketo Measure] desde que estejamos usando campanhas SFDC.

| Tipo de campanha do Salesforce | Canal | Subcanal |
|---|---|---|
| Pesquisa paga - AdWords | Pesquisa paga | AdWords |
| Pesquisa paga - Bing | Pesquisa paga | Bing |
| Pesquisa paga - Yahoo | Pesquisa paga | Yahoo |

Os dados online adicionados dessa forma serão inerentemente menos granulares que os dados online [!DNL Marketo Measure] rastreia via JavaScript. Por exemplo, campos como URL do formulário, Página de aterrissagem, Página de referência etc. não serão preenchidos. Portanto, é recomendável dividir as campanhas em cada fonte, se possível. Como visto no exemplo acima, você precisaria ter vários Tipos de campanha para cada fonte para ter granularidade no relatório.

Pode não ser possível ou razoável ter o número de Tipos de Campanha SFDC para suportar o mapeamento granular de canal, de modo que você pode recorrer apenas ao mapeamento para o nível de Canal e ignorar os subcanais. Se o nível de Canal também não for conhecido, você poderá configurar um canal proxy como &quot;Digital histórico&quot; para que, pelo menos, saiba que foi um toque online.

Se precisar editar em massa a data do ponto de contato que será enviada para esses esforços online históricos, use a variável [!DNL Marketo Measure] personalizado &quot;[!UICONTROL Data do ponto de contato de atualização em massa]Botão &quot; (está disponível como um campo personalizado no Objeto da campanha no SFDC). Se a Campanha tiver um curto período de tempo, talvez valha a pena editar em massa a data do ponto de contato em um intervalo dia a dia, enquanto pode fazer sentido atualizar em massa semanalmente se a Campanha tiver um período de tempo mais longo. Se você aproveitar a funcionalidade Atualização em massa de Data do ponto de contato, atualize a Regra de sincronização de campanha para usar a Data do ponto de contato do comprador no campo de data. Observe que isso pode exigir ser criativo com as regras de sincronização de campanha se isso só se aplicar a uma ou duas campanhas, e não a todas.

**Offline:**

Os dados históricos dos esforços de marketing offline (aqueles que não podem ser rastreados por JavaScript) também precisarão ser organizados em campanhas SFDC. As campanhas SFDC são o caminho [!DNL Marketo Measure] rastreia esforços offline, independentemente se a atividade é &quot;histórica&quot; ou &quot;atual/pós-comercialização&quot;[!DNL Marketo Measure] implementação&quot;, portanto, siga o mesmo mapeamento de canal decidido no treinamento original de Configuração do canal offline.

Se necessário, use o botão &quot;Atualização em massa da data do ponto de contato&quot; para editar a data do ponto de contato em massa para membros da campanha. Por exemplo, se você estiver criando campanhas SFDC depois que o evento ocorrer, você deseja editar em massa a data correta. Se você aproveitar a funcionalidade Atualização em massa de Data do ponto de contato, atualize a Regra de sincronização de campanha para usar a Data do ponto de contato do comprador no campo de data. Observe que isso pode exigir ser criativo com as regras de sincronização de campanha se isso só se aplicar a uma ou duas campanhas, e não a todas.

## Sincronização de campanhas históricas em [!DNL Dynamics] {#syncing-historic-campaigns-in-dynamics}

[!DNL Marketo Measure] é capaz de gerar pontos de contato retroativamente para interações que ocorreram no passado, desde que estejam organizadas em Campanhas dentro do [!DNL Dynamics].

Isso geralmente envolve trabalhar no CRM para contabilizar datas históricas. O manuseio também será diferente para esforços online (rastreados pelo JS) e esforços offline (não é possível rastrear pelo JS).

Siga as instruções abaixo para organizar os dados históricos no [!DNL Dynamics] em um formato que pode ser sincronizado com [!DNL Marketo Measure].

**Online:**

Os dados digitais históricos devem ser organizados em [!DNL Dynamics] campanhas para serem preenchidas retroativamente. Idealmente, essa estrutura já está em vigor.

Se os dados forem hospedados em outro lugar (como ainda residindo na Automação de marketing), será necessário enviá-los para [!DNL Dynamics] e organizadas nas campanhas apropriadas. Em seguida, será necessário levar em conta a Data do ponto de contato, conforme você quer que ela reflita a data do passado, não a data na qual você a enviou [!DNL Dynamics]. Para substituir essa data, você pode usar o campo personalizado &quot;Data do ponto de contato do comprador&quot; para alterar a data. Será necessário adicionar isso ao Formulário de lista de marketing.

![](assets/syncing-historical-data-2.png)

Como resultado, você pode definir a data em massa para todos na Lista de marketing que será usada para a Data do ponto de contato. Para ter datas históricas mais precisas, crie várias Listas de marketing para a mesma campanha, cada uma com sua própria Data do ponto de contato. Se a Campanha tiver um período curto, talvez valha a pena criar uma Lista de marketing para cada dia. Se a Campanha tiver um período mais longo, pode fazer sentido criar uma Lista de Marketing semanalmente.

Mais informações sobre a Sincronização de Listas de Marketing podem ser encontradas aqui: [[!DNL Dynamics] Campanhas e Listas de Marketing](/help/marketo-measure-and-dynamics/dynamics-reporting/dynamics-campaigns-and-marketing-lists.md)

>[!NOTE]
>
>Se, por qualquer motivo, você tiver uma atividade de rastreamento de campanha online que esteja ativa após a data de ativação do JavaScript, certifique-se de definir a variável &quot;[!UICONTROL Data final do ponto de contato]&quot; até a data em que o JS entrou em vigor. Isso é para evitar pontos de contato duplicados na mesma interação.

Considerações: Os dados online adicionados dessa forma serão inerentemente menos granulares que os dados online [!DNL Marketo Measure] rastreia via JavaScript. Por exemplo, campos como: URL do formulário, Página de aterrissagem, Página de referenciador etc., não serão preenchidos. Portanto, é recomendável dividir as campanhas em cada fonte, se possível. Abaixo está um exemplo de mapeamento ideal.

| Tipo de campanha dinâmica | Canal | Subcanal |
|---|---|---|
| Pesquisa paga - AdWords | Pesquisa paga | AdWords |
| Pesquisa paga - Bing | Pesquisa paga | Bing |
| Pesquisa paga - Yahoo | Pesquisa paga | Yahoo |

Se você não tiver uma maneira de identificar uma fonte ou se não valer tempo e esforço, poderá usar um Tipo de campanha mapeado para um canal chamado &quot;Digital herdado&quot; ou &quot;Site histórico&quot;.

**Offline:**

Para ter pontos de contato para esforços de marketing offline do passado, os dados devem ser organizados em [!DNL Dynamics] campanhas e sincronizadas com [!DNL Marketo Measure]. O processo é igual ao dos canais offline atuais (sincronizar a campanha por meio de Listas de marketing ou Respostas de campanha). Veja abaixo um exemplo de mapeamento de canal.

| Tipo de campanha dinâmica | Canal | Subcanal |
|---|---|---|
| Eventos - Conferências Patrocinadas | Eventos | Conferências Patrocinadas |
| Eventos - Eventos de parceiros | Eventos | Eventos de parceiros |
| Eventos - Eventos hospedados | Eventos | Eventos hospedados |
| Webinar - Webinar do parceiro | Webinar | Webinar do parceiro |

Se esses dados ainda não estiverem organizados em Campanhas com as datas corretas definidas, você poderá usar o campo &quot;Data do ponto de contato do comprador&quot; para refletir a data precisa da atividade offline no passado.

