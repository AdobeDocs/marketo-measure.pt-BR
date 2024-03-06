---
unique-page-id: 18874745
description: Manuseio de formulário AJAX - [!DNL Marketo Measure]
title: Manuseio de formulário AJAX
exl-id: 042e42ff-d8d9-4380-b878-aba4934bc4a0
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '313'
ht-degree: 1%

---

# Manuseio de formulário AJAX {#ajax-form-handling}

Para relatar manualmente conversões de clientes para [!DNL Marketo Measure], há uma API simples que você pode usar. Ambas as APIs do JavaScript estão disponíveis automaticamente no site, se você tiver um código de rastreamento. Não é necessário fazer nada especial para acessá-las.

## Cenário 1 - Formulário HTML com um envio AJAX {#scenario-html-form-with-an-ajax-submit}

Ao usar formulários contendo AJAX (ou outro mecanismo) para enviar datas de conversão do cliente para nossos servidores, [!DNL Marketo Measure] pode não estar ciente da conversão do cliente por meio de qualquer um dos caminhos padrão que monitoramos. Nesse cenário, podemos usar uma API simples (fornecida abaixo).

Se você manipula seus próprios envios de formulários, pode chamar explicitamente o [!DNL Marketo Measure] do JavaScript. [!DNL Marketo Measure] O coleta todas as informações relevantes do formulário e as publica de forma assíncrona em nossos servidores.

**Abaixo está uma amostra de código usando JQuery (supondo que a ID no formulário seja &quot;formId&quot;):**

```jquery
///////////////////////////////////////////////////////////////////////  
// Preamble for all API usage.  
window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };  
  
// Give Marketo Measure the JQuery Selector for the form and we'll collect the data automatically.  
Bizible.Push('Form',$('#*formId*'));
```

**Abaixo está uma amostra de código que não usa JQuery (supondo que a ID no formulário seja &quot;formId&quot;):**

```jquery
///////////////////////////////////////////////////////////////////////  
// Preamble for all API usage.  
window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };  
  
// Give Marketo Measure the Form ID and we'll collect the data automatically.
Bizible.Push('Form','MyFormID');
```

## Cenário 2 - Informações de clientes potenciais coletadas em um formulário não HTML {#scenario-lead-information-collected-in-a-non-html-form}

Se as informações de um lead convertido forem coletadas usando campos de texto simples ou JavaScript sem formulário html, esta solução funcionará para você. A API a ser usada neste cenário é compartilhada abaixo:

```jquery
///////////////////////////////////////////////////////////////////////  
// Preamble for all API usage.  
window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };  
  
// If your site is using Ajax, or you are running a secure site, it is best to send us the data directly.  
Bizible.Push('User', {
eMail: 'user@gmail.com' // required  
});  
```

Neste código, a variável [!UICONTROL email] campo é obrigatório. [!DNL Marketo Measure] O publica esses dados de forma assíncrona em nossos servidores.

## Cenário 3 - Relatar informações do usuário a partir da página de agradecimento {#scenario-report-user-information-from-the-thank-you-page}

Às vezes, é mais conveniente relatar as informações do lead para [!DNL Marketo Measure] na página de agradecimento, após o envio do formulário. A maneira mais simples de relatar essas informações é adicionar um elemento oculto à página que armazena informações do envio do formulário e [!DNL Bizible.js] O lerá estas informações quando a página &quot;Obrigado&quot; for carregada.

**Por exemplo:**

```html
<div id="bizible.reportUser" style="display:none"  
data-email="user@gmail.com">  
```

Não importa se o elemento oculto é um div, script ou qualquer outro tipo de tag. [!DNL Marketo Measure] procura a id=&quot;bizible.reportUser&quot; para ler as informações.
