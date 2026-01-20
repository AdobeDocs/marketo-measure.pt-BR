---
unique-page-id: 18874749
description: Adicionando [!DNL Marketo Measure] Script ao [!DNL Uberflip] Forms - [!DNL Marketo Measure]
title: 'Adicionando o script [!DNL Marketo Measure] ao Forms [!DNL Uberflip] '
exl-id: fb123e15-523d-4931-b4c1-705fe49be3d0
feature: Tracking
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '216'
ht-degree: 0%

---

# Adicionando Script [!DNL Marketo Measure] ao Forms [!DNL Uberflip] {#adding-marketo-measure-script-to-uberflip-forms}

Se você estiver usando o [!DNL Uberflip] para gerenciar o seu conteúdo, é importante que siga estas etapas necessárias para verificar se o [!DNL Marketo Measure] está rastreando os envios desses formulários. Seu Gerente de Sucesso em [!DNL Uberflip] também deve poder ajudá-lo com isso.

1. Adicionar este script à seção [!DNL Uberflip]Código personalizado>HTML[!UICONTROL &#x200B; de &#x200B;].

   `<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

1. Certifique-se de que esse código de preâmbulo [!DNL Marketo Measure] seja acionado no carregamento da página e na alteração da página do AJAX. Faça isso na seção [!UICONTROL Código personalizado>JS]

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   Adicione este preâmbulo aos ganchos de evento do JavaScript do AJAX [!DNL Hubs.onLoad] e [!DNL Hubs.onPageChange] conforme mostrado abaixo. (Observação: você também pode ter outro código nesses ganchos de evento. Certifique-se de incluir o preâmbulo também.)

   `Hubs.onLoad = function () {`

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   `}`

   `Hubs.onPageChange = function () {`

   `window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };`

   `}`

1. Crie e defina uma função que envia dados para a Bizible após o envio de um Formulário CTA. Isso vai para a seção [!UICONTROL Código personalizado>JavaScript]. (Observação: essa função requer apenas o parâmetro ctaData que Uberflip fornece, mas você pode incluir os outros parâmetros ctaId e ctaName caso o usuário queira personalizar seu código para transmitir esses dados também).

   `function bizibleFormCode(ctaId, ctaData, ctaName) {`
   `var email = ctaData["email"];`
   `if(email){`
   `Bizible.Push('User', {`
   `eMail: email, // required`
   `}); }`

   `}`

1. Quando um CTA de Formulário for enviado, verifique se a função [!DNL Marketo Measure] é executada conforme abaixo. Isso é feito na seção [!UICONTROL Código personalizado>JS]. (Observação: você pode ter outro código no gancho de evento do JavaScript Hubs.onCtaFormSubmitSuccess. Certifique-se de incluir essa chamada de função também).

   `Hubs.onCtaFormSubmitSuccess = function (ctaId, ctaData, ctaName) {`
   `bizibleFormCode(ctaId, ctaData, ctaName);`\
   `}`
