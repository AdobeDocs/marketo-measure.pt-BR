---
unique-page-id: 18874568
description: Modelos de atribuição de medida do Marketo - Medida do Marketo - Documentação do produto
title: Modelos de atribuição de medida do Marketo
exl-id: d8f76f29-e7c9-4b2d-b599-e80fd93c4687
source-git-commit: 0aa263053aa8dd804b03a67ab446dc0cda3850c5
workflow-type: tm+mt
source-wordcount: '734'
ht-degree: 2%

---

# Modelos de atribuição de medida do Marketo {#marketo-measure-attribution-models}

A medida do Marketo oferece seis tipos de modelos de atribuição:

* Primeiro toque
* Criação do leads
* Em forma de U
* Em forma de W
* Em caminho completo
* Modelo personalizado

Esses modelos variam em complexidade. Criação de primeiro contato e principal são nossos modelos simples de toque único. Os quatro restantes são nossos modelos mais complexos e multitoque. A estrutura dos modelos de atribuição da Marketo Measure reflete os quatro principais pontos de contato que ocorrem na jornada do cliente:

* Primeiro toque (PT)
* Criação de leads (LC)
* Criação de oportunidades (CO)
* Negociação de Vencedor Fechado (CW)

![](assets/1-1.png)

No **modelos de toque único**, o crédito de atribuição é atribuído somente a um ponto de contato de marco, portanto, o nome &quot;toque único&quot;.
No **modelos multitoque**, a maior parte do crédito de atribuição é atribuída a dois ou mais pontos de contato do marco. O crédito restante é atribuído a pontos de contato que ocorrem entre os pontos de contato do marco.

As próximas seções abordam cada modelo de atribuição e como o crédito de atribuição é atribuído.

## Modelos de toque único {#single-touch-models}

**Modelo de primeiro contato**

O modelo de Primeiro contato foca somente na primeira interação que um cliente potencial tem com sua organização. Esse modelo atribui 100% do crédito de atribuição para a primeira vez que o cliente potencial tomou conhecimento da sua empresa, a FT (First Touch, primeiro contato).

Diga que Kate visita www.adobe.com pela primeira vez por meio de um Anúncio do Adwords e exibe um whitepaper. O canal de Palavras-chave receberia 100% do crédito de atribuição dessa Oportunidade.

![](assets/2.png)

**Modelo de criação de leads**

O modelo Criação de leads atribui 100% do crédito de atribuição ao ponto de contato LC, quando um prospecto fornece suas informações de contato e se torna um cliente potencial.

Continuando com o exemplo anterior, após a primeira visita de Kate a www.adobe.com via Adwords, Austin visita o site por meio de uma publicação no Linkedin. Austin preenche um formulário e se torna um Lead. Nesse modelo, o Linkedin receberia 100% do crédito de atribuição.

![](assets/3.png)

## Modelos multitoque {#multi-touch-models}

Modelos multitoque são usados para ciclos de vendas mais longos e complicados. Esses modelos são especialmente úteis se várias pessoas de uma conta/empresa estiverem envolvidas na jornada do comprador.

**Modelo em Forma de U**

O modelo de Forma de U foca nos pontos de contato de FT e LC. Neste modelo, o ponto de contato FT e LC recebe cada um 50% do crédito de receita.

A primeira visita de Kate a www.adobe.com por meio de um anúncio do Adwords receberia 50% do crédito de atribuição. Os 50% restantes seriam atribuídos à publicação do Linkedin que levou Austin a preencher um formulário e se tornar um líder.

![](assets/4.png)

**Modelo com Forma de W**

Três dos pontos de contato principais estão incluídos no modelo de Forma de W. Neste modelo, os pontos de contato FT, LC e OC são atribuídos a cada um 30% do crédito de atribuição. Os 10% restantes são atribuídos proporcionalmente a qualquer ponto de contato intermediário que ocorra entre os três pontos de contato do marco.

Kate e Austin mencionam Marketo Measure para o colega deles, Hillary. Ela encontra um conteúdo por meio de uma pesquisa no google e preenche um formulário. Posteriormente, Austin recebe um email para registro no webinário e preenche o formulário de registro no site. Kate tem uma conversa com um representante de vendas sobre o produto Marketo Measure.

Hillary recebe um email com um link para a página de preços e visita a página. Em seguida, uma Oportunidade é criada para sua conta. A visita da Web de Hillary à página de preços recebe crédito pela Criação de Oportunidades porque foi a interação de marketing mais próxima da Data de Criação de Oportunidades. Cada um dos pontos de contato do marco recebe 30% do crédito de atribuição e os pontos de contato intermediários recebem os 10% restantes.

![](assets/5.png)

**Modelo de caminho completo**

O modelo de caminho completo inclui todos os quatro pontos de contato de marco. A FT, a LC, a OC e a CW recebem, cada uma, 22,5% do crédito da receita, e os 10% restantes são distribuídos igualmente entre os toques intermediários.

Após a criação da oportunidade, Kate, Austin e Hillary decidem lançar a medida do Marketo para sua OCM, Elizabeth. Elizabeth participa de uma conferência onde a Marketo Measure está hospedando um evento. Kate vê uma postagem no Linkedin sobre um estudo de caso e preenche um formulário para baixar o conteúdo. Elizabeth participa de um jantar de vendas hospedado pela Marketo Measure. Após o jantar, ela decide comprar a Marketo Measure e se tornar um cliente. Nesse cenário, o jantar de venda seria atribuído a 22,5% do crédito de receita do acordo fechado. Os pontos de contato FT, LC e OC também recebem 22,5% do crédito. Os pontos de contato intermediários recebem igualmente os 10% restantes do crédito de receita.

![](assets/6.png)

**Modelo de atribuição personalizada**

A medida do Marketo também oferece um modelo de Atribuição personalizada que permite que os usuários escolham quais pontos de contato ou estágios personalizados serão incluídos em seus modelos. Além disso, os usuários podem controlar a porcentagem do crédito de atribuição atribuído a esses pontos de contato e estágios.
