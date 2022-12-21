---
unique-page-id: 35586069
description: Garantia do consentimento do GDPR no Marketo Measure Js - Medida do Marketo - Documentação do produto
title: Garantia do consentimento do GDPR no Marketo Measure Js
exl-id: 9afc5e4d-cf97-4c49-b9ee-ee1cc99c1f90
source-git-commit: c7d3bbce1f0c6a99409822c06c43961c93cd9458
workflow-type: tm+mt
source-wordcount: '425'
ht-degree: 0%

---

# Garantia do consentimento do GDPR no Marketo Measure Js {#ensuring-consent-for-gdpr-in-marketo-measure-js}

O Regulamento Geral sobre a Proteção de Dados (GDPR) é uma legislação da União Europeia que entrou em vigor em 25 de maio de 2018.

## Visão geral {#overview}

O GDPR tem por objetivo reforçar os direitos das pessoas em causa na União Europeia (UE) e no Espaço Econômico Europeu (EEE) no que respeita à forma como os seus dados pessoais são utilizados e protegidos. &quot;Dados pessoais&quot; refere-se a qualquer informação relacionada com uma pessoa singular identificada ou identificável. O GDPR aplica-se a qualquer organização dentro ou fora da UE que comercialize bens ou serviços para e/ou rastreie o comportamento de titulares de dados na UE e no EEE. Se você faz negócios com titulares de dados na Europa que envolvem o processamento de seus dados pessoais, esta legislação se aplica a você. As sanções por incumprimento são significativas, com multas elevadas para os que violam o regulamento; a coima máxima por uma única infração é de 20 milhões de euros ou 4% do volume de negócios anual a nível mundial, consoante o que for mais elevado.

Por padrão, [!DNL bizible.js] coleta os dados analíticos dos usuários, a menos que estejam configurados especificamente para aguardar o consentimento. When [!DNL bizible.js] estiver configurado para aguardar o consentimento do usuário, ele não criará cookies ou enviará dados de análise até que o consentimento seja atingido.

## Como aguardar o consentimento {#how-to-wait-for-consent}

Há duas maneiras de definir [!DNL bizible.js] para aguardar o consentimento.

Opção 1 - Substituir o padrão [!DNL bizible.js] tag de script com:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-consent-button-id="ConsentButtonId"></script>`

**Se você usar [!DNL Google Tag Manager] para instalar o script**, lembre-se de que o GTM remove os atributos de dados; portanto, use o seguinte script:

`<span id="bizible-settings" data-consent-button-id="ConsentButtonId"></span>`
`<script type="text/javascript" src=https://cdn.bizible.com/scripts/bizible.js async=""></script>`

>[!NOTE]
>
>Nesse caso, [!DNL bizible.js] anexará um evento ao clicar ao elemento HTML com a id &quot;ConsentButtonId&quot;.

Ao clicar nesse elemento HTML, [!DNL bizible.js] O criará um cookie para lembrar que o consentimento do usuário foi recebido e começar a coletar dados de análise como de costume.

**-ou-**

Opção 2 - Substituir o padrão [!DNL bizible.js] tag de script com:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-requires-user-consent="true"></script>`

Isso diz [!DNL bizible.js] para não rastrear até que o consentimento seja atingido, o que pode ser feito com a seguinte API JS:

*janela[&quot;Bizible&quot;] = janela[&quot;Bizible&quot;] || { _fila: [], Empurre: function (o, p) { this._queue.push({ tipo: o, dados: p }); } };*

*Bizible.Push(&#39;Consent&#39;, true);*

**Se você usar [!DNL Google Tag Manager] para instalar o script**, lembre-se de que o GTM remove os atributos de dados; portanto, use o seguinte script:

`<span id="bizible-settings" data-requires-user-consent="true"></span>`
`<script type="text/javascript" src=https://cdn.bizible.com/scripts/bizible.js async=""></script>`

>[!NOTE]
>
>bizible.js criará um cookie para lembrar que o consentimento do usuário foi recebido e começar a coletar dados de análise como de costume somente após a API JS ser chamada.

Por outro lado, os clientes também podem usar essa API para retirar o consentimento do usuário:

`window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) { this._queue.push({ type: o, data: p }); } };`

`Bizible.Push('Consent', false);`

Quando esse código é executado, ele excluirá todos os cookies que [!DNL bizible.js] criado anteriormente e retomará a coleta de dados do analytics somente se o usuário reconsentir.
