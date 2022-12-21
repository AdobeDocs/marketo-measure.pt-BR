---
unique-page-id: 18874722
description: Práticas recomendadas para testes - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para testes
exl-id: ff95a1a9-d324-47f5-b47d-39014dff77e4
source-git-commit: 993a326c377b3b6ff48c4e0114b59297f9ca2ca6
workflow-type: tm+mt
source-wordcount: '183'
ht-degree: 1%

---

# Práticas recomendadas para testes {#best-practices-for-testing}

Você deve testar todos os diferentes tipos de formulários necessários para garantir que [!DNL Marketo Measure] O JavaScript está funcionando corretamente.

## Processo de teste recomendado {#recommended-test-process}

1. Use um navegador incógnito ou limpe os cookies entre cada teste de envio de formulário _e_ use um endereço de email diferente sempre.

   >[!TIP]
   >
   >Uma prática recomendada é usar um email falso que contenha algo indicando que é um teste, bem como a hora do dia. Por exemplo: `testing830am@test.com`.

1. Inicie a pesquisa em um mecanismo de pesquisa (por exemplo, `google.com`) ou navegue diretamente para um formulário.

1. Envie o formulário no seu site usando um endereço de email exclusivo.

1. Registre o URL da página que está enviando o formulário e o endereço de email usado.

1. Localize o registro criado em seu CRM (Lead ou contato) para o envio do formulário e verifique se um ponto de contato foi criado adequadamente.

>[!NOTE]
>
>Você pode usar um [!DNL Marketo Measure] relatório de estoque, como Leads com [!DNL Marketo Measure] Pontos de contato ou observe o layout da página Lead/contato se optar por atualizar os layouts de página com [!DNL Marketo Measure] detalhes. Isso pode levar algum tempo para que os dados sejam processados.
