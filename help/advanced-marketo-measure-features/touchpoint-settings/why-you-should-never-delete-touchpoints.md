---
unique-page-id: 18874560
description: Por Que Você Nunca Deve Excluir Pontos De Contato - [!DNL Marketo Measure]
title: Por que você nunca deve excluir touchpoints
exl-id: e74c14ff-0399-4ee9-b732-6686823ff5c7
feature: Touchpoints
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '222'
ht-degree: 5%

---

# Por que você nunca deve excluir touchpoints {#why-you-should-never-delete-touchpoints}

Se você descobrir que há um ponto de contato em uma oportunidade à qual está sendo atribuído um crédito de atribuição incorretamente, entre em contato com o Gerente de conta para determinar as próximas etapas. Nessas situações, recomendamos usar o recurso de supressão de ponto de contato do Comprador para remover o ponto de contato do SFDC e do painel de ROI. O gerente da sua conta pode ajudar a criar essas regras. Não exclua manualmente esses pontos de contato por conta própria.

O sistema de processamento [!DNL Marketo Measure] não registrará que um ponto de contato foi excluído manualmente do SFDC. A partir de hoje, não há acionador que sinalize ao nosso sistema para ajustar os dados. [!DNL Marketo Measure] não enviará automaticamente outro ponto de contato para substituir o que foi excluído, nem reatribuirá a posição ou atribuição do ponto de contato ao ponto de contato subsequente.

Quando um ponto de contato é excluído, ele cria um buraco nos dados de atribuição. Normalmente, isso se manifestará nos pontos de contato de atribuição em uma Oportunidade. Na imagem abaixo, o ponto de contato que teria recebido o toque de Criação da oportunidade foi excluído. Como resultado, essa oportunidade não tem o ponto de contato do OC e a porcentagem de atribuição para essa Opp não somará 100%.

![](assets/1.png)

Se os pontos de contato tiverem sido excluídos do SFDC, entre em contato com o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para solicitar uma reimportação dos seus dados.
