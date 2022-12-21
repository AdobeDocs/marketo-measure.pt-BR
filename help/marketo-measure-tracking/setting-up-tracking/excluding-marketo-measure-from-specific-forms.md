---
unique-page-id: 18874783
description: Excluir [!DNL Marketo Measure] do Specific Forms - [!DNL Marketo Measure] - Documentação do produto
title: Excluir [!DNL Marketo Measure] do Specific Forms
exl-id: ce39a3b2-2ac6-4385-b6d1-3c36b51c03fa
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '97'
ht-degree: 0%

---

# Excluir [!DNL Marketo Measure] do Specific Forms {#excluding-marketo-measure-from-specific-forms}

Por padrão, [!DNL Marketo Measure] anexa-se a todos os formulários no site. No entanto, nem todos os envios de formulário devem ser rastreados ou incluídos em um modelo de atribuição. Isso ocorre porque nem todos os preenchimentos de formulário são considerados &quot;bons&quot;. Um exemplo disso é um formulário/página de cancelamento de inscrição. Além disso, os formulários de logon normalmente não são rastreados, pois diluiriam o modelo de atribuição.

## Como adicionar [!DNL Marketo Measure]-exclude Código:  {#how-to-add-marketo-measure-exclude-code}

Para evitar [!DNL Marketo Measure] no rastreamento de formulários específicos, basta adicionar &quot;[!DNL Bizible-Exclude]&quot; como uma &quot;classe&quot; em seu formulário. O código é o seguinte:

`<form id="myForm" action="/Home/TestPage" method="POST" class="Bizible-Exclude">`
