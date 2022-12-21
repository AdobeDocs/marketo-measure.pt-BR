---
unique-page-id: 35586080
description: Integração do linkedIn - [!DNL Marketo Measure] - Documentação do produto
title: Integração do linkedIn
exl-id: 705209ef-1ece-496c-ac2f-6a31055bd993
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '2603'
ht-degree: 2%

---

# Integração do linkedIn {#linkedin-integration}

## Visão geral {#overview}

O [!DNL Marketo Measure] a integração com o LinkedIn vem em duas partes:

Conteúdo patrocinado: A integração do Conteúdo patrocinado permite [!DNL Marketo Measure] para adicionar tags a URLs de destino em [!DNL LinkedIn] anúncios, o que, em última análise, permite [!DNL Marketo Measure] para seguir um usuário em toda a jornada do ponto de contato e mapear a atividade de volta para o [!DNL LinkedIn] Campanha e criação. Isso fornece aos clientes insights sobre o ROI de seus [!DNL LinkedIn] atividade .

Forms principal: Por meio da integração com o Forms principal da LinkedIn, a medida da Marketo ganha insights sobre os formulários que foram enviados por meio da plataforma LinkedIn. Esses preenchimentos de formulário são comparados com leads do seu CRM ou [!DNL Marketo Engage] para que sejam elegíveis para atribuição. Com informações sobre a Campanha, Creative e Formulário que ajudaram a gerar os formulários, as equipes agora podem otimizar ainda mais o marketing da LinkedIn e os gastos com anúncios.

## Disponibilidade {#availability}

Disponível para todos os clientes.

## Requisitos {#requirements}

**Funções do Gerenciador de Campanha**

Para [!DNL Marketo Measure] para baixar os dados de custo dos dados e anúncios, é necessário ter uma das seguintes funções no Gerenciador de campanhas:

* Administrador de faturamento
* Gerenciador de conta
* Gerenciador de campanha

Saiba mais: [Funções e funções do usuário no Gerenciador de campanhas](https://www.linkedin.com/help/lms/answer/a425731/user-roles-and-functions-in-campaign-manager).

**Funções administrativas de mídia paga**

Para [!DNL Marketo Measure] para criar/atualizar criações patrocinadas, você deve ter uma das seguintes funções de administrador de mídia paga:

* Pôster de Conteúdo Patrocinado
* Gerente principal do Forms

Saiba mais: [Funções de administrador da página do linkedIn](https://www.linkedin.com/help/linkedin/answer/4783/linkedin-page-admin-roles-overview).

Há outros [!DNL LinkedIn] funções que fazemos **not** requerem a integração. Essas funções são frequentemente confundidas com as funções necessárias, portanto, observe que há uma diferença!

**Funções de administrador da página**

Para [!DNL Marketo Measure] para baixar/integrar leads a partir de formulários de geração de leads, você deve ter a seguinte função de Administrador de página:

* Superadministrador

Saiba mais: [Funções de administrador da página do linkedIn](https://www.linkedin.com/help/linkedin/answer/4783/linkedin-page-admin-roles-overview).

## Tipos de anúncios do linkedIn {#linkedin-ad-types}

[!DNL Marketo Measure] suportará:

**Conteúdo patrocinado:** O Conteúdo patrocinado permite que você forneça conteúdo para a [!DNL LinkedIn] feed de membros além daqueles que estão seguindo sua empresa. O Conteúdo patrocinado pode ser direcionado a um público-alvo específico e pode ajudar os anunciantes a alcançar [!DNL LinkedIn] membros, onde e quando estiverem envolvidos na [!DNL LinkedIn] plataforma em desktop, dispositivos móveis e tablets. O conteúdo patrocinado com Forms de Gerência de Cliente Potencial é suportado.

Os tipos de formatos de anúncio de Conteúdo patrocinado aceitos por [!DNL Marketo Measure] são anúncios de imagem única e anúncios de vídeo (por meio do Lead Gen Forms). Devido à complexidade do schema, não oferecemos suporte aos anúncios do Carrossel.

[!DNL Marketo Measure] O não é compatível com mensagens patrocinadas, anúncios de texto ou anúncios dinâmicos.

![](assets/one.png)

>[!TIP]
>
>Para qualquer Campanha/Gasto originada de uma fonte de conteúdo não patrocinada (como Tipo de campanha de &quot;Anúncio de texto&quot; ou &quot;InMail patrocinado&quot;), [!DNL Marketo Measure] does _not_ suporta inerentemente o rastreamento desses Tipos de campanha. Se você quiser rastrear a Gasto por campanhas como essas junto com seu Gasto de &quot;Conteúdo patrocinado&quot;, certifique-se de utilizar nosso CSV de Gasto de marketing para registrar manualmente a Gasto dito.

## Como funciona: Conteúdo patrocinado {#how-it-works-sponsored-content}

>[!NOTE]
>
>Antes da primeira utilização, esta definição de funcionalidade tem de ser ativada navegando para [!DNL Marketo Measure] [!UICONTROL Configurações] > [!UICONTROL Integrações] > [!UICONTROL Anúncios] > [!UICONTROL Habilitar o LinkedIn Lead Gen Forms].

**[!DNL LinkedIn's]Requisitos exclusivos de marcação automática**

[!DNL Marketo Measure]O pode ajudar a rastrear o desempenho de sua campanha do marcando automaticamente suas páginas.[!DNL LinkedIn]

[!DNL Marketo Measure] procurará criações com um compartilhamento exclusivo da LinkedIn e adicionará um `?_bl={creativeId}` ao final.

**Copiando Compartilhamentos**

Com isso [!DNL Marketo Measure/LinkedIn] Na integração, pedimos que os clientes não copiem/clonem/dupliquem os anúncios existentes. Se os Compartilhamentos forem encontrados e forem detectados para serem usados somente em uma Creative, [!DNL Marketo Measure] O pode adicionar uma tag ao Compartilhar como está sem precisar recriar quaisquer Criações ou Compartilhamentos e o histórico de todos os anúncios (impressões, cliques, compartilhamentos) permanecerá.

Assim que um Compartilhamento for encontrado para ser compartilhado em vários Creative, [!DNL Marketo Measure] O precisará executar um processo de pausa, cópia e remarcação para criar um conjunto exclusivo. [!DNL Marketo Measure] O pausará e arquivará criações ativas e, portanto, apagará o Histórico de anúncios incluindo impressões, cliques e compartilhamentos sociais para adicionar tags automáticas a tudo corretamente.

Avançar, [!DNL Marketo Measure] A recomenda que você não duplique qualquer [!DNL LinkedIn] Compartilha e mantenha todos os anúncios e compartilhamentos o mais exclusivos possível, para que possamos simplesmente adicionar nosso rastreamento sem precisar apagar o Histórico de anúncios.

**URLs encurtados**

O motivo para a etapa extra é porque o LinkedIn permite que os URLs de destino sejam um URL encurtado (bit.ly, goog.le, etc.), o que significa [!DNL Marketo Measure] não vê o URL longo e resolvido e [!DNL Marketo Measure] precisa adicionar parâmetros de rastreamento a um URL resolvido. Para contornar esse problema, [!DNL Marketo Measure] busca URLs encurtados antes de recriar um anúncio, expande o URL e cria o novo anúncio com o URL resolvido e todos os seus parâmetros, permitindo [!DNL Marketo Measure] para adicionar tags. A criação de um novo anúncio apagará o histórico de anúncios (impressões, cliques, compartilhamentos), portanto, a necessidade de permissão para marcar URLs encurtados.

Caso use muito URLs abreviadas, seus criativos podem ser bastante impactados. Recomendamos que você não use mais URLs encurtados para que [!DNL Marketo Measure] O pode adicionar tags às páginas iniciais sem precisar criar novos anúncios e apagar o Histórico de anúncios.

**O Processo**

Vamos começar com alguns exemplos. Digamos que temos....

Criação A : Compartilhar 123\
Creative B : Compartilhar 234\
Creative C : Compartilhar 234\
Creative D : Compartilhar 234

![](assets/two.png)

`1)` [!DNL Marketo Measure] O primeiro verificará todas as campanhas, anúncios e compartilhamentos com o status &quot;Ativo&quot;. [!DNL Marketo Measure] não colocará tags em anúncios pausados, arquivados ou cancelados. Se um anúncio foi pausado, defina como [!UICONTROL ative], marcaremos assim que estiver ativo novamente. Se encontrarmos um Compartilhamento exclusivo, o que significa que ele não é usado em vários Creative ou Campaigns (por exemplo, Creative A : Quota 123), [!DNL Marketo Measure] adicionará nosso parâmetro personalizado `>> ?_bl={creativeId}` para o URL de compartilhamento.

`2)` Agora, se o Compartilhamento tiver sido compartilhado e tiver perdido sua exclusividade (por exemplo, Creative B : Compartilhar 234 e Creative C : Compartilhe 234 e Creative ID : 234), [!DNL Marketo Measure] O pausará e arquivará todos os criativos semelhantes (que seriam Creative B, Creative C e Creative D).

`3)` [!DNL Marketo Measure] O criará três novas criações, Creative E, Creative F e Creative G, que copiarão o conteúdo da Creative B, que é arquivada.

`4)` [!DNL Marketo Measure] O também criará 3 novas ações, Compartilhamento 345, Compartilhamento 456 e Compartilhamento 567, que copia o conteúdo do Compartilhamento 234, exceto que terá seu próprio conteúdo exclusivo `?_bl` marcação.

`5)` [!DNL Marketo Measure] O precisará verificar regularmente se os Compartilhamentos não são compartilhados e, se forem compartilhados, reiniciaremos o processo na etapa 2 acima.

>[!NOTE]
>
>Com essa implementação, nossos clientes perderão o histórico de anúncios da Creative B : Compartilhamento 234, Creative C : Compartilhe 234 e Creative ID : Compartilhe 234 porque agora ele é recriado com o Creative E : Compartilhar 345, Compartilhar F : Compartilhe 456 e Creative G : Compartilhar 567, respectivamente.

![](assets/three.png)

## Como funciona: Forms de Gerência de Chumbo {#how-it-works-lead-gen-forms}

**O Processo**

Através de [!DNL LinkedIn's] API de formulário de anúncio e API de resposta de formulário de anúncio, podemos coletar dados de envio de formulário para uma conta de anúncio e associar o endereço de email a um cliente potencial do CRM ou do Marketo.

Os formulários linkedIn podem conter vários endereços de email. Ao baixar as respostas do formulário, procuraremos endereços de email com a seguinte prioridade: E-mail de trabalho, endereço de e-mail (campo de formulário principal) ou campos personalizados com um valor de e-mail válido.

Independentemente do status Campanha ou Criativa, todas as Respostas do formulário resultarão em um ponto de contato. [!DNL Marketo Measure] tem uma restrição de retrospectiva de 90 dias, portanto [!DNL Marketo Measure] O não consegue acessar as respostas do formulário com mais de 90 dias, mas por mais tempo [!DNL Marketo Measure] e [!DNL LinkedIn] a integração estiver habilitada, quanto mais pontos de contato do formulário de lead ficarem visíveis por meio de [!DNL Marketo Measure].

>[!NOTE]
>
>Os Custos da linkedIn ainda são baixados como parte das Campanhas de conteúdo patrocinado.

**Rastreamento de lead Gen Forms no CRM ou Marketo**

Antes da [!DNL Marketo Measure] E a Integração Forms com o LinkedIn Lead Gen existia, era prática comum os clientes enviarem seus envios de formulário para um Programa Marketo e/ou Campanha CRM para rastrear os formulários e receber atribuição sobre essas atividades. Depois que a configuração de Lead Gen Forms estiver ativada, queremos garantir que esses envios de formulário não sejam contados duas vezes. Verifique o seguinte:

* O campo &quot;Ativar pontos de contato do comprador&quot; no objeto CRM está definido como &quot;Nenhum&quot; ou &quot;Excluir todos os membros da campanha&quot;
* Atualizar quaisquer regras relacionadas do Programa Marketo ou da Atividade Marketo
* Atualizar quaisquer regras relacionadas da Campanha do CRM

>[!NOTE]
>
>A API do LinkedIn tem uma limitação de 90 dias de lookback, portanto, se você estiver usando as regras do Marketo ou do CRM, é recomendável definir a data de término da regra para 90 dias antes da data em que a integração foi habilitada [!DNL Marketo Measure].

## Detalhes do Touchpoint {#touchpoint-details}

Uma vez [!DNL Marketo Measure] tiver marcado sua página de aterrissagem com sucesso no anúncio do LinkedIn, você poderá visualizar os dados de anúncios resolvidos no ponto de contato. Este é o mapeamento de valores de dados que você deve esperar ver:

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th>Campo de ponto de contato</th> 
   <th>Valor da amostra</th> 
  </tr> 
  <tr> 
   <td><p>ID da Publicidade </p></td> 
   <td><p>84186224 </p></td> 
  </tr> 
  <tr> 
   <td><p>Conteúdo do anúncio </p></td> 
   <td><p>copy-1-image-2-man 95% dos profissionais de marketing #B2B consideram que a estratégia de criação de demanda é bem-sucedida. Saiba mais: [!DNL https]://lnkd.in/jgdi50vGrgv</p></td> 
  </tr> 
  <tr> 
   <td><p>Id Do Grupo De Publicidade </p></td> 
   <td><p>(em branco) </p></td> 
  </tr> 
  <tr> 
   <td><p>Nome do grupo de anúncios </p></td> 
   <td><p>(em branco) </p></td> 
  </tr> 
  <tr> 
   <td><p>Id Da Campanha Publicitária </p></td> 
   <td><p>138949954 </p></td> 
  </tr> 
  <tr> 
   <td><p>Nome da campanha publicitária </p></td> 
   <td><p>SU - Contas COM - Habilidades por demanda </p></td> 
  </tr> 
  <tr> 
   <td><p>URL de Destino da Publicidade </p></td> 
   <td><p>https://www.adobe.com/marketing-attribution-for-demand-generation-leaders?_bl=84186217 </p></td> 
  </tr> 
  <tr> 
   <td><p>URL do formulário </p></td> 
   <td><p>info.bizible.com/demo </p></td> 
  </tr> 
  <tr> 
   <td><p>URL do formulário - bruto </p></td> 
   <td><p>info.bizible.com/demo </p></td> 
  </tr> 
  <tr> 
   <td><p>Id Da Palavra-Chave </p></td> 
   <td><p>(em branco) </p></td> 
  </tr> 
  <tr> 
   <td><p>Tipo de Correspondência de Palavra-Chave </p></td> 
   <td><p>(em branco) </p></td> 
  </tr> 
  <tr> 
   <td><p>Página </p></td> 
   <td><p>https://www.adobe.com/marketing-attribution-for-demand-generation-leaders </p></td> 
  </tr> 
  <tr> 
   <td><p>Página de aterrissagem - Bruta </p></td> 
   <td><p>https://www.adobe.com/marketing-attribution-for-demand-generation-leaders?_bl=84186217 </p></td> 
  </tr> 
  <tr> 
   <td><p>Canal de marketing </p></td> 
   <td><p>Social pago </p></td> 
  </tr> 
  <tr> 
   <td><p>Canal de marketing - Caminho </p></td> 
   <td><p>Social.LinkedIn pago </p></td> 
  </tr> 
  <tr> 
   <td><p>Médio </p></td> 
   <td><p>"cpc" ou "Formulário principal"</p></td> 
  </tr> 
  <tr> 
   <td><p>Página de indicação </p></td> 
   <td><p>www.linkedin.com/ </p></td> 
  </tr> 
  <tr> 
   <td><p>Página Referenciador - Bruta </p></td> 
   <td><p>www.linkedin.com/ </p></td> 
  </tr> 
  <tr> 
   <td><p>Frase de pesquisa </p></td> 
   <td><p>(em branco) </p></td> 
  </tr> 
  <tr> 
   <td><p>Tipo de Touchpoint </p></td> 
   <td><p>Formulário da Web </p></td> 
  </tr> 
  <tr> 
   <td><p>Origem do Touchpoint </p></td> 
   <td><p>LinkedIn </p></td> 
  </tr> 
 </tbody> 
</table>

## Custos {#costs}

Porque [!DNL Marketo Measure] tem uma integração direta com o [!DNL LinkedIn], baixamos os gastos registrados para cada Campanha e Criação todos os dias. Não há necessidade de um cliente criar relatórios sobre [!DNL LinkedIn] gastar na [!DNL Marketo Measure] aplicativo mais.

Assim como em outras integrações de anúncios, [!DNL Marketo Measure] definiu uma regra de canal de marketing para colocar tudo [!DNL LinkedIn] campanhas, criações e custo. Para usar a regra, o cliente desejará inserir uma nova linha para seus [!DNL LinkedIn] esforços. Pode ser um canal novo ou existente. Na coluna Referenciador , use a definição &quot;[[!DNL LinkedIn] Pago]&quot; que [!DNL Marketo Measure] tenha sido definido como qualquer ponto de contato com um [!DNL Marketo Measure] .

![](assets/four.png)

## [!DNL Marketo Measure] Discover {#marketo-measure-discover}

Foram feitos alguns aprimoramentos no [!DNL Marketo Measure] Descubra o suporte para relatórios de Gen Forms de lead.

**Placa de mídia paga**

Bloco Forms da geração de leads: Novo bloco que inclui a contagem de preenchimentos de formulário do LinkedIn. O detalhamento dessa contagem exibirá ID da atividade, Data do formulário, Nome do formulário e Endereço de email.

**Placa do caminho de envolvimento**

Jornada de eventos: Inclui o tipo de evento &quot;Atividade&quot; e o meio &quot;Formulário de geração de lead&quot; para formulários que vêm por meio da integração. A exibição detalhada inclui Campanha, Creative e Detalhes do formulário.

## Perguntas frequentes sobre conteúdo patrocinado {#sponsored-content-faq}

**O que é um compartilhamento escuro?**

Um compartilhamento escuro é uma publicação em que nunca é postada na página da empresa e imediatamente é criada e adicionada diretamente como um Creative. Para que [!DNL Marketo Measure]Criativos criados pela Adobe não aparecem no topo da página de uma empresa e são promovidos novamente, compartilhamentos escuros são usados para que possam ser iniciados nos bastidores.

**O que os status fazem [!DNL Marketo Measure] na verdade, tag?**

Há quatro status diferentes em uma [!DNL LinkedIn] Campanha e criação: Ativo, pausado, arquivado e cancelado. Somente marcamos Campanhas e Criações que estão Ativas. Marcar outros status os define como Ativo novamente. [!DNL Marketo Measure] O não marcará Pausado, Arquivado ou Cancelado Campanhas ou Criações, mas retomará a marcação se o status for alterado para Ativo.

**Qual é o valor que [!DNL Marketo Measure] está usando a tag para ?**

No final do URL de destino, [!DNL Marketo Measure] está adicionando o parâmetro `&_bl={creativeId}`, em que `{creativeId}` é a Creative Id da LinkedIn. Com A Creative Id, [!DNL Marketo Measure] também pode determinar a ID da campanha desde [!DNL LinkedIn] O tem uma estrutura de anúncios bem básica, pois cada Criativo só pode pertencer a uma campanha.

**O que acontece com meu antigo criativo [!DNL Marketo Measure] cria uma nova versão?**

When [!DNL Marketo Measure] recria um Compartilhamento e o coloca em um novo Criativo, o antigo Criativo é arquivado. É também por isso que [!DNL Marketo Measure] não marcará campanhas ou criações arquivadas; caso contrário, haverá loop com [!DNL Marketo Measure] tentando marcá-lo indefinidamente.

**Por que o URL de destino do anúncio criado não corresponde ao meu anúncio original?**

[!DNL Marketo Measure] O precisa adicionar os parâmetros de rastreamento a um URL resolvido, mas o URL que é apresentado na API pode ser um URL encurtado sem todos os parâmetros presentes. Para contornar esse problema, [!DNL Marketo Measure] O busca URLs encurtados antes de recriar um anúncio, resolve-o e cria o novo anúncio com o URL resolvido e todos os seus parâmetros, permitindo [!DNL Marketo Measure] para adicionar tags.

**Você está marcando todos os meus anúncios? Não vejo o parâmetro bl em todas as minhas páginas de aterrissagem?**

Observamos que alguns profissionais de marketing colocarão um link de imagem no URL de destino, que [!DNL Marketo Measure] O não pode adicionar uma tag ao , portanto, pesquisamos o URL no conteúdo do anúncio. If [!DNL Marketo Measure] tem permissões para marcar URLs encurtados, expandiremos o URL e marcaremos isso, mas, devido à estrutura de cópia da LinkedIn, ele será automaticamente encurtado no texto. A tag estará no URL encurtado do LinkedIn, que aparecerá no campo Conteúdo do anúncio do ponto de contato em vez do campo Página de aterrissagem - Bruto .

**Oh não, alguém da minha equipe clonou acidentalmente uma parte. Posso pausá-lo?**

Não se preocupe. [!DNL Marketo Measure] O verificará por programação compartilhamentos que não são mais exclusivos, o que significa que eles já foram copiados para um Creative diferente. Depois que essa cópia for detectada, [!DNL Marketo Measure] seguirá o fluxo normal para adicionar tags e criar novos anúncios.

**Meu anúncio estava pendente de revisão anteriormente. Por que a revisão está pendente novamente depois de [!DNL Marketo Measure] marcou?**

A linkedIn exige que todos os anúncios que foram criados ou modificados passem pelo processo normal de segurança antes de serem publicados. [!DNL Marketo Measure] O tenta interceptar o anúncio o mais rápido possível, pois verifica novos anúncios a cada 6 horas, mas com [!DNL LinkedIn's] etapa adicional, pode atrasar a inicialização em algumas horas.

**Há 2 URLs em minha publicidade. Qual delas é marcada?**

Ambos. O [!DNL Marketo Measure] a integração permite adicionar uma tag ao URL de destino da imagem de click through no anúncio, mas também atualiza automaticamente o URL encurtado na descrição da publicidade.

![](assets/five.png)

**Eu conectei a minha [!DNL LinkedIn ads] conta. Por que não [!DNL Marketo Measure] marcar meus links?**

O [!DNL LinkedIn] O usuário precisa ter acesso de edição apropriado, o que significa que o usuário precisa ser um Gerente de conta, Gerente de campanha ou Gerente criativo.

**Como saber se meu anúncio será copiado? Posso ver se meus criadores estão usando a mesma parte?**

A ID de compartilhamento não é fornecida em um [!DNL LinkedIn] , portanto, não há uma maneira clara e óbvia de verificar os mapeamentos de criação para compartilhamento. Se você suspeitar que um anúncio pode ser uma cópia, você pode verificar manualmente abrindo o anúncio de dentro de seu [!DNL LinkedIn] Gerenciador de campanha — isso abrirá o anúncio em uma nova guia e você encontrará a ID de compartilhamento no URL.

![](assets/six.png)

## Perguntas frequentes sobre a Forms da geração de clientes potenciais {#lead-gen-forms-faq}

**Qual é o custo desse aprimoramento?**

Esta oferta está incluída em qualquer [!DNL Marketo Measure] assinatura.

**A integração é retroativa?**

Sim, baixaremos respostas de anúncios históricos do LinkedIn, embora estejamos limitados à janela de retrospectiva de 90 dias. Quanto maior for a [!DNL Marketo Measure] e a integração com o LinkedIn estiver ativada, quanto mais pontos de contato do formulário principal estiverem visíveis por meio de [!DNL Marketo Measure].

Não há opção para definir uma data específica para o download, mas você pode definir as regras de Exclusão de ponto de contato se houver pontos de contato que precisem ser suprimidos.

**Isso será ativado automaticamente se eu já estiver usando o [!DNL Marketo Measure] Integração de publicidade do linkedIn?**

Não, não começaremos a baixá-lo automaticamente para todos os clientes, mas é um switch muito simples para habilitar esse recurso nas configurações.

**Os dados do formulário estão disponíveis?**

Os dados do formulário estão disponíveis por meio de [!DNL Marketo Measure] Descubra incluindo a ID do formulário e o Nome do formulário. Os detalhes do formulário ainda não estão disponíveis nos objetos de ponto de contato no CRM.

**O que acontece com qualquer [!DNL LinkedIn] leads que foram previamente sincronizados com programas Marketo ou campanhas CRM?**

Recomenda-se que ajuste qualquer [!DNL Marketo Measure] regras para gerar pontos de contato a partir desses programas ou campanhas específicos para evitar a duplicação. A API do LinkedIn tem uma limitação de 90 dias de lookback, portanto, se você estiver usando as regras do Marketo ou do CRM, é recomendável definir a data de término da regra para 90 dias antes da data em que a integração foi habilitada [!DNL Marketo Measure]. A partir deste ponto, [!DNL Marketo Measure] O pode baixar esses leads para você com mais insight e detalhes.

**Há alguma marcação automática ou rastreamento envolvido?**

Não, isto é diferente do outro [!DNL Marketo Measure] integrações. Em vez de modificar a landing page (já que não há click through na landing page), estamos baixando apenas as informações relevantes do LinkedIn e tratando-as como atividades no [!DNL Marketo Measure].
