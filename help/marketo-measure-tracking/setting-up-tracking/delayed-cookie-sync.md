---
unique-page-id: 30082018
description: Sincronização de cookie atrasada - [!DNL Marketo Measure] - Documentação do produto
title: Sincronização de cookies atrasados
exl-id: 394053ed-5642-48e4-b83c-c483a58ebbd7
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '187'
ht-degree: 3%

---

# Sincronização de cookies atrasados {#delayed-cookie-sync}

Essa modificação no padrão [!DNL Marketo Measure] O Javascript serve para fornecer [!DNL bizible.js] Suporte à API, para que você possa configurar o JS para armazenar temporariamente as atividades do usuário dos visitantes, mas não enviar as informações para o [!DNL Marketo Measure] até que o usuário dê consentimento para isso.

## Como {#how-to}

Substituir o padrão [!DNL bizible.js] tag de script com o seguinte:

`<script id="bizible-settings" type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" data-consent-button-id="ConsentButtonId"></script>`

O atributo data-consent-button-id=&quot;ConsentButtonId&quot; informa [!DNL bizible.js] para não enviar dados analíticos até que um elemento HTML com essa id seja clicado.

Como alternativa, os clientes podem definir a variável [!UICONTROL data-consent-button-id] ser algo inexistente (por exemplo, &quot;foobar&quot;) e usar a seguinte API para saber [!DNL bizible.js] que o usuário consentiu:

`window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`
`Bizible.Push("Consent", true });`

>[!NOTE]
>
>O consentimento do usuário é salvo no cookie, o que significa que depois que o usuário tiver consentido, não será necessário executar essa chamada em nenhuma página subsequente.

## Limitação {#limitation}

Porque [!DNL bizible.js] O salva temporariamente atividades não enviadas da web nos cookies próprios dos clientes. Além disso, se o tamanho dos cookies próprios for limitado, somente três solicitações não enviadas poderão ser salvas a qualquer momento.

Se já houver três solicitações pendentes, quaisquer atividades subsequentes serão ignoradas; isso serve para preservar a primeira visualização de página, que contém informações valiosas do referenciador.
