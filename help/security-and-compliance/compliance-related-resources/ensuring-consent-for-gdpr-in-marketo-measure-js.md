---
unique-page-id: 35586069
description: Garantia do consentimento para o GDPR no Marketo Measure Js - Marketo Measure - Documentação do produto
title: Garantia do consentimento para o GDPR no Marketo Measure Js
exl-id: 9afc5e4d-cf97-4c49-b9ee-ee1cc99c1f90
feature: Tracking
source-git-commit: 4787f765348da71bc149c997470ce678ba498772
workflow-type: tm+mt
source-wordcount: '423'
ht-degree: 0%

---

# Garantia do consentimento para o GDPR no Marketo Measure Js {#ensuring-consent-for-gdpr-in-marketo-measure-js}

O Regulamento Geral sobre a Proteção de Dados (GDPR) é uma legislação da União Europeia que entrou em vigor em 25 de maio de 2018.

## Visão geral {#overview}

O objetivo do GDPR é reforçar os direitos dos titulares de dados na União Europeia (UE) e no Espaço Econômico Europeu (EEE) no que diz respeito à forma como os seus dados pessoais são utilizados e protegidos. &quot;Dados pessoais&quot; refere-se a qualquer informação que diga respeito a uma pessoa singular identificada ou identificável. O RGPD aplica-se a qualquer organização dentro ou fora da UE que comercialize bens ou serviços para titulares de dados na UE e no EEE e/ou que acompanhe os seus comportamentos. Se você faz negócios com titulares de dados na Europa que envolvem o processamento de seus dados pessoais, esta legislação se aplica a você. As penalidades por não conformidade são significativas, com multas elevadas para aqueles que violam o regulamento; a multa máxima por uma única violação é de 20 milhões de euros ou 4% do volume de negócios mundial anual, o que for maior.

Por padrão, [!DNL bizible.js] O coleta dados do analytics dos usuários, a menos que esteja configurado para aguardar por consentimento. Quando [!DNL bizible.js] O está configurado para aguardar o consentimento do usuário. Ele não criará cookies ou enviará dados do Analytics até que o consentimento seja atingido.

## Como aguardar por consentimento {#how-to-wait-for-consent}

Há duas maneiras de definir [!DNL bizible.js] para aguardar por consentimento.

Opção 1 - Substituir o padrão [!DNL bizible.js] tag de script com:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-consent-button-id="ConsentButtonId"></script>`

**Se você usar [!DNL Google Tag Manager] para instalar o script**, lembre-se de que o GTM remove atributos de dados; portanto, use o seguinte script:

`<span id="bizible-settings" data-consent-button-id="ConsentButtonId"></span>`
`<script type="text/javascript" src=https://cdn.bizible.com/scripts/bizible.js async=""></script>`

>[!NOTE]
>
>Nesse caso, [!DNL bizible.js] anexa um evento ao clicar no elemento HTML com a ID &quot;ConsentButtonId&quot;.

Quando este elemento HTML for clicado, [!DNL bizible.js] O cria um cookie para lembrar que o consentimento do usuário foi recebido e começar a coletar dados de análise como de costume.

**-ou-**

Opção 2 - Substituir o padrão [!DNL bizible.js] tag de script com:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-requires-user-consent="true"></script>`

Isso informa o [!DNL bizible.js] para não rastrear até que o consentimento seja atingido, o que pode ser feito com a seguinte API JS:

*janela[&#39;Bizible&#39;] = janela[&#39;Bizible&#39;] || { _fila: [], Push: função (o, p) { this._queue.push({ type: o, data: p }); } };*

*Bizible. Push(&#39;Consentimento&#39;, true);*

**Se você usar [!DNL Google Tag Manager] para instalar o script**, lembre-se de que o GTM remove atributos de dados; portanto, use o seguinte script:

`<span id="bizible-settings" data-requires-user-consent="true"></span>`
`<script type="text/javascript" src=https://cdn.bizible.com/scripts/bizible.js async=""></script>`

>[!NOTE]
>
>bizible.js criará um cookie para lembrar que o consentimento do usuário foi recebido e começará a coletar dados de análise como de costume somente depois que a API JS for chamada.

Por outro lado, os clientes também podem usar essa API para retirar o consentimento do usuário:

`window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) { this._queue.push({ type: o, data: p }); } };`

`Bizible.Push('Consent', false);`

Quando esse código é executado, ele exclui todos os cookies que [!DNL bizible.js] criado anteriormente e retoma a coleta de dados do analytics somente se o usuário reconsentir.
