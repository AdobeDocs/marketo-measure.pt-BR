---
unique-page-id: 18874564
description: Definição de [!DNL Marketo Measure] Sessões da Web - [!DNL Marketo Measure] - Documentação do produto
title: Definição de [!DNL Marketo Measure] Sessões da Web
exl-id: ddf4f19d-2024-413a-b0ae-4efd468c24de
source-git-commit: ae5b77744d523606ce6cfcf48d7e8d5049d5ccb7
workflow-type: tm+mt
source-wordcount: '579'
ht-degree: 0%

---

# Definição de [!DNL Marketo Measure] Sessões da Web {#definition-of-marketo-measure-web-sessions}

Saiba como [!DNL Marketo Measure] define sessões da web.

A **sessão da web** refere-se às interações de um indivíduo com seu site durante um determinado período. A sessão começa quando um usuário acessa seu site.

Por exemplo, Haley visita adobe.com. Sua visita ao site inicia uma sessão. Quando Haley sai do site, fechando a guia/navegador da Web ou navegando para fora do site, a sessão termina.

Um usuário não pode abrir várias sessões ao mesmo tempo. Se o Haley abrir [!DNL adobe.com] em 10 guias separadas, somente uma sessão foi criada em relação à visita ao site.

## Como [!DNL Marketo Measure] definir uma nova sessão? {#how-does-marketo-measure-define-a-new-session}

Há algumas coisas que determinam o fim de uma sessão e o início de uma nova sessão. As duas principais maneiras [!DNL Marketo Measure] as sessões podem terminar se:

* **Expiração em função do tempo**
* **Expiração baseada em canal**

## Expiração com base no tempo {#time-based-expiration}

**Por quanto tempo uma sessão dura?**

[!DNL Marketo Measure] as sessões serão encerradas após 30 minutos de inatividade no site. Por exemplo:

Quando Haley visita adobe.com, uma sessão é iniciada. Ela explora o site por alguns minutos e depois afasta-se de seu computador, mas deixa o site aberto. Após 30 minutos de inatividade, a sessão será encerrada.

Atualmente, [!DNL Marketo Measure] O considera somente navegação de página e envios de formulário como atividade. Rolar pela página da Web ou passar o mouse sobre um elemento na página não é considerado atividade. Portanto, se Haley visitar adobe.com para ler uma publicação do blog e levar uma hora para ler, sua sessão da web ainda terminará após 30 minutos, mesmo que ela esteja navegando pelo conteúdo na página.

## Expiração baseada em canal {#channel-based-expiration}

[!DNL Marketo Measure] O iniciará uma nova sessão sempre que um usuário acessar seu site por um canal de marketing digital diferente ou por um site externo. Isso inclui:

* Um site de referência
* Canais sociais ([!DNL Facebook], [!DNL LinkedIn], etc.)
* Canais de pesquisa paga ou orgânica ([!DNL Google/Bing])

**Sites de referência e canais sociais**

Sempre que um visitante acessar seu site a partir de um site de referência ou de um canal social, uma nova sessão será iniciada.

Diga que Haley está no LinkedIn, clica em um [!DNL Marketo Measure] e é redirecionado para o site do Adobe. Em seguida, ao rolar [!DNL Facebook]Haley vê outro [!DNL Marketo Measure] publicação. Quando ela clica nessa publicação e é redirecionada para o Adobe, isso causa a primeira sessão da Web relacionada a [!DNL LinkedIn] para encerrar e uma nova sessão relacionada ao [!DNL Facebook] começa.

**Canais de pesquisa paga ou orgânica**

Novas sessões serão iniciadas sempre que um usuário acessar seu site por meio de canais de pesquisa pagos ou orgânicos. Se Haley chegar ao site do Adobe por meio de pesquisa orgânica e imediatamente visitar seu site por meio de um anúncio pago no Google, duas sessões separadas serão criadas.

**Tráfego direto na Web**

Se um visitante acessa seu site digitando o URL dele na barra de endereços, isso nem sempre faz com que uma nova sessão seja iniciada.

Se a primeira sessão da Haley começar como resultado de uma visita de um site de referência, canal social ou canal de pesquisa paga/orgânica e ela visitar o site via web direct, isso não causaria o início de uma nova sessão.

_No entanto_, se a primeira sessão da Web do Haley se originou do Web Direct e visita o site via _um site externo/de referência_, a primeira sessão será encerrada e uma nova sessão será aberta relacionada ao site externo/de referência.

## Sessões do Google Analytics {#google-analytics-sessions}

Há algumas semelhanças em como [!DNL Marketo Measure] e Google Analytics define sessões. Para obter mais informações sobre como o Google Analytics define sessões, visite: [https://support.google.com/analytics/answer/2731565?hl=en](http://support.google.com/analytics/answer/2731565?hl=en){target="_blank"}
