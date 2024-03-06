---
unique-page-id: 18874564
description: Definição de [!DNL Marketo Measure] Sessões da Web - [!DNL Marketo Measure]
title: Definição de Sessões da Web do  [!DNL Marketo Measure]
exl-id: ddf4f19d-2024-413a-b0ae-4efd468c24de
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '563'
ht-degree: 61%

---

# Definição de Sessões da Web do [!DNL Marketo Measure] {#definition-of-marketo-measure-web-sessions}

Saiba como o [!DNL Marketo Measure] define as sessões da web.

A **sessão da web** refere-se às interações de uma pessoa com seu site durante um determinado período. A sessão começa quando um usuário acessa seu site.

Por exemplo, Haley visita adobe.com. Sua visita ao site inicia uma sessão. Quando Haley sai do site, fechando a guia/navegador da web ou navegando para fora do site, a sessão termina.

Um usuário não pode abrir várias sessões ao mesmo tempo. Se Haley abrir [!DNL adobe.com] em dez guias separadas, apenas uma sessão foi criada em relação à visita dela ao site.

## Como o [!DNL Marketo Measure] define uma nova sessão? {#how-does-marketo-measure-define-a-new-session}

Há algumas coisas que determinam quando uma sessão termina e quando uma nova sessão começa. As duas formas principais das sessões do [!DNL Marketo Measure] serem encerradas são:

* **Expiração baseada em tempo**
* **Expiração baseada em canal**

## Expiração baseada em tempo {#time-based-expiration}

**Quanto tempo dura uma sessão?**

As sessões do [!DNL Marketo Measure] serão encerradas após 30 minutos de inatividade no site. Por exemplo:

Quando Haley visita adobe.com, uma sessão é iniciada. Ela explora o site por alguns minutos e depois se afasta de seu computador, mas deixando o site aberto. Após 30 minutos de inatividade, a sessão termina.

Atualmente, o [!DNL Marketo Measure] considera somente a navegação de página e os envios de formulário como atividade. Rolar pela página da Web ou passar o mouse sobre um elemento na página não é considerada uma atividade. Então, se Haley visitar adobe.com para ler uma publicação do blog, e ela levar uma hora para ler, sua sessão na web ainda vai terminar após 30 minutos, mesmo se ela estiver rolando pelo conteúdo na página.

## Expiração baseada em canal {#channel-based-expiration}

[!DNL Marketo Measure] inicia uma nova sessão sempre que um usuário acessa o seu site a partir de um canal de marketing digital diferente ou de um site externo. Isso inclui:

* Um site de referência
* Canais sociais ([!DNL Facebook], [!DNL LinkedIn]e assim por diante)
* Canais de pesquisa paga ou orgânica ([!DNL Google/Bing])

**Sites de referência e canais de redes sociais**

Sempre que um visitante acessa seu site a partir de um site de referência ou de um canal social, uma nova sessão é iniciada.

Diga que Haley está no LinkedIn, clique em [!DNL Marketo Measure] e será redirecionado para o site do Adobe. Em seguida, ao rolar pelas páginas do [!DNL Facebook], Haley vê outra publicação do [!DNL Marketo Measure]. Quando ela clica nessa publicação e é redirecionada para o site do Adobe, isso causa a primeira sessão da Web relacionada ao [!DNL LinkedIn] para terminar, e uma nova sessão relacionada ao [!DNL Facebook] começa.

**Canais de pesquisa paga ou orgânica**

As novas sessões começam sempre que um usuário acessa seu site por meio de canais de pesquisa pagos ou orgânicos. Se Haley chegar ao site da Adobe por meio de pesquisa orgânica e, em seguida, visitar imediatamente seu site por meio de um anúncio pago no Google, duas sessões separadas serão criadas.

**Tráfego direto da Web**

Se um visitante acessar seu site digitando o URL dele na barra de endereços, isso nem sempre causa o início de uma nova sessão.

Se a primeira sessão da Web de Haley começar como o resultado de uma visita de um site de referência, canal de rede social ou canal de pesquisa paga/orgânica e, em seguida, ela o visitar novamente direto da Web, isso não causará o início de uma nova sessão.

_No entanto_, se a primeira sessão da Web de Haley tiver origem no Web Direct e, em seguida, ela visitar o site via _um site externo/de referência_, a primeira sessão será encerrada e uma nova sessão será aberta relacionada ao site externo/de referência.

## Sessões do Google Analytics {#google-analytics-sessions}

Existem algumas semelhanças em como o [!DNL Marketo Measure] e o Google Analytics definem as sessões. Para obter mais informações sobre como o Google Analytics define sessões, visite: [https://support.google.com/analytics/answer/2731565?hl=en](https://support.google.com/analytics/answer/2731565?hl=en){target="_blank"}
