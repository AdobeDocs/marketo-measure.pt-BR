---
unique-page-id: 18874560
description: Por que você nunca deve excluir pontos de contato - [!DNL Marketo Measure] - Documentação do produto
title: Por que você nunca deve excluir pontos de contato
exl-id: e74c14ff-0399-4ee9-b732-6686823ff5c7
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '231'
ht-degree: 0%

---

# Por que você nunca deve excluir pontos de contato {#why-you-should-never-delete-touchpoints}

Se você achar que há um ponto de contato em uma Oportunidade que está recebendo crédito de atribuição incorretamente, entre em contato com seu Gerente de contas para determinar as próximas etapas. Nestas situações, recomendamos usar o recurso de supressão de pontos de contato do comprador para remover o ponto de contato do SFDC e do painel do ROI. Seu gerente de conta pode ajudar a criar essas regras. Não exclua manualmente esses pontos de contato sozinho.

O [!DNL Marketo Measure] o sistema de processamento não registrará que um ponto de contato foi removido manualmente do SFDC. A partir de hoje, não há disparador que sinalize para nosso sistema ajustar os dados. [!DNL Marketo Measure] O não enviará automaticamente outro ponto de contato para substituir o que foi excluído, nem reatribuirá a posição do ponto de contato ou a atribuição ao ponto de contato subsequente.

Quando um ponto de contato é excluído, ele cria um buraco nos dados de atribuição. Normalmente, isso aparecerá nos pontos de contato da atribuição em uma Oportunidade. Na imagem abaixo, o ponto de contato que teria recebido o toque de Criação de oportunidades havia sido excluído. Como resultado, esta oportunidade está sem o ponto de contato do OC e a porcentagem de atribuição para esta opção não somará até 100%.

![](assets/1.png)

Se os pontos de contato tiverem sido excluídos do SFDC, entre em contato com [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para solicitar uma reimportação dos seus dados.
