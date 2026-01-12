---
description: Glossário de campos do Marketo Measure
title: Glossário de campos do Marketo Measure
exl-id: 8e23b102-6d4f-4919-b361-04d1b184e710
feature: Fundamentals
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '3210'
ht-degree: 99%

---


# Glossário de campos do Marketo Measure {#glossary}

Este artigo fornece um glossário de todos os Campos do Marketo Measure adicionados ao seu Salesforce a partir do Pacote básico do Marketo Measure. Você também encontrará informações sobre em qual objeto o campo pode ser encontrado e como cada campo é preenchido com informações.

Para obter um mapa que mostra a qual objeto cada campo do Marketo Measure está relacionado, [clique aqui](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-object-and-field-taxonomy.md).

[A](#a) · [B](#b) · [C](#c) · [D](#d) · [E](#e) · [F](#f) · [G](#g) · H · I · J · [K](#k) · [L](#l) · [M](#m) · N · [O](#o) · [P](#p) · Q · [R](#r) · [S](#s) · [T](#t) · [U](#u) · [V](#v) · W · X · Y · Z

## A {#a}

**Conta** | Encontrado no touchpoint da atribuição do comprador

Esse campo é preenchido com o nome da conta associado ao BAT.

**Id Da Campanha Publicitária** | Encontrado no Buyer Touchpoint, Buyer Attribution Touchpoint

Há três maneiras de preencher esse campo:

`1)` Se o touchpoint vem de um esforço de pesquisa paga (AdWords ou BingAds), a ID da campanha de anúncio da plataforma de anúncio será exibido aqui.

`2)` Se o touchpoint não veio da pesquisa paga, o campo será preenchido usando o valor utm_campaign do URL da página de destino.

Ex.: `http://info.marketomeasure.com/adwords-for-lead-generation?utm_source=Event&utm_medium=booth&utm_campaign=Marketo%20Virtual%20Event%20sep2014`

Neste exemplo, a ID da campanha de publicidade exibiria: __GAId__ Evento virtual de marketing sept2014

`3)` Se o touchpoint for proveniente de uma Campanha do Salesforce offline (uma conferência, jantar, etc.), a ID da campanha de anúncio exibirá a ID da campanha do Salesforce

Se não for nenhuma das opções acima, esse campo ficará em branco.

**Nome da campanha publicitária** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint vem de uma pesquisa paga (AdWords/Bing Ads), o nome da campanha publicitária da plataforma de anúncio é exibido aqui.

`2)` Se o touchpoint não veio da pesquisa paga e o URL da página de destino contiver um valor para utm_campaign, esse valor será preenchido aqui.

`3)` Se o touchpoint veio de uma campanha do Salesforce, o nome da campanha do Salesforce será exibido aqui.

`4)` Isso será preenchido com o Nome da campanha definido para Touchpoints gerados a partir de Atividades, conforme criado em sua Conta do Marketo Measure.

Se não for nenhuma das opções acima, esse campo ficará em branco.

**Nome da campanha publicitária (FT)** | Buyer Touchpoint

Este campo é preenchido da mesma forma que o Nome da campanha publicitária. No entanto, esse campo mostra especificamente o nome da campanha publicitária que gerou o touchpoint de primeiro contato.

**Nome da campanha publicitária (LC)** | Buyer Touchpoint

Este campo é preenchido da mesma forma que o Nome da campanha publicitária. No entanto, esse campo mostra especificamente o nome da campanha publicitária que gerou o touchpoint de criação de leads.

**Conteúdo do anúncio** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint for de pesquisa paga (AdWords/Bing Ads), o campo exibirá a cópia completa do anúncio da plataforma do anúncio.

`2)` Se o touchpoint não for de pesquisa paga, esse campo exibirá o valor utm_content no URL da página de destino.

`3)` Isso será preenchido com o valor Assunto da atividade relacionada que gerou o touchpoint.

Se não for nenhuma das opções acima, esse campo ficará em branco.

**URL de destino do anúncio** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint for de pesquisa paga, esse campo exibirá o destino do URL ao qual você é direcionado depois de clicar no anúncio do mecanismo de pesquisa.

Se o touchpoint não for de pesquisa paga, o campo ficará em branco.

**Id do grupo de anúncio** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint veio da pesquisa paga, a ID do grupo de anúncios do AdWords/Bing Ads será exibida aqui.

Se o touchpoint não tiver vindo da pesquisa paga, o campo ficará em branco.

**Nome do grupo de anúncios** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint veio da pesquisa paga, o Nome do grupo de anúncios do AdWords/Bing Ads será exibido aqui.

Se o touchpoint não tiver vindo da pesquisa paga, o campo ficará em branco.

**ID do anúncio** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint veio da pesquisa paga, a ID do anúncio do AdWords/Bing Ads será exibida aqui.

`2)` Isso será preenchido com a ID externa da atividade se o touchpoint for gerado de uma atividade de CRM.

Se o touchpoint não tiver vindo da pesquisa paga, o campo ficará em branco.

**% de atribuição de modelo personalizado** | Buyer Attribution Touchpoint

Se você estiver usando um Modelo de atribuição personalizado, esse campo exibirá a porcentagem da receita atribuída a um touchpoint de acordo com os valores definidos no Modelo personalizado.

Se não estiver utilizando um modelo personalizado, esse campo ficará em branco.

**% de atribuição de primeiro contato** | Buyer Attribution Touchpoint

Este campo exibirá a porcentagem da receita atribuída a um touchpoint de acordo com um Modelo de primeiro contato.

**% de atribuição total** | Buyer Attribution Touchpoint

Este campo exibirá a porcentagem da receita atribuída a um touchpoint de acordo com um Modelo de caminho completo.

**% de atribuição de criação de leads** | Buyer Attribution Touchpoint

Este campo exibirá a porcentagem da receita atribuída a um touchpoint, de acordo com um Modelo de criação de leads.

**% de atribuição em forma de U** | Buyer Attribution Touchpoint

Este campo exibirá a porcentagem da receita atribuída a um touchpoint de acordo com um Modelo em forma de U.

**% de atribuição em forma de W** | Buyer Attribution Touchpoint

Este campo exibirá a porcentagem da receita atribuída a um touchpoint de acordo com um Modelo em forma de W.

[Clique aqui para retornar à parte superior da página](#top)

## B {#b}

**Valor da oportunidade do Marketo Measure** | Oportunidade do Salesforce

Se você estiver usando um campo Quantia personalizada para relatar a receita da Oportunidade, o Marketo Measure não poderá ler esses campos de Quantia personalizada. O Valor da oportunidade do Marketo Measure é um campo oculto usado para criar um fluxo de trabalho que permite que o Marketo Measure leia campos de Quantia personalizada na oportunidade.

**Navegador** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe o tipo de navegador da Web usado durante a sessão da Web (Chrome, Safari, Firefox, etc.).

[Clique aqui para retornar à parte superior da página](#top)

## C {#c}

**Contato** | Buyer Touchpoint, Buyer Attribution Touchpoint

O campo exibe o campo Contato ao qual o touchpoint pertence.

**Contagem - Modelo personalizado** | Buyer Attribution Touchpoint

Se você estiver usando um Modelo de atribuição personalizado, esse campo mostrará, em formato decimal, a porcentagem de crédito de receita fornecida a um touchpoint de acordo com os valores definidos no Modelo personalizado.

Se não estiver utilizando um modelo personalizado, esse campo ficará em branco.

**Contagem - Modelo personalizado** | Buyer Touchpoint

Se você estiver usando um Modelo de atribuição personalizado, esse campo mostrará, em formato decimal, a porcentagem de crédito de atribuição dado a um touchpoint de acordo com os valores definidos no Modelo personalizado. Como esse campo se refere ao objeto Buyer Touchpoint, não é um reflexo do crédito de receita, apenas do crédito de atribuição.

Se não estiver utilizando um modelo personalizado, esse campo ficará em branco.

**Contagem - Primeiro contato** | Buyer Attribution Touchpoint

Este campo mostra, em formato decimal, a porcentagem de crédito de receita atribuído a um touchpoint de acordo com um Modelo de primeiro contato.

**Contagem - Primeiro contato** | Buyer Touchpoint

Este campo mostra, em formato decimal, a porcentagem de crédito de atribuição dada a um touchpoint de acordo com um Modelo de primeiro contato. Se o touchpoint for o Primeiro contato, esse campo sempre será 1,0 (indicando 100% de crédito de atribuição). Se o touchpoint não for o Primeiro contato, esse campo sempre será 0 (indicando 0 % de crédito de atribuição).

Como esse campo se refere ao objeto Buyer Touchpoint, não é um reflexo do crédito de receita, apenas do crédito de atribuição.

**Contagem - Caminho completo** | Buyer Attribution Touchpoint

Este campo mostra, em formato decimal, a porcentagem da receita fornecida para um touchpoint de acordo com um Modelo de caminho completo.

**Contagem - Toque de criação de lead** | Buyer Attribution Touchpoint

Este campo mostra, em formato decimal, a porcentagem do crédito de receita atribuído a um touchpoint de acordo com um Modelo de criação de lead.

**Contagem - Toque de criação de lead** | Buyer Touchpoint

Este campo mostra, em formato decimal, a porcentagem de crédito de atribuição dada a um touchpoint de acordo com um Modelo de criação de leads. Se o touchpoint for o contato de Criação de leads, esse campo sempre será 1,0 (indicando 100% de crédito de atribuição). Se o touchpoint não for o contato de Criação de leads, esse campo sempre será 0 (indicando 0% de crédito de atribuição).

Como esse campo se refere ao objeto Buyer Touchpoint, não é um reflexo do crédito de receita, apenas do crédito de atribuição.

**Contagem - Forma de U** | Buyer Attribution Touchpoint

Este campo mostra, em formato decimal, a porcentagem do crédito de receita atribuída a um touchpoint de acordo com um Modelo em forma de U.

**Contagem - Forma de U** | Buyer Touchpoint

Este campo mostra, em formato decimal, a porcentagem de crédito de atribuição dada a um touchpoint de acordo com um Modelo em forma de U. No modelo em Forma de U, o crédito é dividido entre o Primeiro contato, o Toque de criação de lead e quaisquer envios de formulário intermediário que ocorreram entre o Primeiro contato e o Toque de criação de lead.

Como esse campo se refere ao objeto Buyer Touchpoint, não é um reflexo do crédito de receita, apenas do crédito de atribuição.

**Contagem - Forma de W** | Buyer Attribution Touchpoint

Este campo mostra, em formato decimal, a porcentagem de crédito atribuída a um touchpoint de acordo com um Modelo em forma de W.

[Clique aqui para retornar à parte superior da página](#top)

## D {#d}

Data informada | Teste A/B do Marketo Measure, Evento do Marketo Measure

Evento do Marketo Measure: a data em que um usuário tomou uma ação específica em seu site, ativando um evento

Teste A/B do Marketo Measure: a data em que um usuário participou de um teste A/B em seu site

[Clique aqui para retornar à parte superior da página](#top)

## E {#e}

**Nome do evento** | Evento do Marketo Measure

Este campo exibe o nome da ação que acionou o evento (por exemplo, Exibição de página).

**Valor do evento** | Evento do Marketo Measure

A descrição do evento (por exemplo, Página inicial)

**Nome do experimento** | Teste A/B do Marketo Measure

Este campo exibe o nome do experimento (por exemplo, o botão Avaliação)

**ID do experimento** | Teste AB do Marketo Measure

O código de identificação único de cada experimento

[Clique aqui para retornar à parte superior da página](#top)

## F {#f}

URL do formulário | Buyer Touchpoint, Buyer Attribution Touchpoint

Esse campo exibirá uma versão reduzida do URL de uma página em que o preenchimento do formulário ocorreu (sem parâmetros de UTM)

URL do formulário - bruto | Buyer Touchpoint, Buyer Attribution Touchpoint

Esse campo exibe o URL da página inteira em que o preenchimento do formulário ocorreu, incluindo parâmetros de UTM

[Clique aqui para retornar à parte superior da página](#top)

## G {#g}

Cidade geográfica | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe o nome da cidade onde o lead/contato visitou seu site. Isso é feito por meio da pesquisa de IP reverso.

País geográfico | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe onde o país onde o lead/contato visitou seu site. Isso é feito por meio da pesquisa de IP reverso.

Região geográfica | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe a região ou o estado em que o lead/contato visitou seu site. Isso é feito por meio da pesquisa de IP reverso.

[Clique aqui para retornar à parte superior da página](#top)

## K {#k}

**Id da palavra-chave** | Buyer Touchpoint, Buyer Attribution Touchpoint

Se o touchpoint for proveniente de uma pesquisa paga, esse campo exibirá a ID da palavra-chave da plataforma do anúncio (Adwords/BingAds).

Se esse touchpoint não veio da pesquisa paga, esse campo ficará em branco.

**Tipo de correspondência da palavra-chave** | Buyer Touchpoint, Buyer Attribution Touchpoint

Se o touchpoint for proveniente de uma pesquisa paga, esse campo exibirá o tipo de correspondência da plataforma do anúncio (Adwords/Bing).

**Texto da palavra-chave** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint for proveniente de uma pesquisa paga, esse campo exibirá o texto da palavra-chave da plataforma de publicidade (Adwords/BingAds) OU o valor do parâmetro _bk no URL da página de destino.

Ex.: `http://info.marketomeasure.com/intro-guide-b2b-marketing-attribution?_bt=12345678&_bk=marketing%20attribution&_bm=p&gclid=ABc123def456ghi789jkl`

`2)` Se o touchpoint não for proveniente de uma pesquisa paga, esse campo exibirá o valor utm_term do URL da página de destino.

`http://www.marketomeasure.com/blog/lead-generation?utm_source=linkedin&utm_medium=Social&utm_campaign=ABC%20Blog&utm_content=Lead%20Gen&utm_term=lead%20gen`.

Se esse touchpoint não veio da pesquisa paga, ou se não houver um valor utm_term, esse campo ficará em branco.

[Clique aqui para retornar à parte superior da página](#top)

## L {#l}

**Landing Page** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe a versão reduzida do URL (sem parâmetros de UTM) da primeira página da Web visitada durante uma sessão da Web.

**Landing Page - Bruta** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe todo o URL (incluindo parâmetros de UTM) da primeira página da Web visitada durante uma sessão da Web.

**Lead** | Buyer Touchpoint, Marketo Measure Person

Este campo exibe o nome do lead ao qual um touchpoint pertence.

[Clique aqui para retornar à parte superior da página](#top)

## M {#m}

**Canal de marketing** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo mostra o grupo geral de atividades de marketing ou canal de marketing ao qual o touchpoint pertence (ou seja, Pesquisa paga, Direta, Social etc.). Os touchpoints são agrupados de acordo com a configuração dos canais no aplicativo Marketo Measure. Para obter mais informações sobre canais de marketing ou como configurar canais, [clique aqui](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md).

**Canal de marketing - Caminho** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo mostra o canal de marketing e o subcanal ao qual um touchpoint pertence. No exemplo abaixo, Canal de marketing - Caminho é Social.LinkedIn, onde o canal de marketing é Social, e o subcanal é LinkedIn.

![&#x200B; 3](assets/1-3.png)

**Meio** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint for proveniente de uma pesquisa paga, o meio de Adwords/BingAds será exibido aqui (por exemplo, CPC).

`2)` Se o touchpoint não for proveniente de uma pesquisa paga, esse campo exibirá o valor utm_medium do URL da página de destino.

`3)` Se o touchpoint vir de uma campanha offline, esse campo exibirá o campo “Tipo” na campanha do Salesforce.

`4)` Isso será preenchido com o valor Tipo de atividade da atividade relacionada que gerou o touchpoint.

Se não for nenhuma das situações acima, o Marketo Measure define automaticamente um valor Médio.

[Clique aqui para retornar à parte superior da página](#top)

O

**Oportunidade** | Buyer Attribution Touchpoint

Este campo exibe a oportunidade à qual o BAT pertence.

[Clique aqui para retornar à parte superior da página](#top)

P

**Plataforma** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe o tipo de computador ou telefone e o tipo de sistema operacional usado durante a sessão da Web.

[Clique aqui para retornar à parte superior da página](#top)

R

**Página do referenciador** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe o URL (sem parâmetros de UTM) da última página da Web em que o lead/contato estava que os direcionava ao seu site.

Por exemplo:

- Se o touchpoint veio da pesquisa paga/orgânica, o campo mostrará o URL do mecanismo de pesquisa

- Se o touchpoint veio de uma rede social, o campo mostrará o URL da rede social (por exemplo, LinkedIn)

**Página do referenciador - Bruta** | Buyer Touchpoint, Buyer Attribution Touchpoint

Esse campo exibe as mesmas informações que a Página do referenciador, exceto que esse campo exibirá todo o URL de referência (incluindo parâmetros de UTM).

**Receita - Modelo personalizado** | Buyer Attribution Touchpoint

Se você estiver usando um Modelo de atribuição personalizado, esse campo mostrará a receita em dólar atribuída a um touchpoint de acordo com a porcentagem de atribuição definida no Modelo personalizado.

Se você não estiver usando um modelo personalizado, o valor do dólar será 0.

**Receita - Primeiro contato** | Buyer Attribution Touchpoint

Este campo mostra o valor da receita em dólar atribuído a um touchpoint de acordo com a porcentagem da atribuição no Modelo de primeiro contato.

**Receita - Caminho completo** | Buyer Attribution Touchpoint

Este campo mostra o valor da receita em dólar atribuído a um touchpoint de acordo com a porcentagem da atribuição no Modelo de caminho completo.

**Receita - Toque de criação de leads** | Buyer Attribution Touchpoint

Este campo mostra o valor da receita em dólar atribuído a um touchpoint de acordo com a porcentagem de atribuição no Modelo de criação de leads.

**Receita - Forma de U** | Buyer Attribution Touchpoint

Este campo mostra o valor da receita em dólar atribuído a um touchpoint de acordo com a porcentagem de atribuição no Modelo em forma de U.

**Receita - Forma de W** | Buyer Attribution Touchpoint

Este campo mostra o valor da receita em dólar atribuído a um touchpoint de acordo com a porcentagem da atribuição no Modelo em forma de W.

[Clique aqui para retornar à parte superior da página](#top)

S

**Campanha do Salesforce** | Buyer Attribution Touchpoint

Este campo exibe a Campanha do Salesforce à qual o touchpoint pertence.

**Frase de pesquisa** | Buyer Touchpoint, Buyer Attribution Touchpoint

Se o touchpoint veio de uma pesquisa paga ou orgânica, esse campo exibirá a frase de pesquisa digitada no mecanismo de pesquisa. No entanto, por motivos de privacidade, essas informações geralmente não estão disponíveis.

**Segmento** | Buyer Attribution Touchpoint

Este campo exibirá os segmentos aos quais o touchpoint pertence. Isso dependerá de como você configurou suas regras de segmentação no aplicativo Marketo Measure.

[Clique aqui para retornar à parte superior da página](#top)

T

**Data do touchpoint** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint veio de uma origem online, esse campo exibirá a data e a hora em que o touchpoint ocorreu.

`2)` Se o touchpoint vier de um evento offline, esse campo exibirá a data e a hora definidas na Campanha do Salesforce ou do campo de data selecionado nas Regras de sincronização da campanha.

`3)` Se o touchpoint vier de uma atividade, esse campo exibirá a data e a hora do campo selecionado como a Data do touchpoint nas Regras de atividade.

**Data do touchpoint (FT)** | Buyer Touchpoint

Esse é o mesmo campo que a Data do touchpoint, no entanto, esse campo exibe especificamente a data e a hora em que o touchpoint de primeiro contato ocorreu.

**Data do touchpoint (LC)** | Buyer Touchpoint

Esse é o mesmo campo que a Data do touchpoint, no entanto, esse campo exibe especificamente a data e a hora em que o touchpoint da Criação de leads ocorreu.

**Posição do touchpoint** | Buyer Touchpoint, Buyer Attribution Touchpoint

Este campo exibe a posição do touchpoint. A posição do touchpoint reflete os principais touchpoints de marco na jornada do cliente (ou seja, FT, Formulário, LC, OC, Encerrado). A posição do touchpoint depende de quando ele ocorreu na jornada do cliente, e um único touchpoint pode ter mais de uma posição. Estas são as diferentes posições de touchpoint:

Primeiro contato (FT): a primeira interação de marketing que alguém tem com sua marca

Criação de leads (LC): a primeira interação de marketing conhecida (geralmente um envio de formulário ou uma inclusão de campanha do Salesforce)

Formulário: quando um visitante preenche um formulário online

Criação da oportunidade (OC): a interação de marketing mais próxima de quando a oportunidade é criada

Encerrado: a interação de marketing mais próxima de quando a oportunidade for fechada (vencida ou perdida)

**Origem do touchpoint** | Buyer Touchpoint, Buyer Attribution Touchpoint

`1)` Se o touchpoint veio da pesquisa paga, esse campo exibirá o nome da plataforma do anúncio (AdWords/BingAds)

`2)` Se o touchpoint veio de uma pesquisa orgânica, esse campo exibirá o nome do mecanismo de pesquisa

`3)` Se não for #1 ou #2, e o valor utm_source estiver presente no URL da página de destino do touchpoint, esse valor será exibido aqui

`4)` Isso será preenchido como Campanha de CRM se o touchpoint for gerado a partir de uma Campanha de CRM.

`5)` Isso será preenchido como Atividade de CRM se o touchpoint for gerado a partir de uma Atividade de CRM.

Se não for nenhuma das opções acima, esse campo será preenchido como “Web Direct” ou “Web”.

**Origem do touchpoint (FT)** | Buyer Touchpoint

Esse é o mesmo campo que a Origem do touchpoint, no entanto, esse campo exibe especificamente a origem do touchpoint de primeiro contato.

**Origem do touchpoint (LC)** | Buyer Touchpoint

Esse é o mesmo campo que a Origem do touchpoint, no entanto, esse campo exibe especificamente a origem do touchpoint de Criação de lead.

**Tipo de touchpoint** | Encontrado no Buyer Touchpoint e no Buyer Attribution Touchpoint.

Este campo exibirá o tipo de interação do touchpoint. Ele será exibido como: Visita à Web, Formulário da Web ou Bate-papo da Web para touchpoints do JavaScript. Para touchpoints de campanha do CRM, será exibido como CRM. Ele será preenchido com a Tarefa ou o Tipo de evento para Touchpoints de atividade.

[Clique aqui para retornar à parte superior da página](#top)

U

**UniqueId** | Buyer Touchpoint, Buyer Attribution Touchpoint

A ID exclusiva associada a cada touchpoint

**ID de usuário** | Teste A/B do Marketo Measure

Código de identificação exclusivo da Otimizely para cada uso

[Clique aqui para retornar à parte superior da página](#top)

## V {#v}

**Variação** | Teste A/B do Marketo Measure

Nome da variação do teste A/B

**ID de variação** | Teste A/B do Marketo Measure

O código de identificação exclusivo para cada variação de Teste A/B.

[Clique aqui para retornar à parte superior da página](#top)
