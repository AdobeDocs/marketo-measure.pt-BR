---
unique-page-id: 18874783
description: Excluindo [!DNL Marketo Measure] de Forms Específico - [!DNL Marketo Measure]
title: Excluir [!DNL Marketo Measure] de formulários específicos
exl-id: ce39a3b2-2ac6-4385-b6d1-3c36b51c03fa
feature: Tracking
TQID: https://experienceleague.adobe.com/RtGjsV86NEJPvUpFGnthwVGsQVpX0LqMQdC2xBSFwZc
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
source-git-commit: 9ceb54139bfa9b6ce7c2c5fbb4e25e649f5708a3
workflow-type: tm+mt
source-wordcount: 93
ht-degree: 3%

---

# Excluindo [!DNL Marketo Measure] do Forms Específico {#excluding-marketo-measure-from-specific-forms}

Por padrão, o [!DNL Marketo Measure] é anexado a todos os formulários do site. No entanto, nem todos os envios de formulário devem necessariamente ser rastreados ou incluídos em um modelo de atribuição. Isso ocorre porque nem todos os preenchimentos de formulário são considerados &quot;bons&quot;. Um exemplo disso é um cancelamento de inscrição de página/formulário. Além disso, os formulários de logon normalmente não são rastreados, pois diluiriam o modelo de atribuição.

## Como adicionar o código de exclusão [!DNL Marketo Measure]:  {#how-to-add-marketo-measure-exclude-code}

Para impedir que [!DNL Marketo Measure] rastreie formulários específicos, basta adicionar &quot;[!DNL Bizible-Exclude]&quot; como uma &quot;classe&quot; no formulário. O código é o seguinte:

`<form id="myForm" action="/Home/TestPage" method="POST" class="Bizible-Exclude">`
