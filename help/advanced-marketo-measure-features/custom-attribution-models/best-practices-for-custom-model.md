---
description: Práticas recomendadas para o modelo personalizado - [!DNL Marketo Measure]
title: Práticas recomendadas para o modelo personalizado
exl-id: 7c19bb6a-30fc-4cbd-a58e-f20751102afe
feature: Custom Models
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '851'
ht-degree: 2%

---

# Práticas recomendadas para o modelo personalizado {#best-practices-for-custom-model}

## Visão geral {#overview}

Além dos [!DNL Marketo Measure] Modelos de atribuição prontos para uso, os clientes de Nível 2 e superior têm acesso a um Modelo de atribuição personalizado.

O modelo de Atribuição personalizada [!DNL Marketo Measure] permite que os usuários escolham quais posições de ponto de contato de marco e/ou estágios personalizados incluir no modelo. Além disso, os usuários podem controlar a porcentagem de crédito atribuída a cada estágio do modelo (os usuários podem definir até 6 estágios personalizados adicionais) ou usar os valores percentuais de atribuição sugeridos pelo Modelo de Aprendizado de Máquina [!DNL Marketo Measure].

Há dois aspectos principais do seu Modelo de atribuição personalizado:

**Estágios Personalizados** permitem que os usuários definam seu funil como ele está relacionado aos seus negócios e processos. Os Estágios personalizados devem representar &quot;marcos&quot; em toda a jornada do comprador, de modo semelhante aos marcos [!DNL Marketo Measure] (Primeiro contato, Toque de criação de lead, Toque de criação de oportunidade e Toque ganho fechado) nos modelos de atribuição de estoque. É crucial que seus estágios personalizados sejam definidos e mapeados corretamente na sua conta para garantir que o [!DNL Marketo Measure] esteja rastreando adequadamente as transições de estágios. Isso serve para identificar quais pontos de contato devem ser associados a cada estágio e atribuir o crédito adequadamente. O mapeamento de estágio personalizado é essencialmente uma extensão do &quot;Mapeamento de estágio&quot; padrão e deve seguir as mesmas práticas.

>[!NOTE]
>
>Consulte o recurso Práticas recomendadas de mapeamento de preparo para obter mais detalhes

A **Modelagem de atribuição personalizada** é definida assim que você seleciona o funil Estágios personalizados. Os usuários podem controlar quanto crédito de atribuição deve ser atribuído a cada estágio personalizado, bem como aos [!DNL Marketo Measure] estágios de marco. Os usuários podem atribuir crédito a cada estágio da maneira que acharem adequada ou fazer referência ao Modelo de Aprendizado de Máquina do [!DNL Marketo Measure] que atua como um &quot;modelo sugestivo&quot; com base em dados históricos.

É crucial que esses dois aspectos do seu Modelo personalizado sejam definidos corretamente e com precisão para garantir que [!DNL Marketo Measure] esteja produzindo um Modelo de atribuição personalizado preciso.

## Prática recomendada {#best-practice}

Se você estiver configurando seu Modelo personalizado pela primeira vez ou revisando o que foi estabelecido anteriormente, é importante ter em mente as seguintes práticas recomendadas.

* Iniciar simples
   * Identifique os estágios principais que deseja adicionar ao seu Modelo personalizado e que são cruciais para seus relatórios do [!DNL Marketo Measure]. Normalmente, esses são estágios em que você geralmente é medido ou nos quais você está tentando obter insights
   * Você sempre pode adicionar ao seu modelo personalizado ao longo do tempo
* Utilizar o modelo de aprendizado de máquina [!DNL Marketo Measure]
   * Se você estiver com dificuldades para decidir a porcentagem de detalhamento de atribuição, o Modelo de aprendizado de máquina [!DNL Marketo Measure] pode ajudá-lo a tomar decisões conscientes ao definir seu Modelo de atribuição personalizado.
   * Ao visualizar o modelo de aprendizado de máquina, as porcentagens de atribuição de cada estágio refletem o impacto potencial de suas iniciativas de marketing
      * Uma porcentagem maior significa que o marketing pode influenciar diretamente o movimento do funil nesse ponto
      * Uma porcentagem de atribuição mais baixa significa que os estágios são menos importantes para a equipe monitorar
* Você deve definir a parte superior dos estágios de funil com base nos estágios de Cliente potencial ou de Contato, não entre ambos
   * Isso significa que você deve garantir que todas as pessoas passarão por esse estágio no objeto relativo
      * Por exemplo: se você definir o estágio MQL a partir do objeto de cliente potencial, todas as pessoas deverão entrar em seu sistema como um cliente potencial e ser marcadas como um MQL em seu registro de cliente potencial para que [!DNL Marketo Measure] reflita com precisão qual contato estava relacionado à transição do cliente potencial para MQL. Se esse não for o caso, e algumas pessoas avançarem para Contato antes de se tornarem um MQL líder, o [!DNL Marketo Measure] não poderá contabilizar com precisão isso nos dados do Touchpoint e teremos que assumir que a pessoa já tem um MQL. [!DNL Marketo Measure] não pode levar em conta as saltos de estágio; portanto, vamos inferir que os estágios foram transmitidos, mesmo que não tenham sido.
* Certifique-se de que o rastreamento do histórico de campo esteja habilitado para todos os campos usados para definir estágios personalizados que você incorpora
* Não usar campos de fórmula para definir um estágio personalizado
   * Um campo booleano é uma recomendação de prática recomendada
* Não incorpore Estágios Personalizados em seu Modelo Personalizado que coincidam com uma [!DNL Marketo Measure] Milestone Touchpoint Position (FT, LC, OC, Won/Lost fechado)
   * Se você fizer isso, essas posições sempre ocorrerão simultaneamente e poderão causar crédito de atribuição inflado em partes do funil.
* Trabalhar com sua equipe de vendas Opp
   * Trazer a equipe que trabalha mais perto com estágios e seu significado garante que você esteja usando os estágios corretos e que eles sejam definidos corretamente

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Analisar seu modelo personalizado pelo menos duas vezes por ano garantirá que seus relatórios de atribuição personalizados sejam precisos e confiáveis.

Se seu modelo personalizado utilizar o modelo de aprendizado de máquina, você deverá revisar a aplicação dele no modelo personalizado trimestralmente para garantir que o modelo personalizado esteja o mais atualizado possível.

Outros motivos para isso podem acionar uma revisão do Modelo personalizado incluem...

* Rotatividade de sua equipe de marketing
* Quaisquer alterações nos estágios do CRM
* Atualizações no funil de suas organizações
* Visualização de dados de receita imprecisos em seus relatórios do [!DNL Marketo Measure] ao aplicar o Modelo personalizado
* Ver posições de ponto de contato preenchidas que não são mais relevantes para o funil de suas organizações

>[!MORELIKETHIS]
>
>* [Configuração e modelo de atribuição personalizados](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md)
>* [Habilitar O Rastreamento Do Histórico De Campos Para O Modelo Personalizado](/help/advanced-marketo-measure-features/custom-attribution-models/custom-model-setup-enable-field-history-tracking.md)
>* [Modelo de aprendizado de máquina](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md)
