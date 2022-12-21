---
unique-page-id: 18874745
description: Manuseio de formulário AJAX - [!DNL Marketo Measure] - Documentação do produto
title: Manuseio de formulário AJAX
exl-id: 042e42ff-d8d9-4380-b878-aba4934bc4a0
source-git-commit: ae5b77744d523606ce6cfcf48d7e8d5049d5ccb7
workflow-type: tm+mt
source-wordcount: '320'
ht-degree: 0%

---

# Manuseio de formulário AJAX {#ajax-form-handling}

Para relatar manualmente conversões de clientes para [!DNL Marketo Measure], fornecemos uma API muito simples que pode ser usada. Ambas as APIs do Javascript estão automaticamente disponíveis no site, se você tiver nosso código de rastreamento nele. Não é necessário fazer nada de especial para acessá-los.

## Cenário 1 - HTML form com um envio de AJAX {#scenario-html-form-with-an-ajax-submit}

Ao usar formulários contendo AJAX (ou outro mecanismo) para enviar datas de conversão do cliente para nossos servidores, [!DNL Marketo Measure] pode não estar ciente da conversão do cliente por meio de qualquer um dos caminhos padrão que monitoramos. Nesse cenário, podemos aproveitar uma API simples (fornecida abaixo).

Se você manipula seus próprios envios de formulário, é possível chamar explicitamente [!DNL Marketo Measure] do Javascript. [!DNL Marketo Measure] O coletará todas as informações relevantes do formulário e as publicará de forma assíncrona em nossos servidores.

**Abaixo está uma amostra de código usando o JQuery (supondo que a ID no formulário seja &quot;formId&quot;):**

```jquery
///////////////////////////////////////////////////////////////////////  
// Preamble for all API usage.  
window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };  
  
// Give Marketo Measure the JQuery Selector for the form and we'll collect the data automatically.  
Bizible.Push('Form',$('#*formId*'));
```

**Abaixo está uma amostra de código que não está usando o JQuery (supondo que a ID no formulário seja &quot;formId&quot;):**

```jquery
///////////////////////////////////////////////////////////////////////  
// Preamble for all API usage.  
window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };  
  
// Give Marketo Measure the Form ID and we'll collect the data automatically.
Bizible.Push('Form','MyFormID');
```

## Cenário 2 - Informações de lead coletadas em um formulário não HTML {#scenario-lead-information-collected-in-a-non-html-form}

Se as informações de um lead convertido forem coletadas usando Javascript ou campos de texto simples sem formulário html, essa solução funcionará para você. Compartilhado abaixo é a API a ser usada neste cenário:

```jquery
///////////////////////////////////////////////////////////////////////  
// Preamble for all API usage.  
window['Bizible'] = window['Bizible'] || { _queue: [], Push: function (o, p) {this._queue.push({ type: o, data: p }); } };  
  
// If your site is using Ajax, or you are running a secure site, it is best to send us the data directly.  
Bizible.Push('User', {
eMail: 'user@gmail.com' // required  
});  
```

Nesse código, a variável [!UICONTROL email] é obrigatório. [!DNL Marketo Measure] O postará esses dados de forma assíncrona em nossos servidores.

## Cenário 3 - Relatar informações do usuário da página de agradecimento {#scenario-report-user-information-from-the-thank-you-page}

Em alguns casos, é mais conveniente relatar as informações do cliente potencial para [!DNL Marketo Measure] na página de agradecimento, após o envio do formulário. A maneira mais simples de relatar essas informações é adicionar um elemento oculto à página que contém informações do envio do formulário, e [!DNL Bizible.js] lerá essas informações quando a página de agradecimento tiver sido carregada.

**Por exemplo:**

```html
<div id="bizible.reportUser" style="display:none"  
data-email="user@gmail.com">  
```

Não importa se o elemento oculto é um div, script ou qualquer outro tipo de tag. [!DNL Marketo Measure] procura o id=&quot;bizible.reportUser&quot; para ler as informações.
