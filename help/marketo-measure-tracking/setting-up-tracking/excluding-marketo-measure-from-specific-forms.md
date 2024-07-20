---
unique-page-id: 18874783
description: Excluindo [!DNL Marketo Measure] de Forms Específico - [!DNL Marketo Measure]
title: Excluir [!DNL Marketo Measure] de formulários específicos
exl-id: ce39a3b2-2ac6-4385-b6d1-3c36b51c03fa
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '95'
ht-degree: 4%

---

# Excluindo [!DNL Marketo Measure] do Forms Específico {#excluding-marketo-measure-from-specific-forms}

Por padrão, o [!DNL Marketo Measure] é anexado a todos os formulários do site. No entanto, nem todos os envios de formulário devem necessariamente ser rastreados ou incluídos em um modelo de atribuição. Isso ocorre porque nem todos os preenchimentos de formulário são considerados &quot;bons&quot;. Um exemplo disso é um cancelamento de inscrição de página/formulário. Além disso, os formulários de logon normalmente não são rastreados, pois diluiriam o modelo de atribuição.

## Como adicionar o código de exclusão [!DNL Marketo Measure]:  {#how-to-add-marketo-measure-exclude-code}

Para impedir que [!DNL Marketo Measure] rastreie formulários específicos, basta adicionar &quot;[!DNL Bizible-Exclude]&quot; como uma &quot;classe&quot; no formulário. O código é o seguinte:

`<form id="myForm" action="/Home/TestPage" method="POST" class="Bizible-Exclude">`
