---
description: Práticas recomendadas para o modelo personalizado - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para o modelo personalizado
exl-id: 7c19bb6a-30fc-4cbd-a58e-f20751102afe
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '849'
ht-degree: 0%

---

# Práticas recomendadas para o modelo personalizado {#best-practices-for-custom-model}

## Visão geral {#overview}

Além do [!DNL Marketo Measure] Modelos de atribuição prontos para uso, os clientes de nível 2 e superior têm acesso a um Modelo de atribuição personalizado.

O [!DNL Marketo Measure] O modelo Atribuição personalizada permite que os usuários escolham quais posições de ponto de contato de marco e/ou estágios personalizados serão incluídos no modelo. Além disso, os usuários podem controlar a porcentagem de crédito atribuída a cada estágio dentro do modelo (os usuários podem definir até 6 estágios personalizados adicionais) ou podem usar os valores de porcentagem de atribuição sugeridos pelo [!DNL Marketo Measure] Modelo de aprendizado de máquina.

Há dois aspectos principais de seu Modelo de atribuição personalizada:

**Estágios personalizados** permitir que os usuários definam seu funil conforme ele está relacionado aos seus negócios e processos. Os estágios personalizados devem representar &quot;marcos&quot; em toda a jornada do comprador, como o [!DNL Marketo Measure] os marcos (Primeiro contato, Toque de criação de lead, Toque de criação de oportunidade e Toque de vencedor fechado) fazem parte dos modelos de atribuição de estoque. É fundamental que seus estágios personalizados sejam adequadamente definidos e mapeados em sua conta para garantir que [!DNL Marketo Measure] O está rastreando adequadamente as transições do estágio. Isso serve para identificar quais pontos de contato devem ser associados a cada estágio e atribuir crédito adequadamente. O mapeamento de Estágio Personalizado é essencialmente uma extensão do &quot;Mapeamento de Estágio&quot; padrão e deve seguir as mesmas práticas.

>[!NOTE]
>
>Consulte o recurso Práticas recomendadas de mapeamento de palco para obter mais detalhes

**Modelagem de atribuição personalizada** é definido assim que você seleciona o funil de Estágios personalizados. Os usuários podem controlar quanto crédito de atribuição deve ser atribuído a cada estágio personalizado, bem como a variável [!DNL Marketo Measure] etapas do marco. Os usuários podem atribuir crédito a cada estágio da forma que entenderem ou fazer referência ao [!DNL Marketo Measure] Modelo de aprendizado de máquina que atua como um &quot;modelo sugestivo&quot; baseado em dados históricos.

É fundamental que esses dois aspectos do Modelo personalizado sejam definidos corretamente e com precisão para garantir que [!DNL Marketo Measure] O está produzindo um Modelo de atribuição personalizada preciso.

## Prática recomendada {#best-practice}

Se você estiver configurando seu Modelo personalizado pela primeira vez ou revisando o que foi estabelecido anteriormente, é importante ter em mente as seguintes práticas recomendadas.

* Comece simples
   * Identifique os principais estágios que deseja adicionar ao Modelo personalizado, que são cruciais para a [!DNL Marketo Measure] relatórios. Normalmente, esses são estágios em que você é normalmente medido ou em que você está visando obter informações sobre
   * Você sempre pode adicionar ao seu Modelo personalizado ao longo do tempo
* Utilize [!DNL Marketo Measure] Modelo de aprendizado de máquina
   * Se você estiver lutando para decidir o detalhamento da atribuição de porcentagem, a variável [!DNL Marketo Measure] O Modelo de aprendizado de máquina pode ajudá-lo a tomar decisões informadas ao definir seu Modelo de atribuição personalizado.
   * Ao visualizar o modelo de aprendizado de máquina, as porcentagens de atribuição de cada estágio refletem o impacto potencial de seus esforços de marketing
      * Uma percentagem mais elevada significa que o marketing pode influenciar diretamente o movimento do funil nesse ponto
      * Uma porcentagem de atribuição mais baixa significa que os estágios são menos importantes para a equipe monitorar
* Você deve definir a parte superior dos estágios do funil com base nos estágios de Lead ou Contato, não em ambos
   * Isso significa que você deve garantir que todas as pessoas passarão por esse estágio no objeto relativo
      * Por exemplo: Se você definir o estágio MQL a partir do objeto de lead, todas as pessoas deverão entrar no sistema como um lead e ser marcadas como um MQL em seu registro de lead para que [!DNL Marketo Measure] para refletir com precisão qual toque estava relacionado à transição do cliente potencial para o MQL. Se esse não for o caso e algumas pessoas avançarem para Entrar em contato antes de se tornarem MQL como líder, [!DNL Marketo Measure] Não será possível contabilizar isso com precisão nos dados do seu ponto de contato e teremos que assumir que a pessoa já tem MQL. [!DNL Marketo Measure] não podemos ter em conta o salto de palco, pelo que vamos inferir que as etapas foram ultrapassadas, mesmo que não tenham sido.
* Certifique-se de que o rastreamento do histórico de campos esteja ativado para todos os campos usados para definir estágios personalizados incorporados
* Não use campos de fórmula para definir um estágio personalizado
   * Um campo booleano é uma recomendação de prática recomendada
* Não incorpore Estágios personalizados ao seu Modelo personalizado que coincidam com um [!DNL Marketo Measure] Posição do ponto de contato do marco (FT, LC, OC, Vencedor/Perdido Fechado)
   * Se isso acontecer, essas posições sempre ocorrerão simultaneamente e podem causar crédito de atribuição inflacionado em partes do funil.
* Trabalhe com sua equipe de vendas
   * Trazer a equipe que trabalha mais perto dos palcos e o significado deles garantirá que você esteja usando os palcos corretos e que eles sejam definidos corretamente

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Revisar seu modelo personalizado pelo menos duas vezes por ano garantirá que seu relatório de atribuição personalizado seja preciso e confiável.

Se o seu modelo personalizado utilizar o modelo de aprendizado de máquina, você deverá revisar seu aplicativo no modelo personalizado trimestralmente para garantir que o modelo personalizado esteja o mais atualizado possível.

Outros motivos para isso podem acionar uma revisão do Modelo personalizado incluem...

* Volume de negócios em sua equipe de marketing
* Quaisquer alterações nos estágios do CRM
* Atualizações no funil de suas organizações
* Visualização de dados de receita imprecisos no [!DNL Marketo Measure] ao aplicar o modelo personalizado
* Exibição de posições de pontos de contato preenchidas que não são mais relevantes para o funil de suas organizações

>[!MORELIKETHIS]
>
>* [Modelo e configuração de atribuição personalizada](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md)
>* [Ativar O Rastreamento Do Histórico De Campos Para O Modelo Personalizado](/help/advanced-marketo-measure-features/custom-attribution-models/custom-model-setup-enable-field-history-tracking.md)
>* [Modelo de aprendizagem de máquina](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md)

