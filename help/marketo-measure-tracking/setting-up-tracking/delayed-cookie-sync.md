---
unique-page-id: 30082018
description: Sincronização de cookies atrasados - [!DNL Marketo Measure] - Documentação do produto
title: Sincronização de cookies atrasados
exl-id: 394053ed-5642-48e4-b83c-c483a58ebbd7
source-git-commit: ae5b77744d523606ce6cfcf48d7e8d5049d5ccb7
workflow-type: tm+mt
source-wordcount: '187'
ht-degree: 0%

---

# Sincronização de cookies atrasados {#delayed-cookie-sync}

Essa modificação no padrão [!DNL Marketo Measure] O JavaScript serve para fornecer [!DNL bizible.js] Suporte à API, para que você possa configurar o JS para armazenar temporariamente as atividades do usuário dos visitantes, mas não enviar as informações para a [!DNL Marketo Measure] até que o usuário dê consentimento para isso.

## Procedimentos {#how-to}

Substituir o padrão [!DNL bizible.js] tag de script com o seguinte:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-consent-button-id="ConsentButtonId"></script>`

O atributo data-consent-button-id=&quot;ConsentButtonId&quot; informa o [!DNL bizible.js] para não enviar dados analíticos até que um elemento HTML com essa id seja clicado.

Como alternativa, os clientes podem definir a variável [!UICONTROL data-consent-button-id] para ser algo inexistente (por exemplo, &quot;foobar&quot;) e usar a seguinte API para informar [!DNL bizible.js] que o utilizador consentiu:

`window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`
`Bizible.Push("Consent", true });`

>[!NOTE]
>
>O consentimento do usuário é salvo no cookie, o que significa que, uma vez que o usuário tenha consentido, não é necessário executar essa chamada em nenhuma página subsequente.

## Limitação {#limitation}

Porque [!DNL bizible.js] salva temporariamente atividades da Web não enviadas nos cookies primários dos clientes e o tamanho dos cookies primários é limitado, somente três solicitações não enviadas podem ser salvas em um determinado momento.

Se já houver três solicitações pendentes, quaisquer atividades subsequentes serão ignoradas; isso é para preservar a primeira visualização de página, que contém informações valiosas do referenciador.
