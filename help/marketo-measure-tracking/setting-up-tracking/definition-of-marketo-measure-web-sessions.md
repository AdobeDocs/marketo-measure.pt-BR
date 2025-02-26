---
unique-page-id: 18874564
description: Definição de sessões da web do  [!DNL Marketo Measure]  -  [!DNL Marketo Measure]
title: Definição de Sessões da Web do  [!DNL Marketo Measure]
exl-id: ddf4f19d-2024-413a-b0ae-4efd468c24de
feature: Tracking
source-git-commit: 9a5e267b4b268d067fbbe89a00a4da96752a44db
workflow-type: ht
source-wordcount: '811'
ht-degree: 100%

---

# Definição de Sessões da Web do [!DNL Marketo Measure] {#definition-of-marketo-measure-web-sessions}

Saiba como o [!DNL Marketo Measure] define as sessões da web.

A **sessão da web** refere-se às interações de uma pessoa com seu site durante um determinado período. A sessão começa quando um usuário acessa seu site.

Por exemplo, Haley visita adobe.com. Sua visita ao site inicia uma sessão. Quando Haley sai do site, fechando a guia/navegador da web ou navegando para fora do site, a sessão termina.

Um usuário não pode abrir várias sessões ao mesmo tempo. Se Haley abrir [!DNL adobe.com] em 10 guias separadas, apenas uma sessão será criada em relação à visita dela ao site.

## Como o [!DNL Marketo Measure] define uma nova sessão? {#how-does-marketo-measure-define-a-new-session}

Há algumas coisas que determinam quando uma sessão termina e quando uma nova sessão começa. As duas formas principais das sessões do [!DNL Marketo Measure] serem encerradas são:

* **Expiração baseada em tempo**
* **Expiração baseada em canal**

## Expiração baseada em tempo {#time-based-expiration}

### Comportamento legado {#legacy-behavior}

**Quanto tempo dura uma sessão?**

As sessões do [!UICONTROL Marketo Measure] serão encerradas após 30 minutos de inatividade no site. Por exemplo:

Quando Haley visita adobe.com, uma sessão é iniciada. Ela explora o site por alguns minutos e depois se afasta de seu computador, mas deixando o site aberto. Após 30 minutos de inatividade, a sessão será encerrada.

Atualmente, o [!UICONTROL Marketo Measure] considera apenas a navegação de páginas e os envios de formulários como atividade. Rolar pela página da Web ou passar o mouse sobre um elemento na página não é considerada uma atividade. Então, se Haley visitar adobe.com para ler uma publicação do blog, e ela levar uma hora para ler, sua sessão na web ainda vai terminar após 30 minutos, mesmo se ela estiver rolando pelo conteúdo na página.

### Novo comportamento {#new-behavior}

Para novos usuários, esse será o comportamento padrão.

Os usuários existentes podem adotar o novo comportamento ativando o botão em **Configurações** > **Atribuição de todos os contatos** > **Transferência de canal de sessão**. Após ativada, essa configuração não poderá ser revertida.

Quando uma nova sessão é criada após 30 minutos de inatividade, o canal da sessão anterior será transferido se a nova sessão começar dentro de sete dias. Essa transferência se aplica somente às visitas diretas (sem referenciador ou referenciadores internos). Se a inatividade exceder sete dias, o canal da nova sessão assumirá Direto/Outro como padrão. Por exemplo, se Haley visitar landingpage.com no Google, ficar inativa por mais de 30 minutos e retornar em sete dias, a nova sessão manterá o canal do Google. No entanto, se o mesmo usuário revisitar a página por um canal diferente, o canal não direto não será substituído pelo canal anterior do Google.

Somente o canal será transferido, excluindo detalhes da campanha ou do referenciador. Isso ocorre porque a classificação de canal é tratada pelo Marketo Measure, enquanto outros pontos de dados são coletados separadamente.

**Logon a partir de redes sociais**

Quando um visitante usa um logon a partir de redes sociais por meio do Google, Microsoft ou Apple, a sessão é mesclada em uma sessão contínua. Por exemplo, se um visitante acessar uma página do LinkedIn, concluir um logon a partir da rede social do Google e acessar uma página de agradecimento, tudo contará como uma única sessão. Sem a Transferência do canal de sessão, o logon a partir de redes sociais criaria sessões separadas devido ao referenciador externo.

## Expiração baseada em canal {#channel-based-expiration}

O [!DNL Marketo Measure] inicia uma nova sessão sempre que um usuário acessa o site de um canal de marketing digital diferente ou de um site externo. Isso inclui:

* Um site de referência
* Canais de redes sociais ([!DNL Facebook], [!DNL LinkedIn] etc.)
* Canais de pesquisa paga ou orgânica ([!DNL Google/Bing])

**Sites de referência e canais de redes sociais**

Sempre que um(a) visitante chega ao seu site a partir de um site de referência ou de um canal de rede social, uma nova sessão é iniciada.

Digamos que Haley esteja no LinkedIn, clica em uma publicação do [!DNL Marketo Measure] e é redirecionada para o site da Adobe. Em seguida, ao rolar pelas páginas do [!DNL Facebook], Haley vê outra publicação do [!DNL Marketo Measure]. Quando ela clica nessa publicação e é redirecionada para o site da Adobe, a primeira sessão da web relacionada ao [!DNL LinkedIn] se encerra e uma nova sessão relacionada ao [!DNL Facebook] começa.

**Canais de pesquisa paga ou orgânica**

Uma nova sessão se inicia sempre que usuários acessam o site por meio de canais de pesquisa paga ou orgânica. Se Haley chegar ao site da Adobe por meio de uma pesquisa orgânica e, em seguida, visitar o site imediatamente por meio de um anúncio pago no Google, criam-se duas sessões separadas.

**Tráfego direto da Web**

Se um visitante acessar seu site digitando o URL dele na barra de endereços, isso nem sempre causa o início de uma nova sessão.

Se a primeira sessão da Web de Haley começar como o resultado de uma visita de um site de referência, canal de rede social ou canal de pesquisa paga/orgânica e, em seguida, ela o visitar novamente direto da Web, isso não causará o início de uma nova sessão.

_No entanto_, se a origem da primeira sessão da web de Haley for o canal Direto da web e, em seguida, ela visitar o site via _um site externo/de referência_, a primeira sessão é encerrada e uma nova sessão relacionada ao site externo/de referência é aberta.

## Sessões do Google Analytics {#google-analytics-sessions}

Existem algumas semelhanças em como o [!DNL Marketo Measure] e o Google Analytics definem as sessões. Para obter mais informações sobre como o Google Analytics define sessões, visite: [https://support.google.com/analytics/answer/2731565?hl=en](https://support.google.com/analytics/answer/2731565?hl=br){target="_blank"}
