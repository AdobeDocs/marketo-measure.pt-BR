---
unique-page-id: 18874592
description: Integração de rastreamento de chamadas - [!DNL Marketo Measure] - Documentação do produto
title: Integração ao rastreamento de chamadas
exl-id: bc35a789-e056-4456-9038-306ed34c2a8e
feature: Tracking, Integration
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '708'
ht-degree: 1%

---

# Integração ao rastreamento de chamadas {#call-tracking-integration}

Nossa integração com [!DNL CallTrackingMetrics] O é destinado a mesclar uma sessão da Web a uma chamada telefônica. Uma chamada telefônica é tratada como um envio de formulário para [!DNL Marketo Measure]. Ele dá crédito a uma sessão da Web que, de outra forma, teria sido considerada apenas uma visita da Web, pois não houve envio real de formulário.

## Explicação do rastreamento de chamada {#call-tracking-explained}

&quot;Rastreamento de chamadas&quot; no sentido geral é um produto de empresas como [!DNL CallTrackingMetrics], [!DNL DiaglogTech], [!DNL Invoca]ou [!DNL CallRail], para citar alguns. Números de telefone exclusivos são mostrados aos usuários com base nos diferentes canais de marketing ou campanhas das quais eles vêm. Isso permite que os profissionais de marketing vejam o desempenho desses canais ou campanhas.

![](assets/1.png)

## Antes e depois {#before-and-after}

Consulte o fluxograma abaixo para ver como [!DNL Marketo Measure] usado para lidar com chamadas telefônicas sem uma integração com CallTrackingMetrics. A chamada telefônica não foi rastreada, portanto, foi vista como uma sessão da Web e nenhum ponto de contato foi criado para ela. Foi somente na próxima visita em que o usuário preencheu o formulário que um ponto de contato foi finalmente preenchido.

Com a integração do, você pode ver que a sessão da Web foi vinculada a uma chamada telefônica. O próximo preenchimento de formulário acaba sendo um toque PostLC e ainda é rastreado como parte da jornada.

![](assets/2.png)

## Como funciona {#how-it-works}

CallTrackingMetrics precisa fazer um pouco de trabalho de desenvolvimento no seu lado para que isso funcione. Com o javascript que eles colocam em seu site, CallTrackingMetrics pode capturar o _biz_uid do [!DNL Marketo Measure] cookie. Este &quot;[!DNL BizibleId]&quot; é armazenado por CallTrackingMetrics.

Quando um visitante acessa seu site e faz uma chamada telefônica, o trabalho do CallTrackingMetrics é enviar esses dados para o [!DNL Salesforce]  Normalmente, uma [!DNL Salesforce Task] que preenche dados como número de telefone, assunto, tipo e agora, o campo [!DNL BizibleId]

A variável [!DNL BizibleId] é um campo instalado com a versão 6.7+ do [!DNL Marketo Measure] Pacote de atribuição de marketing.

Veja abaixo um exemplo de um registro de Tarefa com o [!DNL BizibleId] preenchido.

![](assets/3.png)

Quando [!DNL Marketo Measure] encontra um registro de Tarefa com um [!DNL BizibleId] valor preenchido, [!DNL Marketo Measure] pode mapear esse usuário para uma sessão da Web com o mesmo [!DNL BizibleId] e atribua essa sessão a uma chamada telefônica em vez de uma visita à web.

## O ponto de contato {#the-touchpoint}

Quando [!DNL Marketo Measure] Você pode importar/baixar a tarefa, processamos esses detalhes junto com a sessão da Web. Na maioria dos casos, ele pode ser mesclado com um referenciador ou anúncio. No exemplo abaixo, um visitante encontrou a empresa por meio de um anúncio de Google pago e fez uma chamada telefônica.

A variável [!UICONTROL Ponto de contato] O tipo &quot;Chamada&quot; é extraído da Tarefa, da captura de tela acima, que também é preenchida por CallTrackingMetrics quando a Tarefa é criada.

![](assets/4.png)

## Gerando relatório {#reporting}

Valores de tipo de ponto de contato que [!DNL Marketo Measure] normalmente os envios por push são Visita na Web, Formulário da Web ou Chat pela Web, mas no caso de pontos de contato CallTrackingMetrics, o tipo de ponto de contato será Chamada telefônica. Isso ajuda os profissionais de marketing a ver quais canais recebem a maioria das chamadas telefônicas e a gerar receita para sua organização.

![](assets/5.png)

## Perguntas frequentes {#faq}

**Por que minha visita à Web é do tipo ponto de contato?**

O Tipo de ponto de contato é preenchido no campo Task.Type. Se o campo Task.Type estiver em branco, [!DNL Marketo Measure] definirá automaticamente o Tipo de ponto de contato como Visita na Web. Depois que o campo Task.Type é preenchido [!DNL Marketo Measure] lerá esse valor e preencherá o Tipo de ponto de contato de acordo.

**Que outros campos o ponto de contato preenche a partir da chamada telefônica?**

Tanto o Tipo de ponto de contato quanto o Médio conterão os dados extraídos do Task.Type. Todos os outros pontos de dados são extraídos do rastreamento web e dos dados javascript.

**Por que esta chamada telefônica não está vinculada a uma sessão da Web?**

Primeiro, verifique a Tarefa para ter certeza de que há uma [!DNL BizibleId] preenchido. Se não houver valor, não criaremos e não poderemos criar um ponto de contato para ele. Isso precisará ser escalonado com CallTrackingMetrics.

Se houver um valor, observe que consideramos apenas todas as sessões da Web como 30 minutos. Se um anúncio do Google foi clicado às 12h17 (início da sessão no site), mas a chamada telefônica não ocorreu até 13h05, não mesclaremos a sessão da Web e a chamada telefônica. Em vez disso, [!DNL Marketo Measure] criará um [!DNL Salesforce Task] ponto de contato para rastrear a chamada telefônica, mas não terá dados de sessão da web.

![](assets/6.png)

## Parcerias {#partnerships}

[!DNL Marketo Measure] A atualmente tem um parceiro oficial de Rastreamento de chamadas que passou pelo processo de integração &quot;oficial&quot; conosco, que incluiu treinamento em comarketing e produtos. Esse parceiro é CallTrackingMetrics.
