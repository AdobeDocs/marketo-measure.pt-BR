---
unique-page-id: 18874749
description: Adição de [!DNL Marketo Measure] Script para [!DNL Uberflip] Forms - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] Script para [!DNL Uberflip] Forms
exl-id: fb123e15-523d-4931-b4c1-705fe49be3d0
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '222'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] Script para [!DNL Uberflip] Forms {#adding-marketo-measure-script-to-uberflip-forms}

Se estiver usando [!DNL Uberflip] para gerenciar seu conteúdo, é importante que você execute as etapas necessárias para garantir que [!DNL Marketo Measure] O está rastreando esses envios de formulário. Seu gerente de sucesso em [!DNL Uberflip] O também deve poder ajudá-lo com isso.

1. Adicionar este script a [!DNL Uberflip]&#39;s [!UICONTROL Código personalizado > HTML] seção.

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Certifique-se de que [!DNL Marketo Measure] o código do preâmbulo é acionado no carregamento da página e na alteração AJAX página. Faça isso dentro da [!UICONTROL Custom Code>JS] seção

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   Você adicionará este preâmbulo ao [!DNL Hubs.onLoad] e [!DNL Hubs.onPageChange] AJAX ganchos do evento Javascript por baixo. (Observação: Você também pode ter outros códigos nesses ganchos de evento. Certifique-se de incluir o preâmbulo também.)

   `Hubs.onLoad = function () {`

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   `}`

   `Hubs.onPageChange = function () {`

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   `}`

1. Crie e defina uma função que envie dados para a Bizible após um envio de CTA de formulário. Isso entra no [!UICONTROL Código personalizado>Javascript] seção. (Observação: essa função requer apenas o parâmetro ctaData fornecido por Uberflip, mas você pode incluir os outros parâmetros ctaId e ctaName caso o usuário queira personalizar o código para passar esses dados também).

   `function bizibleFormCode(ctaId, ctaData, ctaName) {`
   `var email = ctaData["email"];`
   `if(email){`
   `Bizible.Push('User', {`
   `eMail: email, // required`
   `}); }`

   `}`

1. Quando um CTA de formulário for enviado, verifique se [!DNL Marketo Measure] é executada de acordo com abaixo. Isso é feito dentro do [!UICONTROL Custom Code>JS] seção. (Observação: Você pode ter outro código no gancho de evento do javascript Hubs.onCtaFormSubmitSuccess (certifique-se de incluir essa chamada de função também).

   `Hubs.onCtaFormSubmitSuccess = function (ctaId, ctaData, ctaName) {`
   `bizibleFormCode(ctaId, ctaData, ctaName);`\
   `}`
