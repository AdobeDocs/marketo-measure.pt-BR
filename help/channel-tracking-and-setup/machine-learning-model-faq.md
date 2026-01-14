---
description: Orientação de perguntas frequentes sobre o modelo de aprendizado de máquina para usuários do Marketo Measure
title: Perguntas frequentes de modelo de aprendizado de máquina
feature: Custom Models
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '682'
ht-degree: 1%

---


# Perguntas frequentes de modelo de aprendizado de máquina {#machine-learning-model-faq}

O modelo de Aprendizado de Máquina do [!DNL Marketo Measure] usa seus dados de ponto de contato para calcular quanta ponderação de atribuição deve ser atribuída a cada estágio. Isso é determinado pela importância de cada estágio na condução de negócios para fechar.

O que as porcentagens de atribuição do Modelo de aprendizado de máquina me dizem sobre cada estágio?

As porcentagens de atribuição de cada estágio refletem o impacto potencial de seus esforços de marketing. Uma porcentagem maior significa que o marketing pode influenciar diretamente o movimento da funnel nesse ponto. Uma porcentagem de atribuição mais baixa significa que os estágios são menos importantes para a equipe monitorar.

Como é calculado o Modelo de Aprendizado de Máquina?

[!DNL Marketo Measure] calcula a importância de cada estágio personalizado usando os dados do ponto de contato de sua conta. Os critérios usados para determinar a importância de cada estágio são:

* Precisão do modelo: se criarmos um modelo preditivo com os dados do ponto de contato para prever se ganharemos um acordo no futuro, qual será a precisão do modelo? Maior precisão preditiva significa que os detalhes desse estágio se correlacionam mais com o fechamento ou não de uma transação
* Índice de conversão: se clientes em potencial ou oportunidades nesse estágio forem convertidos para o próximo estágio em uma taxa alta, isso sugere que as atividades de marketing que ocorreram nesse estágio não foram muito importantes. Por outro lado, se um determinado estágio converte para o próximo estágio em uma taxa baixa, isso pode sugerir que as atividades de marketing que ocorreram nesse estágio foram influentes na condução da conversão.
* Peso de exclusividade do ponto de contato: se um estágio ocorrer como uma transição independente, o que significa que não houve outras transições de estágio que ocorreram ao mesmo tempo, esse estágio poderá receber um peso de atribuição mais alto. Por outro lado, se um ponto de contato de um estágio for compartilhado com outros estágios (por exemplo, o ponto de contato compartilha os estágios Primeiro contato, Conversão de lead e Conversão de oportunidade), esse estágio poderá receber uma ponderação de atribuição mais baixa.

O peso final de um estágio personalizado é calculado como:

`Model Percentage = Model Accuracy x Conversion Rate x Touchpoint Uniqueness Weight`

No final, todos os pesos do estágio personalizado são normalizados e convertidos em % conforme mostrado abaixo.

Por que não vejo nenhum número na coluna Aprendizado de Máquina?

Quando o Modelo de atribuição personalizado é ativado para sua conta, geralmente leva entre 3 e 7 dias para nosso modelo executar e criar esses números com base em seus dados históricos.

Com que frequência o modelo de aprendizado de máquina é atualizado?

Executamos o modelo novamente a cada 7 dias.

Por que o modelo sempre define os toques intermediários como 10%?

Atribuir 10% de crédito de atribuição a Contatos intermediários é uma configuração padrão em todos os nossos modelos de atribuição.

Quando devo alterar minha distribuição de atribuição?

Entre em contato com o gerente de conta para discutir as implicações da alteração das porcentagens de atribuição e quais estágios incluir no modelo personalizado. Cada [!DNL Salesforce] e processo de vendas é exclusivo, e queremos garantir que seu modelo personalizado seja modelado com precisão.

Dito isso, identificamos algumas tendências gerais em nossos clientes:

Uma tendência que percebemos é que nem sempre é benéfico incluir mais estágios em seu modelo. Por exemplo, quando os clientes adicionaram vários estágios de Oportunidade na parte inferior da funnel, esses estágios tendem a receber valores de porcentagem de atribuição muito baixos. Valores de porcentagem baixos indicam uma alta taxa de conversão, o que geralmente significa que esses estágios não são tão impactantes ao fechar negociações. Alguns clientes finalmente decidem não incluir esses estágios no funnel. Se você decidir remover um estágio do modelo de atribuição, o modelo da máquina recalculará e redistribuirá as porcentagens.

Também notamos que há uma alta taxa de conversão dos estágios de Criação de leads para os estágios de Qualificação de marketing e, consequentemente, os estágios de Qualificação de marketing podem receber uma ponderação de atribuição de porcentagem menor. Dependendo do ciclo de negócios e vendas, pode ser útil remover esse estágio do modelo personalizado.

Lembre-se de rastrear atividades de marketing por meio de uma transição de estágio específica, mas não quiser que esse estágio receba crédito de atribuição, você pode incluir esse estágio no modelo e atribuir 0% de crédito de atribuição a esse estágio.
