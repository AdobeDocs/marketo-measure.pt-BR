---
unique-page-id: 35586080
description: Integração do linkedIn - [!DNL Marketo Measure] - Documentação do produto
title: Integração do linkedIn
exl-id: 705209ef-1ece-496c-ac2f-6a31055bd993
feature: APIs, Integration
source-git-commit: 560ca558ae9ef4d2ef4da57eb9bfa672ed00e0fc
workflow-type: tm+mt
source-wordcount: '2653'
ht-degree: 3%

---

# Integração do linkedIn {#linkedin-integration}

## Visão geral {#overview}

A variável [!DNL Marketo Measure] A integração do com o LinkedIn é dividida em duas partes:

Conteúdo patrocinado: A integração do Conteúdo patrocinado permite [!DNL Marketo Measure] para marcar URLs de destino em [!DNL LinkedIn] anúncios, o que, em última análise, permite [!DNL Marketo Measure] para seguir um usuário por toda a jornada do ponto de contato e mapear a atividade de volta para a variável [!DNL LinkedIn] Campaign e Creative. Isso fornece insights aos clientes sobre o ROI de seus [!DNL LinkedIn] atividade.

Lead Gen Forms: por meio da integração com o Lead Gen Forms da LinkedIn, a Marketo Measure obtém insights sobre os formulários que foram enviados por meio da plataforma LinkedIn. Esses preenchimentos de formulário são comparados com clientes em potencial do seu CRM ou [!DNL Marketo Engage] para que sejam qualificados para atribuição. Com insights sobre a Campanha, a Criação e o Formulário que ajudaram a gerar os formulários, as equipes podem otimizar ainda mais o marketing e o investimento em anúncios do LinkedIn.

## Disponibilidade {#availability}

Disponível para todos os usuários.

## Requisitos {#requirements}

**Funções do gerente de campanha**

Para [!DNL Marketo Measure] para baixar dados de custo do Ads Data &amp; Ads, você deve ter uma das seguintes funções no Gerenciador de campanhas:

* Administrador de Cobrança
* Gerenciador de conta
* Gerente de campanha

Saiba mais: [Funções e funções do usuário no Campaign Manager](https://www.linkedin.com/help/lms/answer/a425731/user-roles-and-functions-in-campaign-manager).

**Funções de administrador de mídia paga**

Para [!DNL Marketo Measure] Para criar/atualizar criações patrocinadas, você deve ter uma das seguintes funções de administrador de mídia paga:

* Pôster de conteúdo patrocinado
* Gerente líder do Forms Manager

Saiba mais: [Funções de administrador da página do linkedIn](https://www.linkedin.com/help/linkedin/answer/4783/linkedin-page-admin-roles-overview).

Há outros [!DNL LinkedIn] funções que desempenhamos **não** necessários para nossa integração. Essas funções são frequentemente confundidas com as funções necessárias, portanto, observe que há uma diferença!

**Funções do administrador da página**

Para [!DNL Marketo Measure] para baixar/integrar clientes em potencial a partir de formulários da geração de clientes potenciais, é necessário ter a seguinte função de Administrador da página:

* Super Admin

Saiba mais: [Funções de administrador da página do linkedIn](https://www.linkedin.com/help/linkedin/answer/4783/linkedin-page-admin-roles-overview).

## Tipos de anúncios do linkedIn {#linkedin-ad-types}

[!DNL Marketo Measure] suportará:

**Conteúdo patrocinado:** O conteúdo patrocinado permite entregar conteúdo para o [!DNL LinkedIn] feed de membros além daqueles que estão acompanhando sua empresa. O conteúdo patrocinado pode ser direcionado para um público-alvo específico e pode ajudar os anunciantes a alcançar [!DNL LinkedIn] membros sempre que estejam a participar no [!DNL LinkedIn] plataforma em desktop, dispositivos móveis e tablets. O conteúdo patrocinado com o Forms da geração de clientes potenciais é compatível.

Os tipos de conteúdo patrocinado e formatos compatíveis com o [!DNL Marketo Measure] são Anúncios de imagem única e Anúncios de vídeo (por meio do Lead Gen Forms). Devido à complexidade do esquema, não oferecemos suporte aos anúncios do Carrossel.

[!DNL Marketo Measure] não é compatível com mensagens patrocinadas, anúncios de texto ou anúncios dinâmicos.

![](assets/one.png)

>[!TIP]
>
>Para qualquer uma de suas Campanhas/Gastos originados de uma fonte de Conteúdo não Patrocinada (como Tipo de campanha de &quot;Anúncio de texto&quot; ou &quot;InMail Patrocinado&quot;), [!DNL Marketo Measure] faz _não_ suportam inerentemente o rastreamento desses Tipos de campanha. Se você quiser rastrear os gastos com campanhas como essas junto com seus gastos com &quot;conteúdo patrocinado&quot;, certifique-se de usar nosso CSV de gastos de marketing para registrar manualmente esse gasto.

## Como funciona: conteúdo patrocinado {#how-it-works-sponsored-content}

>[!NOTE]
>
>Antes da primeira utilização, essa configuração de recurso deve ser ativada navegando até [!DNL Marketo Measure] [!UICONTROL Configurações] > [!UICONTROL Integrações] > [!UICONTROL Anúncios] > [!UICONTROL Ativar o LinkedIn Lead Gen Forms].

**[!DNL LinkedIn's]Requisitos exclusivos de marcação automática**

[!DNL Marketo Measure]O pode ajudar a rastrear o desempenho de sua campanha do marcando automaticamente suas páginas.[!DNL LinkedIn]

[!DNL Marketo Measure] pesquisará por criações com um Compartilhamento exclusivo da LinkedIn e adicionará uma `?_bl={creativeId}` até o fim dele.

**Copiando compartilhamentos**

Com este [!DNL Marketo Measure/LinkedIn] Integração, pedimos que os clientes não copiem/clonem/dupliquem os criativos existentes. Se os compartilhamentos forem encontrados e detectados para serem usados apenas em uma Creative, [!DNL Marketo Measure] O pode marcar o Compartilhamento como está sem precisar recriar Criativos ou Compartilhamentos, e todo o histórico de anúncios (impressões, cliques, compartilhamentos) permanecerá.

Assim que um Compartilhamento for encontrado para ser compartilhado em vários Criativos, [!DNL Marketo Measure] precisará ser executado por um processo de pausa, cópia e remarcação para criar um conjunto exclusivo. [!DNL Marketo Measure] O pausará e arquivará criações em tempo real e, portanto, apagará o Histórico de anúncios, incluindo impressões, cliques e compartilhamentos sociais para marcar tudo corretamente.

Avançando, [!DNL Marketo Measure] A recomenda que você não duplique nenhum [!DNL LinkedIn] Compartilha e mantém todos os anúncios e compartilhamentos o mais exclusivos possível para que possamos simplesmente adicionar nosso rastreamento sem precisar apagar o Histórico de anúncios.

**URLs encurtados**

O motivo da etapa extra é porque o LinkedIn permite que URLs de destino sejam um URL mais curto (bit.ly, goog.le etc.), o que significa [!DNL Marketo Measure] não vê o URL longo e resolvido e [!DNL Marketo Measure] precisa adicionar parâmetros de rastreamento a um URL resolvido. Para contornar esse problema, [!DNL Marketo Measure] O procura URLs encurtados antes de recriar um anúncio, expande o URL e, em seguida, cria o novo anúncio com o URL resolvido e todos os seus parâmetros, permitindo [!DNL Marketo Measure] para adicionar tags. A criação de um novo anúncio apagará o histórico de anúncios (impressões, cliques, compartilhamentos), daí a necessidade de permissão para marcar URLs encurtados.

Caso use muito URLs abreviadas, seus criativos podem ser bastante impactados. Recomendamos que você não use URLs encurtados para que [!DNL Marketo Measure] O pode marcar as páginas de aterrissagem sem precisar criar novos anúncios e apagar o Histórico de anúncios.

**O processo**

Vamos começar com alguns exemplos. Digamos que temos...

Creative A : Compartilhar 123\
Creative B : Compartilhar 234\
Creative C : Compartilhar 234\
Creative D : Compartilhar 234

![](assets/two.png)

`1)` [!DNL Marketo Measure] O verificará primeiro todas as Campanhas, Criativos e Compartilhamentos com um status &quot;Ativo&quot;. [!DNL Marketo Measure] não marcará anúncios pausados, arquivados ou cancelados. Se um anúncio foi pausado, defina como [!UICONTROL ativo], marcaremos quando estiver ativo novamente. Se pudermos encontrar um Compartilhamento exclusivo, o que significa que ele não é usado em vários Criativos ou Campanhas (por exemplo, Creative A : Share 123), [!DNL Marketo Measure] adicionará nosso parâmetro personalizado `>> ?_bl={creativeId}` para o URL de compartilhamento.

`2)` Agora, se o compartilhamento tiver sido compartilhado e perdido sua exclusividade (por exemplo, Creative B : Share 234 e Creative C : Share 234 e Creative D : Share 234), [!DNL Marketo Measure] pausará e arquivará todas as criações semelhantes (que seriam Creative B, Creative C e Creative D).

`3)` [!DNL Marketo Measure] O criará três novos criativos, Creative E, Creative F e Creative G, que copiam o conteúdo da Creative B, que está arquivado.

`4)` [!DNL Marketo Measure] O também criará três novos compartilhamentos, Share 345, Share 456 e Share 567, que copiam o conteúdo do Share 234, exceto que ele terá seu próprio exclusivo `?_bl` marcação.

`5)` [!DNL Marketo Measure] O terá que verificar regularmente se os compartilhamentos não são compartilhados e, se forem compartilhados, reiniciaremos o processo na etapa 2 acima.

>[!NOTE]
>
>A implementação disso significará que nossos clientes perderão o histórico de anúncios da Creative B: Share 234, Creative C: Share 234 e Creative D: Share 234 porque agora é recriado com a Creative E: Share 345, Share F: Share 456 e Creative G: Share 567, respectivamente.

![](assets/three.png)

## Como funciona: líder da geração Forms {#how-it-works-lead-gen-forms}

**[!DNL LinkedIn's]Requisitos exclusivos de marcação automática**

[!DNL Marketo Measure]O pode ajudar a rastrear o desempenho de sua campanha do marcando automaticamente suas páginas.[!DNL LinkedIn]

[!DNL Marketo Measure] pesquisará por criações com um Compartilhamento exclusivo da LinkedIn e adicionará uma `?_bl={creativeId}` até o fim dele.

**O processo**

Até [!DNL LinkedIn's] API de formulário de anúncio e API de resposta de formulário de anúncio, podemos coletar dados de envio de formulário para uma conta de anúncio e associar o endereço de email a um cliente potencial do CRM ou Marketo.

Os formulários do linkedIn podem conter vários endereços de email. Quando baixamos respostas de formulário, procuraremos endereços de email com a seguinte prioridade: email comercial, Endereço de email (campo de formulário principal) ou campos personalizados com um valor de email válido.

Independentemente do status do Campaign ou Creative, todas as respostas do formulário resultarão em um ponto de contato. [!DNL Marketo Measure] O tem uma restrição de pesquisa de 90 dias, portanto [!DNL Marketo Measure] não consegue acessar respostas de formulário com mais de 90 dias, mas quanto mais tempo o [!DNL Marketo Measure] e [!DNL LinkedIn] integração estiver ativada, mais pontos de contato do formulário de geração de clientes potenciais estarão visíveis por meio do [!DNL Marketo Measure].

>[!NOTE]
>
>Os custos do linkedIn ainda são baixados como parte das Campanhas de conteúdo patrocinadas.

**Rastreamento do Forms de geração de lead no CRM ou no Marketo**

Antes de [!DNL Marketo Measure] e existia a Integração LinkedIn Lead Gen Forms, era prática comum os clientes enviarem formulários por push a um Programa da Marketo e/ou a uma campanha de CRM para rastrear os formulários e receber atribuição a essas atividades. Depois que a configuração Lead Gen Forms estiver ativada, queremos garantir que esses envios de formulários não sejam contados duas vezes. Verifique o seguinte:

* O campo &quot;Habilitar pontos de contato do comprador&quot; no objeto CRM está definido como &quot;Nenhum&quot; ou &quot;Excluir todos os membros da campanha&quot;
* Atualizar qualquer programa do Marketo ou regra de atividade do Marketo relacionada
* Atualizar todas as regras de Campanha do CRM relacionadas

>[!NOTE]
>
>A API do LinkedIn tem uma limitação de lookback de 90 dias, portanto, se você estiver usando regras do Marketo ou do CRM, é recomendável definir a data de término da regra para 90 dias antes da data em que você habilitou a integração no [!DNL Marketo Measure].

## Detalhes do Touchpoint {#touchpoint-details}

Uma vez [!DNL Marketo Measure] marcou sua página de aterrissagem no criativo do LinkedIn com êxito. Você poderá visualizar os dados dos anúncios resolvidos no ponto de contato. Este é o mapeamento de valores de dados que você deve esperar:

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th style="width:30%">Campo do ponto de contato</th> 
   <th>Valor da amostra</th> 
  </tr> 
  <tr> 
   <td>ID do anúncio</td>
   <td>84186224</td>
  </tr> 
  <tr> 
   <td>Conteúdo do anúncio</td>
   <td>copy-1-image-2-man 95% dos profissionais de marketing da #B2B consideram a estratégia de criação de demanda bem-sucedida. Saiba mais: [!DNL https]://lnkd.in/jgdi50vKrgv</td>
  </tr> 
  <tr> 
   <td>ID do grupo de anúncios</td>
   <td>(em branco)</td>
  </tr> 
  <tr> 
   <td>Nome do grupo de anúncios</td>
   <td>(em branco)</td>
  </tr> 
  <tr> 
   <td>ID da campanha publicitária</td>
   <td>138949954</td>
  </tr> 
  <tr> 
   <td>Nome da campanha publicitária</td>
   <td>SU - Contas COM - Habilidades por demanda</td>
  </tr> 
  <tr> 
   <td>URL de destino do anúncio <b>*</b></td>
   <td>https://www.adobe.com/marketing-attribution-for-demand-generation-leaders?_bl=84186217</td> 
  </tr> 
  <tr> 
   <td>URL do formulário</td> 
   <td>info.bizible.com/demo</td> 
  </tr> 
  <tr> 
   <td>URL do formulário - Bruto</td> 
   <td>info.bizible.com/demo</td> 
  </tr> 
  <tr> 
   <td>ID da palavra-chave</td> 
   <td>(em branco)</td> 
  </tr> 
  <tr> 
   <td>Tipo de Correspondência de Palavra-chave</td> 
   <td>(em branco)</td> 
  </tr> 
  <tr> 
   <td>Página de destino</td> 
   <td>https://www.adobe.com/marketing-attribution-for-demand-generation-leaders</td> 
  </tr> 
  <tr> 
   <td>Página de aterrissagem - bruta</td> 
   <td>https://www.adobe.com/marketing-attribution-for-demand-generation-leaders?_bl=84186217</td> 
  </tr> 
  <tr> 
   <td>Canal de marketing</td> 
   <td>Social pago</td> 
  </tr> 
  <tr> 
   <td>Canal de marketing - Caminho</td> 
   <td>Social pago.LinkedIn</td> 
  </tr> 
  <tr> 
   <td>Meio</td> 
   <td>"cpc" ou "Formulário de geração de leads"</td> 
  </tr> 
  <tr> 
   <td>Página de indicação</td> 
   <td>www.linkedin.com/</td> 
  </tr> 
  <tr> 
   <td>Página do referenciador - Bruta</td> 
   <td>www.linkedin.com/</td> 
  </tr> 
  <tr> 
   <td>Frase de pesquisa</td> 
   <td>(em branco)</td> 
  </tr> 
  <tr> 
   <td>Tipo de touchpoint</td> 
   <td>Formulário da Web</td>
  </tr> 
  <tr> 
   <td>Origem do touchpoint</td>
   <td>LinkedIn</td>
  </tr> 
 </tbody> 
</table>

**&#42;** _O campo &quot;URL de destino do anúncio&quot; é preenchido somente para Conteúdo Patrocinado. Ele não está preenchido para o Lead Gen Forms._

<br>

## Custos {#costs}

Porque [!DNL Marketo Measure] tem uma integração direta com a [!DNL LinkedIn]Em seguida, baixamos os gastos gravados para cada Campanha e Criação todos os dias. Não há necessidade de um cliente relatar [!DNL LinkedIn] gastos dentro do [!DNL Marketo Measure] aplicativo.

Assim como em outras integrações de anúncios, [!DNL Marketo Measure] definiu uma regra de canal de marketing para colocar todos [!DNL LinkedIn] campanhas, criação e custos. Para usar a regra, o cliente desejará inserir uma nova linha para a Paga [!DNL LinkedIn] esforços. Ele pode ser um canal novo ou existente. Na coluna Referenciador, use a definição &quot;[[!DNL LinkedIn] Pago]&quot; que [!DNL Marketo Measure] definiu como qualquer ponto de contato com um [!DNL Marketo Measure] tag.

![](assets/four.png)

## [!DNL Marketo Measure] Discover {#marketo-measure-discover}

Foram feitos alguns aprimoramentos no [!DNL Marketo Measure] Conheça o para oferecer suporte aos relatórios da geração líder de Forms.

**Placa de mídia paga**

Bloco Forms da geração de clientes potenciais: novo bloco que inclui a contagem de preenchimentos de formulário do LinkedIn. O drill-through dessa contagem exibirá a ID da atividade, a data do formulário, o nome do formulário e o endereço de email.

**Quadro do caminho de engajamento**

Jornada de eventos: inclui o tipo de evento &quot;Atividade&quot; e o &quot;Formulário de geração de lead&quot; médio para formulários que vêm por meio da integração. A exibição de drill-through inclui detalhes de Campanha, Criativo e Formulário.

## Perguntas frequentes sobre conteúdo patrocinado {#sponsored-content-faq}

**O que é um Compartilhamento escuro?**

Um compartilhamento escuro é uma publicação em que ele nunca é postado na página da empresa e é criado imediatamente e adicionado diretamente como um criativo. Para que [!DNL Marketo Measure]Criativos não aparecem no topo da página de uma empresa e são promovidos novamente, compartilhamentos obscuros são usados para que ele possa ser lançado nos bastidores.

**O que os status fazem [!DNL Marketo Measure] na verdade, tag?**

Há quatro status diferentes em uma [!DNL LinkedIn] Campaign e Creative: ativos, pausados, arquivados e cancelados. Marcamos somente Campanhas e Criativas que estão Ativas. Marcar outros status os torna Ativos novamente. [!DNL Marketo Measure] não marcará Campanhas em pausa, Arquivadas ou Canceladas ou Criativas, mas retomará a marcação se o status for alterado para Ativo.

**Qual é o valor que [!DNL Marketo Measure] O está usando para marcar?**

No final do URL de destino, [!DNL Marketo Measure] está adicionando o parâmetro `&_bl={creativeId}`, em que o `{creativeId}` é a ID de criação da LinkedIn. Com a ID de criação, [!DNL Marketo Measure] também pode determinar a ID da campanha desde [!DNL LinkedIn] O tem uma estrutura de anúncios bastante básica, pois cada Criação pode pertencer apenas a uma Campanha.

**O que acontece com meu criativo antigo uma vez [!DNL Marketo Measure] cria uma nova versão dele?**

Quando [!DNL Marketo Measure] recria um Compartilhamento e o coloca em uma nova Criação, a antiga Criação, para ser arquivada. É também por isso que [!DNL Marketo Measure] não marcará Campanhas ou Criação arquivadas; caso contrário, repetirá com [!DNL Marketo Measure] tentando marcá-la indefinidamente.

**Por que o URL de destino do anúncio criado não corresponde ao meu anúncio original?**

[!DNL Marketo Measure] precisa adicionar os parâmetros de rastreamento a um URL resolvido, mas o URL apresentado na API pode ser um URL mais curto sem todos os parâmetros presentes. Para contornar esse problema, [!DNL Marketo Measure] O procura URLs encurtados antes de recriar uma adição, resolve-a e cria o novo anúncio com o URL resolvido e todos os seus parâmetros, permitindo [!DNL Marketo Measure] para adicionar tags.

**Você está marcando todos os meus anúncios? Não vejo o parâmetro bl em todas as minhas páginas de aterrissagem?**

Observamos que alguns profissionais de marketing colocarão um link de imagem no URL de destino, que [!DNL Marketo Measure] não é possível marcar, portanto, procuramos o URL no conteúdo do anúncio. Se [!DNL Marketo Measure] O tem permissões para marcar URLs encurtados. Expandiremos o URL e marcaremos isso, mas devido à estrutura de cópia do LinkedIn, ele é encurtado automaticamente no texto. A tag conterá o URL encurtado do LinkedIn, que aparecerá no campo Conteúdo de anúncio do ponto de contato em vez de no campo Página inicial - Raw.

**Ah não, alguém da minha equipe clonou uma parte acidentalmente. Posso pausá-la?**

Não se preocupe. [!DNL Marketo Measure] O verificará programaticamente se há compartilhamentos que não são mais exclusivos, o que significa que ele foi copiado desde então para uma Creative diferente. Depois que essa cópia for detectada, [!DNL Marketo Measure] seguirá o fluxo normal para marcar e criar novos anúncios.

**Meu anúncio estava com revisão pendente anteriormente. Por que está pendente de revisão novamente depois de [!DNL Marketo Measure] marcou?**

O linkedIn exige que todos os anúncios criados ou modificados passem pelo processo normal de segurança antes de serem publicados. [!DNL Marketo Measure] O tenta interceptar o anúncio o mais rápido possível, pois procura novos anúncios a cada 6 horas, mas com [!DNL LinkedIn's] etapa adicional, pode atrasar a inicialização em algumas horas.

**Existem 2 URLs no meu anúncio. Qual é marcado?**

Ambos. A variável [!DNL Marketo Measure] A integração do permite marcar o URL de destino a partir da imagem de click-through no anúncio, mas também atualiza automaticamente o URL encurtado na descrição do anúncio.

![](assets/five.png)

**Conectei meu [!DNL LinkedIn ads] conta. Por que não [!DNL Marketo Measure] marcando meus links?**

O conectado [!DNL LinkedIn] O usuário precisa ter acesso de edição adequado, o que significa que ele precisa ser um Gerente de conta, Gerente de campanha ou Gerente de criação.

**Como saber se meu criativo será copiado? Posso ver se meus criadores estão usando o mesmo compartilhamento?**

A ID de compartilhamento não é fornecida em um [!DNL LinkedIn] relatório, portanto, não há uma maneira clara e óbvia de verificar os mapeamentos criativos para compartilhamento. Se você suspeitar que um anúncio pode ser uma cópia, verifique manualmente abrindo o anúncio no seu [!DNL LinkedIn] Gerente de campanha — isso abrirá o anúncio em uma nova guia e você encontrará a ID de compartilhamento no URL.

![](assets/six.png)

## Perguntas frequentes sobre a geração líder de Forms {#lead-gen-forms-faq}

**Qual é o custo desse aprimoramento?**

Essa oferta está incluída em qualquer oferta paga [!DNL Marketo Measure] assinatura.

**A integração é retroativa?**

Sim, baixaremos respostas históricas de formulário de anúncio do LinkedIn, embora estejamos limitadas à janela de retrospectiva de 90 dias. Quanto mais longo for o [!DNL Marketo Measure] e a integração do LinkedIn estiver habilitada, mais pontos de contato do formulário de geração de lead estarão visíveis por meio do [!DNL Marketo Measure].

Não há opção para definir uma data específica para o download, mas você pode, opcionalmente, definir regras de exclusão de ponto de contato se houver pontos de contato que você precise suprimir.

**Isso será ativado automaticamente se eu já estiver usando o [!DNL Marketo Measure] Integração de anúncios do linkedIn?**

Não, não começaremos automaticamente a baixá-lo para todos os clientes, mas é uma opção muito simples para habilitar esse recurso nas configurações.

**Os dados do formulário estão disponíveis?**

Os dados do formulário estão disponíveis por meio de [!DNL Marketo Measure] Descubra incluindo ID do formulário e Nome do formulário. Os detalhes do formulário ainda não estão disponíveis nos objetos de ponto de contato no CRM.

**O que acontece com qualquer [!DNL LinkedIn] clientes potenciais que foram sincronizados anteriormente com Programas do Marketo ou Campanhas de CRM?**

É recomendável ajustar qualquer [!DNL Marketo Measure] regras para gerar pontos de contato a partir desses Programas ou Campanhas específicos para evitar duplicação. A API do LinkedIn tem uma limitação de lookback de 90 dias, portanto, se você estiver usando regras do Marketo ou do CRM, é recomendável definir a data de término da regra para 90 dias antes da data em que você habilitou a integração no [!DNL Marketo Measure]. A partir deste ponto, [!DNL Marketo Measure] O pode baixar esses leads para você com mais insight e detalhes.

**Há alguma marcação automática ou rastreamento envolvido?**

Não, isso é diferente de outros [!DNL Marketo Measure] integrações. Em vez de modificar a landing page (já que não há nenhum clique na landing page), baixamos apenas as informações relevantes do LinkedIn e as tratamos como atividades no [!DNL Marketo Measure].
