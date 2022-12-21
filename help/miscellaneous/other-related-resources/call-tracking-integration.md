---
unique-page-id: 18874592
description: Integração do rastreamento de chamadas - [!DNL Marketo Measure] - Documentação do produto
title: Integração ao rastreamento de chamadas
exl-id: bc35a789-e056-4456-9038-306ed34c2a8e
source-git-commit: 09ffdbb0b1baeed870a3145268997e63a3707c97
workflow-type: tm+mt
source-wordcount: '708'
ht-degree: 0%

---

# Integração ao rastreamento de chamadas {#call-tracking-integration}

Nossa integração com [!DNL CallTrackingMetrics] O destina-se a mesclar uma sessão da Web com uma chamada telefônica. Uma chamada telefônica é tratada como um envio de formulário para [!DNL Marketo Measure]. Ela atribui crédito a uma sessão da Web que, de outra forma, só teria sido considerada uma visita da Web porque não havia envio de formulário.

## Explicação do rastreamento de chamadas {#call-tracking-explained}

O &quot;Rastreamento de chamadas&quot;, no sentido geral, é um produto de empresas como [!DNL CallTrackingMetrics], [!DNL DiaglogTech], [!DNL Invoca]ou [!DNL CallRail], para nomear alguns. Números de telefone exclusivos são mostrados aos usuários com base nos diferentes canais de marketing ou campanhas de onde eles vêm. Isso permite que os profissionais de marketing vejam o desempenho desses canais ou campanhas.

![](assets/1.png)

## Antes e depois {#before-and-after}

Dê uma olhada no fluxograma abaixo para ver como [!DNL Marketo Measure] usado para lidar com chamadas telefônicas sem uma integração com CallTrackingMetrics. A chamada telefônica que ocorreu foi desacompanhada, por isso foi vista como uma sessão da Web e não foi criado nenhum ponto de contato para ela. Não foi até a próxima visita em que o usuário preencheu um formulário em que um ponto de contato foi finalmente preenchido.

Com a integração, você pode ver que a sessão da Web foi na verdade vinculada a uma chamada telefônica. O próximo preenchimento de formulário acaba sendo um toque de PostLC e ainda é rastreado como parte da jornada.

![](assets/2.png)

## Como funciona {#how-it-works}

CallTrackingMetrics tem que fazer um pouco de trabalho de desenvolvimento no final para que isso funcione. Com o javascript que eles colocam em seu site, CallTrackingMetrics pode capturar a _biz_uid da variável [!DNL Marketo Measure] cookie. Este &quot;[!DNL BizibleId]&quot; é então armazenado por CallTrackingMetrics.

Quando um visitante chega ao seu site e faz uma chamada telefônica, é tarefa do CallTrackingMetrics enviar esses dados para [!DNL Salesforce]  Normalmente, um [!DNL Salesforce Task] é criada e preenche dados, como número de telefone, assunto, tipo e agora, a variável [!DNL BizibleId]

O [!DNL BizibleId] é um campo instalado com a versão 6.7+ do [!DNL Marketo Measure] Pacote de atribuição de marketing.

Abaixo está um exemplo de um registro de Tarefa com o [!DNL BizibleId] preenchido.

![](assets/3.png)

When [!DNL Marketo Measure] encontra um registro de Tarefa com um [!DNL BizibleId] valor preenchido, [!DNL Marketo Measure] pode mapear esse usuário para uma sessão da Web com o mesmo [!DNL BizibleId] e atribua essa sessão a uma chamada telefônica em vez de uma visita da Web.

## O ponto de contato {#the-touchpoint}

When [!DNL Marketo Measure] é possível importar/baixar a tarefa, processamos esses detalhes junto com a sessão da Web. Na maioria dos casos, pode ser mesclado com um referenciador ou anúncio. No exemplo abaixo, um visitante encontrou o negócio por meio de um anúncio Pago do Google e fez uma chamada telefônica.

O [!UICONTROL Ponto de contato] O tipo &quot;Chamada&quot; é extraído da Tarefa, da captura de tela acima, que também é preenchida por CallTrackingMetrics quando a Tarefa é criada.

![](assets/4.png)

## Gerando relatório {#reporting}

Valores de Tipo de Ponto de Contato que [!DNL Marketo Measure] Geralmente, os push são Visita à Web, Formulário da Web ou Bate-papo da Web, mas no caso de Pontos de contato CallTrackingMetrics, o tipo de ponto de contato será Chamada de telefone. Isso ajuda os profissionais de marketing a ver quais canais capturam a maioria das chamadas telefônicas e geram receita para a organização.

![](assets/5.png)

## Perguntas frequentes {#faq}

**Por que meu ponto de contato é uma visita da Web?**

O Tipo de ponto de contato é preenchido a partir do campo Task.Type . Se o campo Task.Type estiver em branco, então [!DNL Marketo Measure] O definirá automaticamente o Tipo de ponto de contato como Visita da Web. Depois que o campo Task.Type é preenchido [!DNL Marketo Measure] lerá esse valor e preencherá o Tipo de ponto de contato de acordo.

**Que outros campos o ponto de contato preenche a partir da chamada telefônica?**

O Tipo de ponto de contato e a Média conterão os dados extraídos do Task.Type. Todos os outros pontos de dados são obtidos do rastreamento Web e dos dados javascript.

**Por que esta chamada telefônica não está vinculada a uma sessão da Web?**

Primeiro, verifique a Tarefa para verificar se há um [!DNL BizibleId] preenchido. Se não houver valor, então não criaremos ou não um ponto de contato para ele. Isso precisará ser escalonado com CallTrackingMetrics.

Se houver um valor, observe que consideramos apenas todas as sessões da Web como 30 minutos. Se um anúncio do Google foi clicado às 12h17 (início da sessão no site), mas a chamada telefônica não ocorreu até às 13h05, não mesclaremos a sessão da Web e a chamada telefônica. Em vez disso, [!DNL Marketo Measure] criará um [!DNL Salesforce Task] ponto de contato para rastrear a chamada telefônica, mas não terá dados de sessão da Web.

![](assets/6.png)

## Parcerias {#partnerships}

[!DNL Marketo Measure] Atualmente tem um parceiro oficial de Rastreamento de Chamadas que passou pelo processo de integração &quot;oficial&quot; conosco, que incluiu co-marketing e treinamento de produtos. Este parceiro é CallTrackingMetrics.
