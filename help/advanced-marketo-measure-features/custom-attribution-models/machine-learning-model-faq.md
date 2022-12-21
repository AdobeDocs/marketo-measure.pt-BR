---
unique-page-id: 18874775
description: Perguntas frequentes sobre o modelo de aprendizado de máquina - [!DNL Marketo Measure] - Documentação do produto
title: Perguntas frequentes sobre o Modelo de aprendizado de máquina
exl-id: 2fc142b2-8ac4-4c48-a8f1-398e29ccfe97
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '686'
ht-degree: 0%

---

# Perguntas frequentes sobre o Modelo de aprendizado de máquina {#machine-learning-model-faq}

O [!DNL Marketo Measure] O modelo de aprendizado de máquina usa os dados do ponto de contato para calcular quanta ponderação de atribuição deve ser atribuída a cada estágio. Isso é determinado pela importância de cada etapa para o fechamento dos acordos.

O que as porcentagens de atribuição do Modelo de Aprendizagem de Máquina me dizem sobre cada estágio?

Os percentuais de atribuição de cada estágio refletem o impacto potencial de seus esforços de marketing. Uma percentagem mais elevada significa que o marketing pode influenciar diretamente o movimento do funil nesse momento. Uma porcentagem de atribuição mais baixa significa que os estágios são menos importantes para a equipe monitorar.

Como o Modelo de aprendizado de máquina é calculado?

[!DNL Marketo Measure] O calcula a importância de cada estágio personalizado usando os dados de ponto de contato da sua conta do . Os critérios utilizados para determinar a importância de cada etapa são:

* Precisão do modelo: Se construirmos um modelo preditivo com os dados do ponto de contato para prever se venceremos um acordo eventualmente, quão preciso será o modelo? Maior precisão preditiva significa que os detalhes desta etapa correlacionam-se mais com se um acordo será fechado
* Índice de conversão: Se os Leads ou Oportunidades nesse determinado estágio se convertem para o próximo estágio em uma taxa alta, isso sugere que as atividades de marketing que ocorreram nesse estágio não importavam muito. Por outro lado, se um determinado estágio se converter para o próximo estágio em uma taxa baixa, isso pode sugerir que as atividades de marketing que ocorreram nesse estágio foram influentes na condução da conversão.
* Peso da exclusividade do ponto de contato: Se um estágio ocorrer como uma transição independente, o que significa que não houve outras transições de estágio que ocorreram ao mesmo tempo, esse estágio poderia receber um peso de atribuição mais alto. Por outro lado, se um ponto de contato para um palco for compartilhado com outros estágios (por exemplo, o ponto de contato compartilha os estágios de Primeiro contato, Conversão de cliente potencial e Conversão de oportunidade), esse palco poderia receber um peso de atribuição menor.

O peso final de um estágio personalizado é calculado como tal:

**_Porcentagem do modelo = Precisão do modelo x Taxa de conversão x Peso da exclusividade do ponto de contato_**

No final, todos os pesos dos estágios personalizados são normalizados e convertidos em %, como mostrado abaixo.

Por que eu não estou vendo números na coluna Aprendizagem de Máquina?

Quando o Modelo de atribuição personalizado está ativado para sua conta, geralmente leva de 3 a 7 dias para que o modelo seja executado e crie esses números, com base nos dados históricos.

Com que frequência o Modelo de aprendizado de máquina é atualizado?

Nós executamos o modelo novamente a cada 7 dias.

Por que o modelo sempre define 10% para Contato do meio?

Atribuir 10% de crédito de atribuição a Toques no meio é uma configuração padrão em todos os nossos modelos de atribuição.

Quando devo alterar minha distribuição de atribuição?

Entre em contato com o gerente da conta para discutir as implicações da alteração das porcentagens de atribuição e quais estágios devem ser incluídos no modelo personalizado. Cada [!DNL Salesforce] e o processo de vendas é exclusivo, e queremos garantir que seu modelo personalizado seja modelado com precisão.

Dito isso, identificamos algumas tendências gerais em nossos clientes:

Uma tendência que percebemos é que nem sempre é benéfico incluir mais estágios no modelo. Por exemplo, quando os clientes adicionam vários estágios da Oportunidade na parte inferior do funil, esses estágios tendem a receber valores de porcentagem de atribuição muito baixos. Valores de porcentagem baixos indicam uma taxa de conversão alta, o que geralmente significa que esses estágios não são tão impactantes em impulsionar negócios para fechar. Alguns clientes decidem não incluir esses estágios no funil. Se você decidir remover um estágio do seu modelo de atribuição, o modelo de máquina recalculará e redistribuirá as porcentagens.

Também observamos que há uma alta taxa de conversão da Criação de leads para estágios qualificados de marketing e, consequentemente, o estágio qualificado de marketing poderia receber um peso de atribuição de porcentagem menor. Dependendo do seu ciclo de negócios e vendas, pode ser útil remover esse estágio do modelo personalizado.

Lembre-se de que você gostaria de rastrear as atividades de marketing por meio de uma transição de estágio específica, mas não quer que esse estágio receba crédito de atribuição, você pode incluir esse estágio no modelo e atribuir 0% de crédito de atribuição a esse estágio.
