---
description: Mostra como configurar o bizible.js para aguardar o consentimento do usuário para o GDPR antes de definir cookies ou enviar dados
title: Garantia de consentimento com o RGPD no Marketo Measure Js
exl-id: 9afc5e4d-cf97-4c49-b9ee-ee1cc99c1f90
feature: Tracking
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '429'
ht-degree: 95%

---

# Garantia de consentimento com o RGPD no Marketo Measure Js {#ensuring-consent-for-gdpr-in-marketo-measure-js}

O Regulamento Geral sobre a Proteção de Dados (RGPD) é uma legislação da União Europeia que entrou em vigor em 25 de maio de 2018.

## Visão geral {#overview}

O objetivo do RGPD é reforçar os direitos de titulares de dados na União Europeia (UE) e no Espaço Econômico Europeu (EEE) no que diz respeito à forma como dados pessoais são utilizados e protegidos. O termo “Dados pessoais” se refere a qualquer informação que diz respeito a uma pessoa singular identificada ou identificável. O RGPD aplica-se a qualquer organização dentro ou fora da UE que comercialize bens ou serviços para titulares de dados na UE e no EEE e/ou que acompanhe os seus comportamentos. Se você faz negócios com titulares de dados na Europa que envolvem o processamento de dados pessoais, esta legislação se aplica a você. As penalidades por não conformidade são significativas, com multas elevadas para quem viola o regulamento; a multa máxima por uma única violação é de 20 milhões de euros ou 4% do volume de negócios mundial anual, o que for maior.

Por padrão, o [!DNL bizible.js] coleta dados de análise dos usuários, a menos que esteja configurado para aguardar o consentimento. Quando o [!DNL bizible.js] está configurado para aguardar o consentimento do usuário, ele não cria cookies ou envia dados de análise até a confirmação do consentimento.

## Como aguardar o consentimento {#how-to-wait-for-consent}

Há duas maneiras de definir o [!DNL bizible.js] para aguardar o consentimento.

Opção 1 - Substituir a tag de script padrão do [!DNL bizible.js] por:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-consent-button-id="ConsentButtonId"></script>`

**Se você usar o [!DNL Google Tag Manager] para instalar o script**, lembre-se de que o GTM remove atributos de dados; portanto, use o seguinte script:

`<span id="bizible-settings" data-consent-button-id="ConsentButtonId"></span>`
`<script type="text/javascript" src=https://cdn.bizible.com/scripts/bizible.js async=""></script>`

>[!NOTE]
>
>Nesse caso, o [!DNL bizible.js] anexa um evento ao clicar no elemento HTML com a ID “ConsentButtonId”.

Ao clicar neste elemento HTML, o [!DNL bizible.js] cria um cookie para lembrar o recebimento do consentimento do usuário e começar a coletar dados de análise como de costume.

**-ou-**

Opção 2 - Substituir a tag de script padrão do [!DNL bizible.js] por:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-requires-user-consent="true"></script>`

Essa opção orienta o [!DNL bizible.js] a não rastrear até a confirmação do consentimento, o que pode ser feito com a seguinte API JS:

*window[&#39;Bizible&#39;] = window[&#39;Bizible&#39;] || { _queue: [], Push: function (o, p) { this._queue.push({ type: o, data: p }); } };*

*Bizible.  Push(&#39;Consent&#39;, true);*

**Se você usar o [!DNL Google Tag Manager] para instalar o script**, lembre-se de que o GTM remove atributos de dados; portanto, use o seguinte script:

`<span id="bizible-settings" data-requires-user-consent="true"></span>`
`<script type="text/javascript" src=https://cdn.bizible.com/scripts/bizible.js async=""></script>`

>[!NOTE]
>
>O bizible.js cria um cookie para lembrar a confirmação do consentimento do usuário e começa a coletar dados de análise como de costume somente depois de chamar a API JS.

Por outro lado, clientes também podem usar essa API para retirar o consentimento do usuário:

`window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) { this._queue.push({ type: o, data: p }); } };`

`Bizible.Push('Consent', false);`

A execução desse código exclui todos os cookies que o [!DNL bizible.js] criou anteriormente e retoma a coleta de dados de análise somente se o usuário consentir novamente.
