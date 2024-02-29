---
unique-page-id: 18874749
description: Adicionando [!DNL Marketo Measure] Script para [!DNL Uberflip] FORMS - [!DNL Marketo Measure]
title: Adicionando [!DNL Marketo Measure] Script para [!DNL Uberflip] Forms
exl-id: fb123e15-523d-4931-b4c1-705fe49be3d0
feature: Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '221'
ht-degree: 0%

---

# Adicionando [!DNL Marketo Measure] Script para [!DNL Uberflip] Forms {#adding-marketo-measure-script-to-uberflip-forms}

Se você estiver usando [!DNL Uberflip] para gerenciar seu conteúdo, é importante que você siga estas etapas necessárias para garantir que [!DNL Marketo Measure] O está rastreando os envios desses formulários. Seu gerente de sucesso em [!DNL Uberflip] O também deve ser capaz de ajudá-lo com isso.

1. Adicionar este script a [!DNL Uberflip]do [!UICONTROL Custom Code>HTML] seção.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Certifique-se [!DNL Marketo Measure] o código do preâmbulo é acionado no carregamento da página e na alteração da página AJAX. Faça isso dentro do [!UICONTROL Custom Code>JS] seção

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   você adicionará este preâmbulo à [!DNL Hubs.onLoad] e a variável [!DNL Hubs.onPageChange] Ganchos de evento AJAX Javascript conforme abaixo. (Observação: você também pode ter outros códigos nesses ganchos de evento. Certifique-se de incluir o preâmbulo também.)

   `Hubs.onLoad = function () {`

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   `}`

   `Hubs.onPageChange = function () {`

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   `}`

1. Crie e defina uma função que enviará dados para a Bizible após o envio de um Formulário CTA. Isso entra na [!UICONTROL Custom Code>Javascript] seção. (Observação: essa função requer apenas o parâmetro ctaData que Uberflip fornece, mas você pode incluir os outros parâmetros ctaId e ctaName caso o usuário queira personalizar seu código para transmitir esses dados também).

   `function bizibleFormCode(ctaId, ctaData, ctaName) {`
   `var email = ctaData["email"];`
   `if(email){`
   `Bizible.Push('User', {`
   `eMail: email, // required`
   `}); }`

   `}`

1. Quando um CTA de formulário for enviado, verifique se [!DNL Marketo Measure] é executada conforme abaixo. Isso é feito dentro do [!UICONTROL Custom Code>JS] seção. (Observação: você pode ter outro código no gancho de evento Javascript Hubs.onCtaFormSubmitSuccess, apenas inclua essa chamada de função também).

   `Hubs.onCtaFormSubmitSuccess = function (ctaId, ctaData, ctaName) {`
   `bizibleFormCode(ctaId, ctaData, ctaName);`\
   `}`
