---
description: Integração de Rastreamento de Chamadas - [!DNL Marketo Measure]
title: Integração ao rastreamento de chamadas
exl-id: bc35a789-e056-4456-9038-306ed34c2a8e
feature: Tracking, Integration
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '767'
ht-degree: 1%

---


# Integração ao rastreamento de chamadas {#call-tracking-integration}

Nossa integração com o [!DNL CallTrackingMetrics] se destina a mesclar uma sessão da Web com uma chamada telefônica. Uma chamada telefônica é tratada como um envio de formulário para [!DNL Marketo Measure]. Ele dá crédito a uma sessão da Web que, de outra forma, teria sido considerada apenas uma visita da Web, pois não houve envio real de formulário.

## Explicação do rastreamento de chamada {#call-tracking-explained}

&quot;Rastreamento de Chamadas&quot; em geral é um produto de empresas como [!DNL CallTrackingMetrics], [!DNL DiaglogTech], [!DNL Invoca] ou [!DNL CallRail], para citar algumas. Números de telefone exclusivos são mostrados aos usuários com base nos diferentes canais de marketing ou campanhas das quais eles vêm. Isso permite que os profissionais de marketing vejam o desempenho desses canais ou campanhas.

![Diagrama que mostra números de telefone exclusivos exibidos com base em diferentes canais e campanhas de marketing](assets/1.png)

## Antes e depois {#before-and-after}

Examine o fluxograma abaixo para ver como o [!DNL Marketo Measure] costumava lidar com chamadas telefônicas sem uma integração com CallTrackingMetrics. A chamada telefônica não foi rastreada, portanto, foi vista como uma sessão da Web e nenhum ponto de contato foi criado para ela. Foi somente na próxima visita em que o usuário preencheu o formulário que um ponto de contato foi finalmente preenchido.

Com a integração do, você pode ver que a sessão da Web foi vinculada a uma chamada telefônica. O próximo preenchimento de formulário acaba sendo um toque PostLC e ainda é rastreado como parte da jornada.

![Antes e depois do fluxograma comparando o rastreamento de chamadas telefônicas sem e com a integração CallTrackingMetrics](assets/2.png)

## Como funciona {#how-it-works}

CallTrackingMetrics precisa fazer algum trabalho de desenvolvimento na ponta deles para que isso funcione. Com o JavaScript que eles colocam em seu site, CallTrackingMetrics pode pegar o _biz_uid do cookie [!DNL Marketo Measure]. Este &quot;[!DNL BizibleId]&quot; é então armazenado por CallTrackingMetrics.

Quando um visitante acessa seu site e faz uma chamada telefônica, o trabalho do CallTrackingMetrics é enviar esses dados para o [!DNL Salesforce].  Normalmente, é criado um [!DNL Salesforce Task] que preenche dados como número de telefone, assunto, tipo e, agora, o [!DNL BizibleId]

O [!DNL BizibleId] é um campo instalado com a versão 6.7+ do pacote de Atribuição de marketing [!DNL Marketo Measure].

Veja abaixo um exemplo de um registro de Tarefa com [!DNL BizibleId] preenchido.

![Exemplo de registro de Tarefa do Salesforce mostrando o campo BizibleId preenchido com o valor](assets/3.png)

Quando [!DNL Marketo Measure] encontra um registro de Tarefa com um valor [!DNL BizibleId] conhecido preenchido, [!DNL Marketo Measure] pode mapear esse usuário para uma sessão da Web com o mesmo [!DNL BizibleId] e atribuir essa sessão a uma chamada telefônica em vez de uma visita à Web.

## O ponto de contato {#the-touchpoint}

Quando [!DNL Marketo Measure] pode importar/baixar a tarefa, processamos esses detalhes junto com a sessão da Web. Normalmente, pode ser mesclado com um referenciador ou anúncio. No exemplo abaixo, um visitante encontrou a empresa por meio de um anúncio de Google pago e fez uma chamada telefônica.

A &quot;Chamada&quot; do Tipo [!UICONTROL Touchpoint] é retirada da Tarefa, da captura de tela acima, que também é preenchida por CallTrackingMetrics quando a Tarefa é criada.

![Registro de ponto de contato mostrando Tipo como Chamada de sessão da Web mesclada e dados de chamada telefônica](assets/4.png)

## Relatórios {#reporting}

Os valores de Tipo de ponto de contato que [!DNL Marketo Measure] normalmente envia são Visita da Web, Formulário da Web ou Chat da Web, mas no caso de pontos de contato CallTrackingMetrics, o tipo de ponto de contato é Chamada telefônica. Isso ajuda os profissionais de marketing a ver quais canais recebem a maioria das chamadas telefônicas e a gerar receita para sua organização.

![Relatório que mostra tipos de pontos de contato, incluindo Chamada telefônica, para rastrear a receita gerada por chamada por canal](assets/5.png)

## Perguntas frequentes {#faq}

**Por que minha visita à Web é do tipo ponto de contato?**

O Tipo de ponto de contato é preenchido no campo Task.Type. Se o campo Task.Type estiver em branco, [!DNL Marketo Measure] definirá automaticamente o Tipo de ponto de contato como Visita na Web. Depois que o campo Task.Type for preenchido, [!DNL Marketo Measure] lerá esse valor e preencherá o Tipo de ponto de contato adequadamente.

**Que outros campos o ponto de contato preenche a partir da chamada telefônica?**

O Tipo de ponto de contato e o Medium contêm os dados obtidos do Task.Type. Todos os outros pontos de dados são extraídos do rastreamento web e dos dados javascript.

**Por que esta chamada telefônica não está vinculada a uma sessão da Web?**

Primeiro, verifique a Tarefa para certificar-se de que há um [!DNL BizibleId] preenchido. Se não houver valor, não poderemos criar um ponto de contato para ele. Isso precisa ser escalonado com CallTrackingMetrics.

Se houver um valor, observe que consideramos apenas todas as sessões da Web como 30 minutos. Se um Anúncio do Google foi clicado às 12:17pm (início da sessão no site), mas a chamada telefônica não ocorreu até 1:05pm, não mesclaremos a sessão da Web e a chamada telefônica. Em vez disso, [!DNL Marketo Measure] cria um ponto de contato [!DNL Salesforce Task] separado para rastrear a chamada telefônica, mas não terá dados de sessão da Web.

![Diagrama mostrando a janela de tempo limite de sessão da Web de 30 minutos entre um clique de anúncio e uma chamada telefônica](assets/6.png)

## Parcerias {#partnerships}

Atualmente, o [!DNL Marketo Measure] tem um parceiro de Rastreamento de Chamadas oficial que passou pelo processo de integração &quot;oficial&quot; conosco, que incluiu treinamento em comarketing e produtos. Esse parceiro é CallTrackingMetrics.
