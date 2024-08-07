---
unique-page-id: 18874568
description: Modelos de atribuição do Marketo Measure - Marketo Measure - Documentação do produto
title: Modelos de atribuição do Marketo Measure
exl-id: d8f76f29-e7c9-4b2d-b599-e80fd93c4687
feature: Attribution
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '761'
ht-degree: 100%

---

# Modelos de atribuição do Marketo Measure {#marketo-measure-attribution-models}

O Marketo Measure oferece seis tipos de modelos de atribuição:

* Primeiro contato
* Criação de lead
* Em forma de U
* Em forma de W
* Caminho completo
* Modelo personalizado

Esses modelos variam em complexidade. “Primeiro contato” e “Geração de leads” são modelos simples de contato único. Os quatro restantes são modelos mais complexos de vários contatos. A estrutura dos modelos de atribuição do Marketo Measure reflete os quatro principais touchpoints que ocorrem na jornada do cliente:

* Primeiro toque (PT)
* Criação de leads (LC)
* Criação de oportunidades (CO)
* Venda fechada encerrada (CW)

![](assets/1-1.png)

Nos **modelos de contato único**, o crédito de atribuição é atribuído apenas a um touchpoint de marco, daí o nome “contato único”.
Nos **modelos multicontato**, a maior parte do crédito de atribuição é atribuída a dois ou mais touchpoints de marco. O crédito restante é atribuído a touchpoints que ocorrem entre os touchpoints de marco.

As próximas seções abordam cada modelo de atribuição e como a atribuição é creditada.

## Modelos de contato único {#single-touch-models}

**Modelo de primeiro contato**

O modelo de Primeiro contato se concentra somente na primeira interação que um lead tem com a organização. Esse modelo atribui 100% do crédito de atribuição à primeira vez que o lead tomou conhecimento da sua empresa, por isso o “primeiro contato” (FT).

Digamos que Kate acesse o `www.adobe.com` pela primeira vez por meio de um anúncio do Google AdWords e visualize um white paper. O canal do Adwords receberia 100% do crédito de atribuição dessa Oportunidade.

![](assets/2.png)

**Modelo de criação de leads**

O modelo Criação de leads atribui 100% do crédito de atribuição ao touchpoint LC, quando um prospecto fornece suas informações de contato e se torna um lead.

Continuando com o exemplo anterior, após a primeira visita de Kate ao `www.adobe.com` por meio do Google AdWords, Austin acessa o site por meio de uma postagem no Linkedin. Austin preenche um formulário e se torna um lead. Nesse modelo, o LinkedIn receberia 100% do crédito de atribuição.

![](assets/3.png)

## Modelos multicontato {#multi-touch-models}

Modelos multicontato são usados para ciclos de vendas mais longos e complicados. Esses modelos são especialmente úteis se várias pessoas de uma conta/empresa estiverem envolvidas na jornada do comprador.

**Modelo em forma de U**

O modelo em Forma de U se concentra nos touchpoints FT e LC. Neste modelo, os pontos de contato FT e LC recebem cada um 50% do crédito da receita.

O primeiro acesso de Kate a `www.adobe.com` por meio de um anúncio do Google AdWords receberia 50% do crédito de atribuição. Os 50% restantes seriam atribuídos à publicação do LinkedIn que fez com que Austin preenchesse um formulário e se tornar um lead.

![](assets/4.png)

**Modelo em Forma de W**

Três dos touchpoints principais estão incluídos no modelo em Forma de W. Neste modelo, os touchpoints FT, LC e OC são atribuídos a cada um 30% do crédito de atribuição. Os 10% restantes são atribuídos proporcionalmente a qualquer touchpoint intermediário que ocorra entre os três touchpoints de marco.

Kate e Austin mencionam o Marketo Measure ao seu colega de trabalho, Hillary. Ela encontra um conteúdo por meio de uma pesquisa no Google e preenche um formulário. Posteriormente, Austin recebe um email para registro no webinário e preenche o formulário de registro no site. Kate conversou com um representante de vendas sobre o produto Marketo Measure.

Hillary recebe um email com um link para a página de preços e acessa a página. Em seguida, uma Oportunidade é criada para sua conta. A visita à Web de Hillary à página de preços recebe crédito pela Criação de oportunidades porque foi a interação de marketing mais próxima da Data de criação de oportunidades. Cada um dos touchpoints de marco recebe 30% do crédito de atribuição e os touchpoints intermediários recebem os 10% restantes.

![](assets/5.png)

**Modelo de caminho completo**

O modelo de caminho completo inclui todos os quatro touchpoints de marco. FT, LC, OC e CW recebem, cada um, 22,5% do crédito da receita, e os 10% restantes são distribuídos igualmente entre os contatos intermediários.

Após a criação da oportunidade, Kate, Austin e Hillary decidem lançar o Marketo Measure ao OCM, Elizabeth. Elizabeth participa de uma conferência onde o Marketo Measure está hospedando um evento. Kate vê uma postagem no LinkedIn sobre um estudo de caso e preenche um formulário para baixar o conteúdo. Elizabeth participa de um jantar de vendas hospedado pelo Marketo Measure. Após o jantar, ela decide comprar o Marketo Measure e se tornar um cliente. Nesse cenário, o jantar de venda seria atribuído a 22,5% do crédito de receita da venda fechada. Os touchpoints FT, LC e OC também recebem 22,5% do crédito. Os touchpoints intermediários recebem igualmente os 10% restantes do crédito de receita.

![](assets/6.png)

**Modelo de atribuição personalizada**

O Marketo Measure também oferece um modelo de Atribuição personalizada que permite que os usuários escolham quais touchpoints ou estágios personalizados serão incluídos em seus modelos. Além disso, os usuários podem controlar a porcentagem do crédito de atribuição atribuído a esses touchpoints e estágios. Se uma oportunidade não tiver contatos intermediários dedicados, a porcentagem será distribuída uniformemente entre outras posições.
