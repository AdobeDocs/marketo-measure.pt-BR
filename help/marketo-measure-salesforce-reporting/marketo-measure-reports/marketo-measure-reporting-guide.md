---
description: "[!DNL Marketo Measure] Guia de relatórios - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Guia de relatórios"
exl-id: 9b991f9e-c187-4b43-b0a8-8ed3e9a6056b
source-git-commit: 51397a02872035fef41d308c1f855bcaecc29c4e
workflow-type: tm+mt
source-wordcount: '6395'
ht-degree: 2%

---

# [!DNL Marketo Measure] Guia de relatórios {#marketo-measure-reporting-guide}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

Antes de criar uma [!DNL Marketo Measure] relatório, é mais importante confirmar seu [!DNL Marketo Measure] As Configurações da conta foram revisadas e configuradas para garantir que os dados nos relatórios sejam precisos e reflitam as especificidades de seu negócio. Além disso, os relatórios de projetos funcionam melhor quando seguem um processo estruturado. Justin Norris, a [!DNL Marketo Measure] usuário avançado, defensor e parceiro da [Perkuto](https://perkuto.com/) resumido experimentalmente [como abordar a criação de relatórios no [!DNL Marketo Measure]](https://perkuto.com/blog/turning-attribution-data-into-actionable-insights/):

**Estabelecer metas**: &quot;A primeira pergunta é: por que medimos?&quot; Lori Wizard de [Forrester Research](https://go.forrester.com/) resumi-lo bem em uma [Webinário do Marketo](https://www.marketo.com/webinars/beyond-revenue-performance-real-kpis-of-b2b-marketing/). Segundo ela, &quot;nós medimos para provar ou validar uma decisão ou o valor do marketing ou para melhorar (aprimoramento do processo)&quot;. Acrescentamos que os insights de uma boa medição também fornecem informações e orientação sobre o processo de planejamento de marketing.

Então, antes de começar, é essencial ser claro em seus objetivos, as perguntas que você está tentando responder, ou os problemas que você está tentando resolver. Que história você quer contar? Que decisões serão tomadas? Com demasiada frequência, estes fundamentos são mal pensados, levando à frustração de todos os envolvidos&quot;.

**Design do relatório**: &quot;Em seguida, é necessário projetar o relatório e determinar as dimensões, métricas e conjuntos de dados específicos que ele conterá. Uma experiência comum é fornecer a um usuário empresarial exatamente o que ele solicita, somente para que ele ainda sinta que suas necessidades não são atendidas. Isso ocorre porque o insight que um usuário empresarial está realmente procurando nem sempre está contido no relatório que ele solicita. Um bom analista (ou um MOPS com um analista que aparece) fará perguntas esclarecidas, estabelecerá definições comuns (&quot;então, o que você realmente quer dizer com lead?&quot;) e até esboçará um visual do relatório final para garantir que haja alinhamento. Só então você constrói o relatório, sabendo que você tem um conjunto sólido de requisitos.&quot;

**Report Builder**: &quot;Uma vez que se vai construir, não é incomum entrar em bloqueios de estradas ou becos sem saída. Por exemplo, você pode descobrir que não tem um ponto de dados essencial ou que seus objetos não são vinculados da maneira que você precisa. Para resolver esses problemas, também acho que é importante entender o que está acontecendo &quot;debaixo do capô&quot; em sua máquina de reportagem. Essa fluência permitirá dimensionar rapidamente uma solicitação de relatórios e avaliar se é alcançável (e projetar soluções criativas com mais facilidade, quando não é).&quot;

Vamos dar uma olhada &quot;debaixo do capuz&quot; para entender melhor o que faz a [!DNL Marketo Measure] execução da máquina de relatórios de atribuição.

## Objetos de ponto de contato do comprador (CRM) {#buyer-touchpoint-objects-crm}

No nível mais alto, há duas categorias de relatórios com base nos dois objetos de ponto de contato do comprador diferentes: Essas categorias determinam o tipo de [!DNL Marketo Measure] dados sobre os quais deseja criar relatórios: dados relacionados a um _individual_ ou dados relacionados a um _oportunidade_.

1. **Pontos de contato do comprador** (BTs) / Indivíduos / Envolvimento total

   * Geralmente usado para métricas de &quot;topo do funil&quot; (TOFU) e relatórios relacionados a _indivíduos_ (Clientes potenciais, Contatos, [!DNL Marketo Measure] Pessoas)
   * As BTs são utilizadas para compreender todas as interações de marketing relacionadas com **pessoas**, pois contêm o histórico completo do ponto de contato para cada pessoa. Como lembrete, esses pontos de contato são criados no CRM para o Primeiro contato anônimo, o Toque de criação de lead e qualquer envio ou ponto de contato de formulário subsequente que você escolher sincronizar de uma campanha ou atividade offline.

1. **Pontos de contato da atribuição do comprador** (MTD) / Oportunidade / Nível da conta / Receita

   * Geralmente usado para métricas de &quot;meio e/ou fundo do funil&quot; (MOFU e BOFU) e relatórios relacionados a _Oportunidades_.
   * As MTD representam os pontos de contato pertinentes de todas as pessoas ligadas à **oportunidade** (por meio das Funções de contato da oportunidade ou por meio de uma ID de conta compartilhada, dependendo de suas configurações). Ao contrário das BT que dizem apenas respeito às pessoas, as MTD podem também ser associadas a **receita**. Dessa forma, você usará os BATs para responder perguntas relacionadas a oportunidades, incluindo quantas oportunidades foram abertas ou fechadas, ou o valor e a receita do pipeline.

>[!NOTE]
>
>As MTD são criadas a partir de BT. Essencialmente, o rastreamento começa a nível individual através das BTs. Depois que uma Oportunidade é criada em uma Conta, todos os BTs de Contatos na mesma Conta são referenciados e elegíveis para criar BATs relacionadas à Oportunidade, de modo que você desejará usar um ou o outro dependendo de quais perguntas você está tentando responder: perguntas relacionadas às métricas &quot;Pessoas&quot; (relatórios BT) ou questões relacionadas às métricas &quot;Oportunidade&quot; (relatórios BAT)

Artigo de suporte: [Diferença entre pontos de contato do comprador e pontos de contato da atribuição do comprador](/help/configuration-and-setup/getting-started-with-marketo-measure/difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints.md#configuration-and-setup)

## Buyer Touchpoint (BT) {#buyer-touchpoint-bt}

O BT (Buyer Touchpoint, ponto de contato do comprador) é o objeto usado para rastrear todas as interações de marketing que alguém tem com seus materiais de marketing. Cada pessoa (lead/contato/[!DNL Marketo Measure] Pessoa) A jornada seria representada pelas suas BT relacionadas. Em [!DNL Marketo Measure], a jornada de um indivíduo consiste em:

1. Como essa pessoa interagiu primeiro com nossa marca? (Primeiro contato ou _FT_)
1. Como essa pessoa converteu/tornou-se conhecida/se tornou líder? (Criação de leads ou _LC_)
1. Como mais essa pessoa interagiu com nossa marca e com os materiais de marketing desde que se tornou líder? (_PostLC_)

Pontos de contato do comprador são usados para responder perguntas relacionadas a _pessoas_ (&quot;pessoas&quot; são representadas por Leads ou Contatos em um CRM), como métricas de geração ou aquisição de Lead/Contato, em vez de métricas relacionadas à Oportunidade. Por exemplo:

* Quais canais estão fornecendo mais leads?
* Quais canais são mais ou menos dispendiosos para criar um novo cliente potencial?
* Com que conteúdo meus Leads/Contatos estão se relacionando?
* Qual é a história de marketing de títulos, funções e personas específicos?
* Quais canais direcionam MQLs ou outros status de lead/contato?

Principalmente, as empresas precisam saber, &quot;de onde vêm meus Leads/Contatos?&quot;. Historicamente, isso foi respondido com um valor único e unidimensional (Fonte principal, por exemplo). No entanto, conforme descrito em #1 e #2 acima, sabemos que os Leads podem ter vários pontos de contato durante sua jornada de se tornarem um líder. O Ponto de Contato do Comprador nos permite obter informações sobre as duas interações mais cruciais que representam como um Cliente Potencial foi gerado: Seu primeiro contato e seu principal contato de criação. Os pontos de contato do comprador também são _multidimensional_ o que significa que eles carregam carregamentos de dados de marketing, principalmente de onde a pessoa veio (canal de marketing) e o que a pessoa com quem participou (conteúdo).

O [modelos de atribuição](/help/introduction-to-marketo-measure/overview-resources/marketo-measure-attribution-models.md) fornecer o melhor insight sobre métricas com base em pessoas é:

* **Primeiro contato** - 100% de crédito de atribuição para o primeiro contato do cliente potencial (FT)
* **Criação de leads** - 100% de crédito de atribuição para o Lead Creation Touch (LC) do cliente potencial
* **Forma de U** - abordagem multitoque, com 40% de crédito à FT, 40% de crédito à LC

<table> 
 <tbody>
  <tr>
   <td><img src="assets/bizible-reporting-guide-1.png"></td> 
   <td>O Modelo de Forma de U foi projetado para dar crédito a quaisquer Pontos de Contato de Comprador que resumem como um Cliente Potencial se tornou um Cliente Potencial. Embora os pontos de contato subsequentes desses Leads também possam ser relatados para entender o envolvimento adicional (Post LC), eles não fazem parte da <strong>Jornada de criação de leads</strong> portanto, eles não recebem nenhum crédito de atribuição nos modelos FT, LC ou U.<p>

&#42;Geralmente, a atribuição em forma de U reflete uma divisão par 50/50 entre FT e LC. Se o Lead for convertido na mesma sessão do Primeiro Contato, um único ponto de contato representará as Posições de Ponto de Contato FT e LC. Portanto, 100% da atribuição seria atribuída a um único ponto de contato.</td>
</tr>
 </tbody>
</table>

Esses modelos colocam grande ênfase nas interações de estágio inicial e no envolvimento de topo do funil. A atribuição de Forma de U é o modelo recomendado, pois ela faz parte dos pontos de contato de FT e LC para garantir que seja dado crédito a qualquer toque que influenciou o Lead na criação. No entanto, é possível obter informações adicionais com os modelos de primeiro contato e de toque de criação de leads, se você quiser entender essas partes específicas da jornada de leads com mais detalhes.

## Relatórios recomendados usando o ponto de contato do comprador (BT) {#recommended-reports-using-the-buyer-touchpoint-bt}

1. **LEADS COM PONTOS DE CONTATO DE COMPRADOR**

**1.1. | Novos clientes potenciais por canal de marketing**

Resumir os dados do ponto de contato do comprador do cliente principal pelo campo &quot;Canal de marketing&quot; é a exibição de mais alto nível que representa os canais/táticas que estão influenciando novos leads na criação. Estruturar esse relatório em torno de um &quot;Tipo de data&quot; = &quot;Data de criação&quot; garante que um coorte de &quot;novos leads líquidos&quot; (quando o Lead foi criado em seu CRM) seja estabelecido no relatório.

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>Que canais de marketing estão influenciando os Leads na criação?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Clientes potenciais e pontos de contato de comprador (CRM)<br>
   Métrica: Clientes potenciais ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data de criação do lead (CRM) / Data de criação (Discover)</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Canal de marketing</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td>Primeiro contato, Criação de leads, <strong>Forma de U</strong><br>
   *SUM os campos "Contagem" em seus relatórios do CRM (Contagem - Primeiro contato, Contagem - Criação de leads, Contagem - Forma de U)</td> 
  </tr>
 </tbody>
</table>

>[!TIP]
>
>Para qualquer tipo de relatório &quot;Leads com pontos de contato do comprador&quot;, comece personalizando o relatório pré-criado denominado &quot;[!DNL Marketo Measure] 101º | Clientes potenciais por canal&quot;. Este relatório está disponível imediatamente e é uma ótima sandbox pré-criada, conforme descrito na tabela acima, e pode ser personalizada rapidamente para necessidades de relatórios mais específicas.

**1.2. | Novos leads por Campaign (ou insights mais granulares)**

Para obter informações mais granulares sobre os dados resumidos no relatório &quot;Novos leads por canal de marketing&quot; (1.1), adicione um resumo adicional no nível da campanha. Isso permitirá não apenas entender o que os &quot;Canais de marketing&quot; estão acionando novos Leads para a criação, mas, mais especificamente, quais campanhas nesses canais estão tendo o melhor desempenho:

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>What <i>campanhas</i> estão influenciando os Leads na criação?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Clientes potenciais e pontos de contato de comprador (CRM)<br>
   Métrica: Clientes potenciais ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data de criação do lead (CRM) / Data de criação (Discover)</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Nome da campanha de publicidade (CRM)</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td>Primeiro contato, Criação de leads, <strong>Forma de U</strong><br>
   *SUM os campos "Contagem" em seus relatórios do CRM (Contagem - Primeiro contato, Contagem - Criação de leads, Contagem - Forma de U)</td> 
  </tr>
 </tbody>
</table>

>[!TIP]
>
>Obtenha um insight ainda mais granular resumindo o relatório com outros campos disponíveis do objeto do ponto de contato do comprador. Faça isso definindo agrupamentos adicionais (CRM) ou dimensões (Discover). Dependendo do canal (que pode ser representativo de sua função), pode haver detalhes adicionais além do nível da campanha no qual você deseja obter informações. Vamos analisar a &quot;Pesquisa paga&quot;, por exemplo, na tabela abaixo..

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>What <i>palavras-chave</i> estão influenciando os Leads na criação?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Clientes potenciais e pontos de contato de comprador (CRM)<br>
   Métrica: Clientes potenciais ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td>Canal de marketing = Pesquisa paga</td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data de criação do lead (CRM) / Data de criação (Discover)</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Texto de palavra-chave (CRM) / Palavra-chave (Discover)</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td>Primeiro contato, Criação de leads, <strong>Forma de U</strong><br>
   *SUM os campos "Contagem" em seus relatórios do CRM (Contagem - Primeiro contato, Contagem - Criação de leads, Contagem - Forma de U)</td> 
  </tr>
 </tbody>
</table>

O nível de granularidade pode variar de acordo com o canal. A abordagem recomendada seria perguntar a si mesmo, &quot;e o &#39;canal X&#39; que eu estou procurando entender com mais detalhes?&quot;. Os Gerentes de pesquisa paga também podem estar interessados em dimensões adicionais, como:

* Nome da campanha publicitária
* Conteúdo do anúncio
* Grupo de anúncios

No entanto, os Gerentes de eventos podem estar mais interessados em quais Eventos específicos ou quais tipos de Eventos influenciaram mais os Leads na criação:

* Nome da campanha de publicidade / Campanha Salesforce = Evento específico
* Meio = &quot;Tipo&quot; de campanha

**LEMBRETE**: Pode ser necessário adicionar filtros adicionais a qualquer das variações de relatório descritas acima ou abaixo. Esses filtros seriam específicos da sua organização e seriam algo que as suas equipes de Operações de marketing ou de Vendas poderiam ajudar a aconselhar. Não é incomum que uma organização execute os mesmos filtros em todos os relatórios para garantir que o relatório seja tão limpo e preciso quanto possível. Exemplos comuns podem ser:

* Filtrar quaisquer registros internos dos testes, normalmente por endereço de email
* Filtragem baseada em determinados &quot;Tipos de registro&quot; que podem ser específicos da sua unidade de negócios

**1,3 | Novos leads por conteúdo (somente relatórios de CRM)**

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>What <i>conteúdo</i> estão influenciando os Leads na criação?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Clientes potenciais e pontos de contato de comprador (CRM)</td> 
  </tr>
  <tr>
   <td>Campo de data</td> 
   <td>Data de criação do lead</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Página de aterrissagem<br> 
   URL do formulário</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td>Primeiro contato, Criação de leads, <strong>Forma de U</strong><br></td> 
  </tr>
 </tbody>
</table>

**LEMBRETE**: Os dois campos principais para relatórios de conteúdo/ativos digitais são &quot;Landing Page&quot; e &quot;Form URL&quot;. Esses dois valores podem ser iguais se o lead converter (envia um formulário) na mesma página em que &quot;chegou&quot; (página de aterrissagem), _but_, às vezes esses valores são diferentes. Por exemplo, o lead pode clicar em um link no Facebook que o leva para uma página de seu site (esse seria o valor de &quot;Página de aterrissagem&quot;). O lead pode então sair dessa página, continuar sua sessão no site e terminar enviando um formulário em outra página (URL do formulário). Isso seria resumido em um único ponto de contato que representa de onde o Cliente potencial veio (Canal de marketing), qual conteúdo o trouxe ao site (Página de aterrissagem) e qual conteúdo eles acabaram baixando (URL do formulário). O &quot;URL do formulário&quot; é também o campo de entrada para relatórios em outros formulários não associados ao conteúdo baixável, como formulários &quot;Fale conosco&quot; ou &quot;Solicitação de demonstração&quot;.

>[!TIP]
>
>Obter informações sobre &quot;conteúdo&quot; específico com filtros adicionais
>
>* Filtrar por: A &#39;Página de aterrissagem&#39; CONTÉM (por exemplo):
   >   * /blog
   >   * /ebook
   >   * /webinar
>
>* OU: &#39;URL do formulário&#39; CONTÉM (por exemplo)
   >   * /contato
   >   * /demo


Os relatórios baseados em &quot;conteúdo&quot; oferecem excelente valor ao gerar relatórios sobre qualquer parte do funil, no entanto, eles são usados com mais frequência na parte superior do funil para fornecer informações adicionais sobre um engajamento inicial dos Leads. Considerando que a &quot;Pesquisa orgânica&quot; tende a ser o canal mais forte na condução do engajamento inicial (FT), não há tantos dados no nível da &quot;Campanha&quot;.

Os relatórios baseados em &quot;conteúdo&quot; são excelentes para obter informações sobre o que está gerando leads mais especificamente no canal de marketing de nível superior, neste caso &quot;Pesquisa orgânica&quot;.

**1,4 | Total de participação no cliente potencial em um determinado intervalo de datas**

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>Quais canais de marketing tiveram mais <i>total de participação de cliente potencial</i> no passado (semana/mês/trimestre)?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Clientes potenciais e pontos de contato de comprador (CRM)<br> 
   Métrica: Clientes potenciais ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data do Touchpoint</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Canal de marketing (ou mais granular)</td> 
  </tr>
  <tr>
   <td>Modelos ideais*</td> 
   <td>*Este relatório trata menos de medir de onde os Leads vêm com um modelo de atribuição, mas mais sobre o <i>número total de pontos de contato (quantidade de envolvimento)</i>, inclusive depois do contato de criação do cliente potencial. A contagem total de registros de pontos de contato reflete quais canais viram mais envolvimento de Cliente potencial.</td> 
  </tr>
 </tbody>
</table>

**LEMBRETE**: Basear seus relatórios em &quot;Data do ponto de contato&quot; é a maneira mais refletiva de entender o desempenho do marketing durante um determinado intervalo de datas. A &quot;Data do ponto de contato&quot; estrutura o relatório de uma maneira em que a atribuição não está apenas relacionada ao canal, campanha ou conteúdo, mas também mostra quando o ponto de contato ocorreu. Essa é a maneira mais eficaz de entender o que o envolvimento de marketing estava acontecendo em um determinado momento e também a maneira recomendada de medir o impacto do marketing, em comparação com o investimento de marketing feito ao mesmo tempo. É recomendado fazer qualquer investimento de marketing ou análise de ROI (ver 5.1).

**2. LEADS QUALIFICADOS DE MARKETING COM PONTOS DE CONTATO DE COMPRADOR**

Um dos relatórios mais comuns é focado não apenas em novos leads ou engajamento no nível de lead, mas mais especificamente em &quot;leads qualificados para marketing&quot; (MQLs). Há algumas abordagens diferentes no que diz respeito aos relatórios de MQLs, dependendo do [!DNL Marketo Measure] recursos e funcionalidades aos quais você tem acesso.

**2.1. | Marketing Qualificado Leads por Canal (multitoque)**

Essa abordagem para medir o impacto do marketing sobre os MQLs é essencialmente uma continuação do relatório &quot;Novos leads por canal de marketing&quot; (1.1), mas com os critérios adicionais que os Leads medidos são MQLs mais especificamente. O modelo de atribuição de Forma de U ainda é recomendado aqui para identificar quais canais de marketing e conteúdo estão gerando leads que são _will_ para se tornar um MQL:

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>Quais canais de marketing são os melhores para gerar novos leads que se tornam <i>MQLs</i>?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Clientes potenciais e pontos de contato de comprador (CRM)<br> 
   Métrica: Clientes potenciais ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td>MQL = true*<br>
   *<i>Os MQLs podem ser definidos de forma diferente por organização. Verifique se a [!DNL Marketo Measure] O relatório é filtrado para MQLs usando os mesmos campos que outros relatórios baseados em MQL. Um filtro de Segmento precisaria ser criado da mesma forma para relatórios sobre MQLs em [!DNL Marketo Measure] Descubra.</i></td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data MQL (ou equivalente) / Data de criação ([!DNL Marketo Measure] Discover)<br> <i>A Data de criação do lead também pode ser usada no relatório do CRM se a "Data da MQL" não for uma opção em seu CRM. É importante ter em mente qual campo de data você está usando, quando ele define o conjunto de dados de coorte.</i></td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Canal de marketing</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td>Primeiro contato, Criação de leads, <strong>Forma de U</strong><br> 
   SOMA os campos "Contagem" em seus relatórios de CRM (Contagem - Primeiro contato, Contagem - Criação de leads, Contagem - Forma de U)</td> 
  </tr>
 </tbody>
</table>

**2.2. | Marketing Qualificado Leads por Canal (único toque, somente CRM)**

Essa abordagem para medir o impacto do marketing sobre a influência dos MQLs é mais focada na identificação de quais _ponto de contato único_ foi o último contato antes do Chumbo chegar ao MQL.

>[!NOTE]
>
>Para executar esse relatório, é necessário um valor &quot;Status do lead&quot; de &quot;MQL&quot; para definir o estágio MQL para fins de rastreamento (Estágio do funil). Se os MQLs não forem rastreados por meio do campo &quot;Status de lead&quot;, o recurso Modelo de atribuição personalizado com estágios personalizados será necessário para criar um estágio &quot;MQL&quot; personalizado no [!DNL Marketo Measure] Configurações da conta.

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>Quais canais de marketing são os mais fortes ao forçar o Leads a alcançar o status de MQL?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Clientes potenciais e pontos de contato de comprador (CRM)<br>
   <i>esse relatório só é possível nos relatórios do CRM. Não é possível filtrar em determinados valores de "Posição do ponto de contato" em [!DNL Marketo Measure] Discover</i></td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td><strong>A posição do ponto de contato contém "MQL"</strong></td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data MQL (ou equivalente)</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Canal de marketing</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td><i>Como esse relatório é filtrado em um único ponto de contato, os modelos de atribuição de nível de lead não são tão relevantes. Como o "Relatório de envolvimento de cliente potencial" (1.4), o número de registros de ponto de contato seria aproveitado aqui para entender quais canais são os mais fortes (cada cliente potencial teria apenas um ponto de contato MQL).</i></td> 
  </tr>
 </tbody>
</table>

>[!TIP]
>
>Explore outros agrupamentos ou dimensões para obter informações adicionais sobre MQLs. Conforme mencionado nos outros relatórios &quot;Leads com pontos de contato de comprador&quot;, o ponto de contato de comprador oferece muito mais granularidade do que apenas o canal de marketing. Um relatório baseado em &quot;Conteúdo&quot; também pode ser combinado com qualquer um dos relatórios MQL acima, para entender melhor qual conteúdo está influenciando melhor os MQLs.

**3. [!DNL MARKETO MEASURE] PESSOAS COM PONTOS DE CONTATO DE COMPRADOR**

Há um terceiro personalizado [!DNL Marketo Measure] no Salesforce, que pode ser muito útil ao relatar métricas relacionadas a pessoas: **o [!DNL Marketo Measure] Pessoa (BP)**. O BP resolve o antigo problema de como representar informações de Clientes Potenciais e Contatos no mesmo relatório. Une todas as BT relacionadas com uma &quot;pessoa&quot; (a) [!DNL Marketo Measure] A ID da pessoa é seu endereço de email). Independentemente de existirem como Líder ou Contato, a BP atua como um objeto de ponte, para ajudar os relatórios a atravessar o Lead e o Contato, e é muito útil para produzir relatórios mais sofisticados sobre as pessoas.

O [!DNL Marketo Measure] A pessoa está relacionada a apenas um dos objetos do ponto de contato, o Ponto de contato do comprador (BT). Isso significa que ele não pode ser aproveitado para uma Oportunidade ou métricas relacionadas à receita. Um &#39;[!DNL Marketo Measure] O tipo de relatório Pontos de contato de pessoa e comprador é excelente para entender _total de engajamento_ uma vez que diz respeito a todas as BT, independentemente de a BT se referir mais especificamente a um cliente potencial ou a um contato. Por exemplo - se você tiver uma Campanha do Salesforce em uso para rastrear um Evento, é possível ter membros da campanha dentro da Campanha CRM que existam como Líderes OU Contatos. [!DNL Marketo Measure] criará pontos de contato para os membros da campanha independentemente, mas sem o [!DNL Marketo Measure] Pessoa, os relatórios padrão do Salesforce exigiriam dois relatórios separados para entender quantos _total_ pontos de contato do Evento: um que é &#39;Leads com pontos de contato de comprador&#39; e outro que é &#39;Contatos com pontos de contato de comprador&#39;. Alguns outros [!DNL Marketo Measure] Os casos de uso de relatório com base em pessoas estão listados abaixo:

**3.1. [!DNL Marketo Measure] Pessoas que baixaram &quot;livros&quot; ou &quot;documentos&quot; (total de downloads)**

Este relatório seria o mesmo que um relatório baseado em &quot;Conteúdo&quot; no nível de lead. No entanto, em vez de tentar medir o número de Leads atribuíveis a cada parte do conteúdo, usando um [!DNL Marketo Measure] O relatório Pessoas será útil para entender o total _número de downloads_ se o ativo for armazenado (o número total de pontos de contato representaria o número total de downloads/envios de formulário).

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>Quantas pessoas baixaram um ativo específico?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>[!DNL Marketo Measure] Pontos de contato de pessoas e compradores (CRM)</td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td>'URL do formulário' CONTÉM (por exemplo)<br>
   <li>/ebook</li>
   <li>/whitepaper</li>
   <i>Os valores de filtro acima são apenas exemplos. O valor real será baseado na estrutura de URL de cada organização.</i></td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data do ponto de contato <i>(quando o ativo foi baixado)</i></td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>URL do formulário</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td>Este relatório trata menos de medir de onde os Leads ou Contatos vêm com um modelo de atribuição, mas mais sobre o <i>número total de pontos de contato (quantidade de envolvimento)</i>, inclusive depois do contato de criação do cliente potencial. Com esse relatório, estamos querendo entender o <i>montante total da participação</i>. A contagem total de registros de pontos de contato reflete quais ativos foram mais baixados.</td> 
  </tr>
 </tbody>
</table>

>[!TIP]
>
>Para qualquer &quot;cliente potencial com [!DNL Marketo Measure] Tipo de relatório Pessoas, comece personalizando o relatório pré-construído intitulado &#39;**[!DNL Marketo Measure]101º | Clientes potenciais/contatos por canal**&quot;. Este relatório está disponível imediatamente e é excelente [!DNL Marketo Measure] Caixa de areia baseada em pessoas. Ele é pré-criado e pode ser personalizado rapidamente para necessidades de relatórios mais específicas.

>[!TIP]
>
>Você pode usar esse relatório para obter informações sobre o engajamento total de qualquer dimensão de marketing do objeto de ponto de contato do comprador, não apenas downloads de conteúdo, como apresentado no exemplo. Em vez disso, o relatório pode ser agrupado ou filtrado em dimensões como &quot;Canal de marketing&quot; ou &quot;Nome da campanha de anúncio&quot; para entender melhor o envolvimento total de Leads e Contatos no seu banco de dados. Basta alterar os filtros ou agrupamentos no relatório para zero em outras dimensões representadas por outros campos a partir do objeto de ponto de contato.

**3.2. [!DNL Marketo Measure] Pessoas que se registraram para um evento (apenas CRM)**

_Esse relatório só é aplicável se os formulários de registro estiverem hospedados em seu(s) site(s) que [!DNL Marketo Measure] é capaz de rastrear digitalmente._

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>Quais Canais de marketing estão gerando meus registros de eventos?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>[!DNL Marketo Measure] Pontos de contato de pessoas e compradores (CRM)</td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td>'URL do formulário' CONTÉM (por exemplo)<br>
   <li>/evento</li>
   <i>O valor de filtro acima são apenas exemplos. O valor real será baseado na estrutura de URL de cada organização.</i></td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data do ponto de contato <i>(aquando da apresentação do formulário de registro)</i></td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>URL do formulário<br>
   Canal de marketing</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td>Este relatório trata menos de medir de onde os Leads ou Contatos vêm com um modelo de atribuição, mas mais sobre o <i>número total de pontos de contato (número de registros)</i>, inclusive depois do contato de criação do cliente potencial. Com esse relatório, estamos buscando obter informações sobre o que está gerando registros de eventos. A contagem total de registros de pontos de contato por "Canal de marketing" refletiria quais canais levaram mais registros.</td> 
  </tr>
 </tbody>
</table>

A principal conclusão desse relatório é que os dados do ponto de contato do comprador também fornecerão dados do canal de marketing. Embora você já tenha informações sobre o número de pessoas que se registraram em seus eventos, este relatório também fornecerá informações sobre quais Canais de marketing digital, Fontes e/ou Campanhas estão trazendo pessoas para seu site para se registrarem no evento.

>[!TIP]
>
>Essa mesma abordagem pode ser adotada ao buscar informações sobre registros do webinar ou talvez downloads de webinars sob demanda (se forem um ativo fechado). A única diferença seria o valor de filtro no &quot;URL do formulário&quot; se esses formulários estivessem hospedados em páginas exclusivas do seu site. Mas o objetivo é o mesmo. Ele responde às perguntas &quot;quais dos meus Canais de marketing estão liderando a maioria dos downloads de webinários de registros/sob demanda.

**3,3 [!DNL Marketo Measure] Pessoas com pontos de contato de comprador (validação de ponto de contato)**

Considere a [!DNL Marketo Measure] A Pessoa nos permite relatar todos os pontos de contato em um único relatório. É o tipo de relatório ideal a ser usado ao tentar validar seus dados. Queremos garantir que não estamos ignorando nenhum ponto de contato que possa revelar onde, por exemplo, há um problema na configuração de seus &quot;Canais de marketing&quot; (consulte os artigos de suporte vinculados abaixo para obter mais informações sobre como configurar seus &quot;Canais de marketing&quot;).

* [Configuração de canal personalizado online](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md)
* [Configuração de canal personalizado offline](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md)

Essencialmente, os dados do ponto de contato refletirão o que foi rastreado pelo [!DNL Marketo Measure] e podem ser auditadas para garantir que sua configuração corresponda a entradas com base em coisas como: Valores de parâmetro da UTM, Páginas de referência ou Tipos de campanha. Se os dados do ponto de contato não corresponderem à sua configuração, algo provavelmente precisará ser ajustado. Além da configuração &quot;Canal de marketing&quot;, você pode ver os dados do ponto de contato para determinar quais pontos de contato precisam ser [suprimido](/help/advanced-marketo-measure-features/touchpoint-settings/touchpoint-removal-and-touchpoint-suppression.md) ou [segmentado](/help/advanced-marketo-measure-features/segmentation/custom-segmentation.md). É recomendável auditar seus dados de ponto de contato em um[!DNL Marketo Measure] Relatório de Pessoas e Pontos de Contato de Comprador no final de cada mês ou trimestre, se possível. Isso garantirá que sua atribuição seja tão precisa quanto possível. O &quot;[!DNL Marketo Measure] 101º | Relatório de clientes potenciais/contatos por canal disponível e pronto para uso é um excelente ponto de partida. Inclua os seguintes campos se eles ainda não estiverem incluídos para revisar algumas das partes mais cruciais da configuração:

* **Canal de marketing** - Caminho = Canal de marketing.Subcanal (valores definidos em [!DNL Marketo Measure])
* **Fonte do ponto de contato** = utm_source
* **Médio** = utm_medium (pontos de contato online) OU Tipo de campanha CRM (pontos de contato offline)
* **Página Referenciador** (usado a configuração &quot;Canais online&quot;)
* **Página de aterrissagem - Bruta** (usada a configuração &quot;Canais online&quot;) também é uma entrada comum para supressão de pontos de contato na guia &quot;Configurações de ponto de contato&quot; de suas Configurações)
* **URL do formulário** (uma entrada comum para supressão de pontos de contato na guia &quot;Configurações de ponto de contato&quot; das Configurações)

**PONTO DE CONTATO DE ATRIBUIÇÃO DE COMPRADOR (BAT)**

Os BATs (Buyer Attribution Touchpoints) representam os pontos de contato relevantes de todos os Contatos conectados à Oportunidade (por meio de Funções de Contato da Oportunidade ou por meio de uma ID de conta compartilhada, dependendo de suas configurações). Ao contrário das BT (que estão principalmente ligadas às pessoas), as MTD podem ser associadas às receitas. Dessa forma, você usará os BATs para responder perguntas relacionadas a oportunidades, principalmente abertas _Oportunidades/Receita do pipeline_ e fechado _Oportunidades/Contratos/Receita_. Uma MTD é criada através de registros BT de um contato logo que uma Oportunidade seja criada na mesma conta que o contato (a BT não é convertida numa MTD. Os dados BT são simplesmente referenciados para criar um registro adicional - a MTD que se relaciona depois com a Oportunidade).

O ponto de contato de atribuição do comprador permite medir o impacto do marketing de forma mais profunda no funil. _A profundidade do funil no qual você deseja medir pode ser representada pelos vários modelos de atribuição de multitoque_.

Tendo em conta que a relação principal das MTD é com a Oportunidade, estas são utilizadas para responder a questões como:

* Quais dos meus esforços de marketing influenciaram mais oportunidades?
* Quanta nova receita de pipeline posso atribuir a cada um dos meus canais de marketing?
* Quais das minhas campanhas viram o maior ROI do último trimestre?

O [modelos de atribuição](/help/introduction-to-marketo-measure/overview-resources/marketo-measure-attribution-models.md) fornecer o melhor insight sobre as métricas baseadas em Oportunidade são:

**Forma de W** - O &quot;_Modelo de pipeline_&quot;. Três pontos de contato de marco estão incluídos no modelo de Forma de W. Neste modelo, os touchpoints FT, LC e OC são atribuídos a cada um 30% do crédito de atribuição. Os 10% restantes são atribuídos igualmente a quaisquer pontos de contato intermediários que ocorram entre os três pontos de contato do marco.

<table> 
 <tbody>
  <tr>
   <td><img src="assets/bizible-reporting-guide-2.png"></td> 
   <td>Este modelo resume basicamente a jornada de uma nova Oportunidade que normalmente é sinônimo da geração de nova Receita de pipeline.<p>
   <p>
   Ao tentar medir o impacto do marketing nas novas Oportunidades ou no novo pipeline gerado, o modelo de Forma de W é recomendado.</td> 
  </tr>
 </tbody>
</table>

**Caminho Completo** - O &quot;_Modelo Won Fechado_&quot;. Este modelo inclui os quatro pontos de contato do marco: FT, LC, OC e Closed. Cada um recebe 22,5% do crédito da Oportunidade, e os 10% restantes são distribuídos igualmente entre os toques intermediários.

<table> 
 <tbody>
  <tr>
   <td><img src="assets/bizible-reporting-guide-3.png"></td> 
   <td>Este modelo resume basicamente a jornada de um acordo fechado que é tipicamente sinônimo de receita/reservas vencidas e fechadas.<p>
   <p>
   Ao tentar medir o impacto do marketing em contratos fechados ou receita vencida fechada, o Modelo de caminho completo é recomendado.</td> 
  </tr>
 </tbody>
</table>

Este modelo resume basicamente a jornada de um acordo fechado que é tipicamente sinônimo de receita/reservas vencidas e fechadas.

Ao tentar medir o impacto do marketing em contratos fechados ou receita vencida fechada, o Modelo de caminho completo é recomendado.

**Personalizado** - [!DNL Marketo Measure] O também oferece um modelo de Atribuição personalizada que permite aos usuários escolher quais pontos de contato ou estágios personalizados serão incluídos em seu modelo. Além disso, os usuários podem controlar a porcentagem do crédito de atribuição atribuído a esses pontos de contato e estágios. Dependendo da configuração do seu modelo personalizado, ele pode ser usado mais apropriadamente para medir Oportunidades e Pipeline OU, Vendas e Receita Vencedora Fechada. Lembre-se disso ao usá-lo em seus relatórios.

>[!NOTE]
>
>O Modelo de atribuição personalizada é um recurso adicional não disponível para todos os clientes. Entre em contato com a equipe de conta do Adobe (seu gerente de conta) para saber mais sobre como adicionar esse recurso à sua conta.

Geralmente, os profissionais de marketing precisam saber, &quot;de onde vêm minhas oportunidades?&quot;. Semelhante ao relatório de nível de lead, essa pergunta era historicamente respondida com um valor único e unidimensional (Fonte de campanha primária, por exemplo). No entanto, sabemos que muito mais vai para o desenvolvimento de uma Oportunidade do que um único ponto de contato de um único contato. Normalmente, há vários pontos de contato de vários canais e de várias partes interessadas que influenciam uma Oportunidade na criação. Com [!DNL Marketo Measure], podemos exibir todos os pontos de contato de uma Conta para entender melhor de onde veio uma Oportunidade. Além disso, no entanto, podemos continuar a destacar qualquer ponto de contato que tenha ocorrido após a criação da Oportunidade e até o ponto em que a Oportunidade é fechada. Isso nos permite não apenas adotar uma abordagem multitoque para entender de onde veio uma Oportunidade, mas também o que a influenciou a fechar e, por fim, representar receita vencida fechada. Isso dá insights sobre diferentes perguntas como, &quot;qual é o impacto do marketing em influenciar os Contratos a fechar?&quot;, &quot;que marketing está direcionando a Receita fechada?&quot; e, por fim, &quot;quais dos meus esforços de marketing estão vendo o maior ROI?&quot;

## RELATÓRIOS RECOMENDADOS USANDO O PONTO DE CONTATO ATRIBUIÇÃO DE COMPRADOR (BAT) {#recommended-reports-using-the-buyer-attribution-touchpoint}

**4.1. | Novas oportunidades por canal de marketing**

Resumir os dados do ponto de contato da atribuição do comprador de oportunidades pelo campo &quot;Canal de marketing&quot; é a exibição de mais alto nível que representa quais canais/táticas estão influenciando novas oportunidades na criação. Estruturar esse relatório em torno de um &quot;Tipo de data&quot; = &quot;Data de criação da oportunidade&quot; garante que também estejamos resumindo o relatório com base em quando a oportunidade foi realmente criada em seu CRM. Os pontos de contato podem ter sido de algum momento antes, mas ainda estarão relacionados às Oportunidades que foram criadas dentro do Intervalo de datas definido e, portanto, receberão crédito de atribuição, pois são reconhecidas como influenciando a Oportunidade.

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>What <i>canais de marketing</i> estão influenciando as oportunidades na criação?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Pontos de contato da atribuição do comprador com oportunidades (CRM)<br> 
   Métrica: Oportunidades ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td>
   <li>Fase da Oportunidade* <i>(opcional, dependendo de quais oportunidades específicas você pode querer limitar ao relatório. Você só pode desejar criar relatórios sobre as MTD que ainda estão associadas a oportunidades "abertas" (por exemplo)</i></li>
   <li>Tipo de Oportunidade (é comum filtrar em determinadas Oportunidades, ou seja, "Novas empresas" em vez de <i>all</i> Oportunidades)</li><br>
   *Um filtro de Segmento para "Tipo de Oportunidade" deve ser aproveitado em [!DNL Marketo Measure] Discover</td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data de criação da oportunidade (CRM) / Data de criação (Discover)</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Canal de marketing</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td><strong>Forma de W</strong><br>
   SOMA os campos "Forma de W" em seus relatórios de CRM (Contagem - Forma de W, Receita - Forma de W)</td> 
  </tr>
 </tbody>
</table>

>[!TIP]
>
>Para qualquer tipo de relatório &quot;Pontos de contato da atribuição do comprador com oportunidades&quot;, comece personalizando o relatório pré-construído intitulado &quot;[!DNL Marketo Measure] 101º | Oportunidades por Canal&quot;. Este relatório está disponível imediatamente e é uma ótima sandbox pré-criada conforme descrito na tabela acima e pode ser rapidamente personalizada para necessidades de relatórios mais específicas (o relatório usa um modelo de Caminho completo pronto para uso, portanto, personalize o relatório para incluir qualquer outro modelo de atribuição, neste caso, o modelo de Forma W).

>[!TIP]
>
>O relatório acima referido também seria utilizado para entender a quantidade de moeda que também deve ser atribuída. Ao relatar ao nível da Oportunidade usando MTD, há duas métricas principais que devem ser resumidas: moeda (o valor da Oportunidade) e o próprio registro da Oportunidade. No exemplo acima, estamos medindo Oportunidades Abertas e nova receita de pipeline.

>[!TIP]
>
>Obtenha um insight ainda mais granular resumindo o relatório com outros campos disponíveis do objeto de ponto de contato de atribuição do comprador. Isso é feito da mesma forma que foi no nível do Lead com pontos de contato de comprador (1.2). Faça isso adicionando agrupamentos adicionais (CRM) ou dimensões (Discover). Dependendo do canal (que pode ser representativo de sua função), pode haver detalhes adicionais além do nível da campanha no qual você deseja obter mais informações. Vamos analisar a &quot;Pesquisa paga&quot; abaixo:

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>Qual <i>palavras-chave</i> de meus anúncios de Pesquisa paga estão gerando a maior receita de pipeline?
</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Pontos de contato da atribuição do comprador com oportunidades (CRM)<br> 
   Métrica: Oportunidades ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td>
   <li>Canal de marketing = Pesquisa paga</li>
   <li>Fase da Oportunidade* <i>(opcional, dependendo de quais oportunidades específicas você pode querer limitar ao relatório. Este exemplo é baseado na Receita do pipeline que é definida em [!DNL Marketo Measure] por Oportunidades "Abertas" representando potencial receita/pipeline aberto)</i></li>
   <li>Tipo de Oportunidade (é comum filtrar em determinadas Oportunidades, ou seja, "Novas empresas" em vez de <i>all</i> Oportunidades)</li><br>
   *Um filtro de Segmento para "Tipo de Oportunidade" deve ser aproveitado em [!DNL Marketo Measure] Discover</td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data de criação da oportunidade</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Texto de palavra-chave (CRM)<br> 
   Palavra-chave (Discover)</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td><strong>Forma de W</strong><br>
   SOMA os campos "Forma de W" em seus relatórios de CRM (Contagem - Forma de W, Receita - Forma de W)</td> 
  </tr>
 </tbody>
</table>

**4.2. | Contratos por canal de marketing**

Este relatório seria essencialmente o mesmo do primeiro exemplo de Ponto de Contato de Atribuição de Comprador (4.1), exceto que a métrica agora mudou de Oportunidades abertas para Vendas vencidas fechadas. A métrica deve ser sempre o que informa qual modelo de atribuição usar. Considerando que estamos agora a olhar para acordos fechados e para as suas MTD relacionadas, devemos usar um modelo que represente toda a jornada do comprador (Deal). Isso garante que qualquer faixa de toque de marketing durante a jornada do comprador receba crédito de atribuição:

<table> 
 <tbody>
  <tr>
   <td>Pergunta</td> 
   <td>What <i>canais de marketing</i> estão influenciando o fechamento dos contratos?</td> 
  </tr>
  <tr>
   <td>Tipo de relatório</td> 
   <td>Pontos de contato da atribuição do comprador com oportunidades (CRM)<br> 
   Métrica: Contratos ([!DNL Marketo Measure] Discover)</td> 
  </tr>
  <tr>
   <td>Filtros</td> 
   <td>
   <li>Estágio da Oportunidade (<i>Somente Oportunidades de Vencedor Fechadas devem estar no relatório</i>) OU,</li>
   <li>Vencedor da Oportunidade = Verdadeiro</li>
   <li>Tipo de Oportunidade (é comum filtrar em determinadas Oportunidades, ou seja, "Novas empresas" em vez de todas as oportunidades)<br>
   </td> 
  </tr>
  <tr>
   <td>Campo de data/Tipo de data</td> 
   <td>Data de Fechamento da Oportunidade</td> 
  </tr>
  <tr>
   <td>Intervalo de datas</td> 
   <td><i>selecionar intervalo de datas desejado</i></td> 
  </tr>
  <tr>
   <td>Grupo / Dimension</td> 
   <td>Canal de marketing</td> 
  </tr>
  <tr>
   <td>Modelos ideais</td> 
   <td><strong>Caminho Completo</strong><br>
   SOMA os campos "Caminho completo" em seus relatórios do CRM (Contagem - Caminho completo, Receita - Caminho completo)</td> 
  </tr>
 </tbody>
</table>

**LEMBRETE**: É crucial lembrar filtrar as Oportunidades específicas que você deseja incluir nos relatórios baseados em BAT, especialmente quando se trata de &quot;Oportunidades Abertas e Receita de Pipeline&quot; vs. &quot;Vendas e Receita vencedora fechada&quot;. Isso normalmente é feito por meio de um filtro &quot;Estágio da oportunidade&quot; (o filtro &quot;Vencedor da oportunidade&quot; = true/false também pode ser muito útil aqui).

**5. ROI ([!DNL Marketo Measure] Somente Discover)**

O [!DNL Marketo Measure] Os painéis do Discover fornecem uma visão de alto nível do desempenho de marketing usando [!DNL Marketo Measure] dados de atribuição. Esses painéis agregados fornecem os principais dados de gastos com marketing e ROI que não estão disponíveis nos relatórios de CRM. Esse ambiente pré-criado permite que você visualize seu desempenho de marketing em alinhamento aos dados de ROI, permitindo que você tome decisões acionáveis em relação ao seu marketing.

>[!TIP]
>
>Sempre que você tiver uma pergunta relacionada ao ROI, Gasto ou Custo, [!DNL Marketo Measure] O Discover será o melhor lugar para os relatórios!

O [!DNL Marketo Measure] Os painéis do Discover são compostos de dados de pontos de contato de anúncio de compra e de pontos de contato de atribuição de comprador, bem como de dados importantes do CRM. A principal diferença entre relatórios de CRM e relatórios em [!DNL Marketo Measure] O Discover é que os dados do ponto de contato no Discover são apresentados de forma &quot;agregada&quot; e resumidos por dimensão (Canal de marketing, Campanha etc.) em vez de registros de pontos de contato individuais que podem ser resumidos. [!DNL Marketo Measure] O Discover é usado para entender em um nível alto quais de seus esforços estão tendo o maior impacto nos Leads, Opps, Deals e quanta receita deve ser atribuída a eles. Depois que tivermos a receita atribuída calculada por meio dos vários modelos de atribuição (Caminho completo é recomendado para atribuição de receita/reservas vencidas e fechadas), poderemos então mensurá-la em relação ao quanto foi gasto na mesma dimensão (Canal de marketing, Subcanal ou Campanha). Isso então nos dá o **ROI**.

>[!TIP]
>
>Uma das coisas mais importantes a lembrar ao criar relatórios no Discover é qual tipo de dados você está usando para filtrar. O Tipo de data ditará qual conjunto de dados [!DNL Marketo Measure] O está usando o nos vários blocos.

* **Data do ponto de contato**: Exibe os dados relacionados que tinham uma &quot;Data do ponto de contato&quot; no período especificado
* **Data de criação**: Exibe os dados relacionados que tiveram uma &quot;Data de criação&quot; no período especificado
* **Data de Fechamento**: Exibe os dados relacionados que tinham uma &quot;Data de Fechamento&quot; no período especificado

Ao criar relatórios sobre o ROI em [!DNL Marketo Measure] Discover, é recomendável usar um &#39;Tipo de data&#39; = &quot;Data do ponto de contato&quot;. Para determinar a rentabilidade de cada dólar investido, é necessário assegurar que a receita seja imputada à data em que o investimento foi feito. &#39;Tipo de data&#39; = &quot;Data do ponto de contato&quot; garante que os relatórios sejam estruturados dessa forma, e não quando a Oportunidade foi criada (Criar data) ou fechada (Data de fechamento). Vejamos de perto:

Os filtros destacados abaixo são cruciais para um relatório focado no ROI em [!DNL Marketo Measure] (provavelmente, você definirá esses filtros nas placas &quot;Visão geral&quot;, &quot;OCM&quot; ou &quot;ROI&quot;):

**5.1. | ROI no quadro &quot;Visão geral&quot;**

![](assets/bizible-reporting-guide-4.png)

O intervalo &quot;Data&quot; não apenas define a coorte de pontos de contato (por Data do ponto de contato) que estão recebendo atribuição, como também define o intervalo que o bloco &quot;Gasto&quot; ou as colunas representam.
[!DNL Marketo Measure] simplesmente observa o intervalo &quot;Data&quot; para determinar quanto foi gasto no total ou nos níveis de Canal de marketing, Subcanal ou Campanha Veja abaixo:

![](assets/bizible-reporting-guide-5.png)

A captura de tela acima mostra os dados de gastos de marketing dos últimos 3 meses completos. Neste exemplo, US$ 12.970 foram gastos em todos os canais. Esse número é composto pelos dados de gasto de marketing [!DNL Marketo Measure] O tem de integrações com qualquer uma de suas contas de anúncios conectadas (Google AdWords, Bing Ads, Facebook Ads, LinkedIn, DoubleClick) e qualquer gasto de marketing adicional que tenha sido carregado em sua conta, ou obtido automaticamente de registros de Campanha em seu CRM. O exemplo também mostra o quanto a receita vencida fechada também pode ser atribuída aos pontos de contato que ocorreram durante o mesmo intervalo de datas (caixas verdes). É assim que o ROI é calculado: Receitas atribuídas a pontos de contato provenientes de investimentos no mesmo intervalo de datas:

![](assets/bizible-reporting-guide-6.png)

**LEMBRETE**: [!DNL Marketo Measure] define &quot;Receita&quot; como Receita vencida fechada ou Contabilização e define &quot;Receita do Pipeline&quot; como _receitas abertas/potenciais de oportunidades abertas_.

Outra importante retirada do relatório ROI acima é a &quot;Receita de pipeline&quot; representada dentro da caixa vermelha. Isso significa que, dos US$ 12.970 investidos nos últimos 3 meses completos, estamos atribuindo atualmente US$ 705.199 de &quot;Receita&quot; vencida, mas também estamos atribuindo US$ 6.905.532 de receita potencial aberta (Receita do pipeline) para pontos de contato criados do mesmo investimento! O que esperaríamos ver é uma parte da &quot;Receita de pipeline&quot; próxima ao longo do tempo, alimentando o número de &quot;Receita&quot; e, portanto, o número de ROI aumentaria com o tempo. O número &quot;Gasto&quot; foi corrigido porque não podemos voltar no tempo para gastar mais nos últimos três meses completos. Essa é a importância de usar um &quot;Tipo de data&quot; de &quot;Data do ponto de contato&quot; em qualquer relatório de ROI: Ela define o valor (**I**)aninhado e garante a quantidade de (**R** As receitas atribuídas são atribuídas aos mesmos pontos de contato que foram provenientes do investimento (por cada dólar gasto, quanto foi feito?).

>[!TIP]
>
>Filtre em Canais de marketing, Subcanais e/ou Campanhas nas quais você sabe que os dados de Gastos de marketing são completos e precisos. O exemplo acima é para todos os Canais de marketing, mas se alguns Canais não tiverem os dados relacionados de Gasto de marketing carregados, o relatório de ROI poderá ser impreciso. Veja o exemplo abaixo, desta vez na placa &quot;ROI&quot;, que está focada nas Campanhas no Canal de marketing de &quot;Pesquisa paga&quot;, um Canal com dados de gastos de marketing muito granulares por meio das integrações.

![](assets/bizible-reporting-guide-7.png)
