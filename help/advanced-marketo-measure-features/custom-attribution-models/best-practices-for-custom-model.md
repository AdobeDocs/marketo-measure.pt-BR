---
description: Práticas recomendadas para modelo personalizado - [!DNL Marketo Measure]
title: Práticas recomendadas para o modelo personalizado
exl-id: 7c19bb6a-30fc-4cbd-a58e-f20751102afe
feature: Custom Models
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '849'
ht-degree: 2%

---

# Práticas recomendadas para o modelo personalizado {#best-practices-for-custom-model}

## Visão geral {#overview}

Além do [!DNL Marketo Measure] Os Modelos de atribuição prontos para uso, clientes de Nível 2 e superiores têm acesso a um Modelo de atribuição personalizado.

A variável [!DNL Marketo Measure] O modelo de Atribuição personalizada permite que os usuários escolham quais posições de ponto de contato de marco e/ou estágios personalizados incluir no modelo. Além disso, os usuários podem controlar a porcentagem de crédito atribuída a cada estágio no modelo (os usuários podem definir até 6 estágios personalizados adicionais) ou usar os valores de porcentagem de atribuição sugeridos pelo [!DNL Marketo Measure] Modelo de aprendizado de máquina.

Há dois aspectos principais do seu Modelo de atribuição personalizado:

**Estágios Personalizados** O permite que os usuários definam seu funil como ele está relacionado aos seus negócios e processos. Estágios personalizados devem representar &quot;marcos&quot; em toda a jornada do comprador, assim como a [!DNL Marketo Measure] Os marcos (Primeiro contato, Toque de criação de lead, Toque de criação de oportunidade e Toque ganho fechado) fazem parte dos modelos de atribuição de estoque. É crucial que seus estágios personalizados sejam definidos e mapeados corretamente na conta para garantir que [!DNL Marketo Measure] O está rastreando adequadamente as transições de estágio. Isso serve para identificar quais pontos de contato devem ser associados a cada estágio e atribuir o crédito adequadamente. O mapeamento de estágio personalizado é essencialmente uma extensão do &quot;Mapeamento de estágio&quot; padrão e deve seguir as mesmas práticas.

>[!NOTE]
>
>Consulte o recurso Práticas recomendadas de mapeamento de preparo para obter mais detalhes

**Modelagem de atribuição personalizada** é definido depois de selecionar o funil Estágios personalizados. Os usuários podem controlar quanto crédito de atribuição deve ser atribuído a cada estágio personalizado, bem como a [!DNL Marketo Measure] etapas. Os usuários podem atribuir crédito a cada estágio conforme acharem necessário ou fazer referência a [!DNL Marketo Measure] Modelo de aprendizagem de máquina que atua como um &quot;modelo sugestivo&quot; com base em dados históricos.

É crucial que esses dois aspectos do modelo personalizado sejam definidos corretamente e com precisão para garantir que [!DNL Marketo Measure] O está produzindo um Modelo de atribuição personalizado preciso.

## Prática recomendada {#best-practice}

Se você estiver configurando seu Modelo personalizado pela primeira vez ou revisando o que foi estabelecido anteriormente, é importante ter em mente as seguintes práticas recomendadas.

* Iniciar simples
   * Identifique os estágios principais que deseja adicionar ao modelo personalizado e que são cruciais para [!DNL Marketo Measure] relatórios. Normalmente, esses são estágios em que você geralmente é medido ou nos quais você está tentando obter insights
   * Você sempre pode adicionar ao seu modelo personalizado ao longo do tempo
* Utilizar o [!DNL Marketo Measure] Modelo de aprendizado de máquina
   * Se você estiver com dificuldades para decidir a porcentagem de detalhamento de atribuição, a variável [!DNL Marketo Measure] O modelo de aprendizado de máquina pode ajudá-lo a tomar decisões conscientes ao configurar seu modelo de atribuição personalizado.
   * Ao visualizar o modelo de aprendizado de máquina, as porcentagens de atribuição de cada estágio refletem o impacto potencial de suas iniciativas de marketing
      * Uma porcentagem maior significa que o marketing pode influenciar diretamente o movimento do funil nesse ponto
      * Uma porcentagem de atribuição mais baixa significa que os estágios são menos importantes para a equipe monitorar
* Você deve definir a parte superior dos estágios de funil com base nos estágios de Cliente potencial ou de Contato, não entre ambos
   * Isso significa que você deve garantir que todas as pessoas passarão por esse estágio no objeto relativo
      * Por exemplo: Se você definir o estágio MQL a partir do objeto Lead, todas as pessoas deverão entrar em seu sistema como um Lead e ser marcadas como um MQL em seu registro de Lead para [!DNL Marketo Measure] para refletir com precisão qual toque estava relacionado à transição do lead para MQL. Se esse não for o caso e algumas pessoas avançarem para Contato antes de se tornarem clientes em potencial do MQL, [!DNL Marketo Measure] O não poderá contabilizar com precisão isso nos dados do Touchpoint e teremos que assumir que a pessoa já teve MQL. [!DNL Marketo Measure] O não pode levar em conta as saltos de etapa; portanto, vamos inferir que as etapas foram passadas, mesmo que não tenham sido.
* Certifique-se de que o rastreamento do histórico de campo esteja habilitado para todos os campos usados para definir estágios personalizados que você incorpora
* Não usar campos de fórmula para definir um estágio personalizado
   * Um campo booleano é uma recomendação de prática recomendada
* Não incorpore Estágios personalizados ao seu Modelo personalizado que coincidam com uma [!DNL Marketo Measure] Posição do ponto de contato de marco (FT, LC, OC, Won/Perdido fechado)
   * Se você fizer isso, essas posições sempre ocorrerão simultaneamente e poderão causar crédito de atribuição inflado em partes do funil.
* Trabalhar com sua equipe de vendas Opp
   * Trazer a equipe que trabalha mais perto com estágios e seu significado garantirá que você esteja usando os estágios corretos e que eles sejam definidos corretamente

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Analisar seu modelo personalizado pelo menos duas vezes por ano garantirá que seus relatórios de atribuição personalizados sejam precisos e confiáveis.

Se seu modelo personalizado utilizar o modelo de aprendizado de máquina, você deverá revisar a aplicação dele no modelo personalizado trimestralmente para garantir que o modelo personalizado esteja o mais atualizado possível.

Outros motivos para isso podem acionar uma revisão do Modelo personalizado incluem...

* Rotatividade de sua equipe de marketing
* Quaisquer alterações nos estágios do CRM
* Atualizações no funil de suas organizações
* Visualização de dados de receita imprecisos em seu [!DNL Marketo Measure] relatórios ao aplicar o modelo personalizado
* Ver posições de ponto de contato preenchidas que não são mais relevantes para o funil de suas organizações

>[!MORELIKETHIS]
>
>* [Modelo e configuração de atribuição personalizada](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md)
>* [Ativar O Rastreamento Do Histórico De Campos Para O Modelo Personalizado](/help/advanced-marketo-measure-features/custom-attribution-models/custom-model-setup-enable-field-history-tracking.md)
>* [Modelo de aprendizado de máquina](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md)
