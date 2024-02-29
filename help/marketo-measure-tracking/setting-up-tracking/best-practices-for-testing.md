---
unique-page-id: 18874722
description: Práticas recomendadas para testes - [!DNL Marketo Measure]
title: Práticas recomendadas para testes
exl-id: ff95a1a9-d324-47f5-b47d-39014dff77e4
feature: Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '181'
ht-degree: 16%

---

# Práticas recomendadas para testes {#best-practices-for-testing}

Você deve testar todos os diferentes tipos de formulários para garantir a [!DNL Marketo Measure] O JavaScript está funcionando corretamente.

## Processo de teste recomendado {#recommended-test-process}

1. Usar um navegador incógnito ou limpar os cookies entre cada teste de envio de formulário _e_ usar um endereço de email diferente a cada vez.

   >[!TIP]
   >
   >Uma prática recomendada é usar um email falso que contenha algo indicando que é um teste, bem como a hora do dia. Por exemplo: `testing830am@test.com`.

1. Inicie a pesquisa em um mecanismo de pesquisa (por exemplo, `google.com`) ou navegue diretamente para um formulário.

1. Envie o formulário no seu site usando um endereço de email exclusivo.

1. Registre a URL da página em que você está enviando o formulário e o endereço de email usado.

1. Localize o registro criado no CRM (cliente potencial ou contato) desse envio de formulário e verifique se um ponto de contato foi criado corretamente.

>[!NOTE]
>
>Você pode usar um [!DNL Marketo Measure] relatório de estoque, como Clientes potenciais com [!DNL Marketo Measure] Pontos de contato ou verifique o layout da página Cliente potencial/Contato se optar por atualizar os layouts de página com [!DNL Marketo Measure] detalhes. Isso pode levar algum tempo para que os dados sejam processados.
