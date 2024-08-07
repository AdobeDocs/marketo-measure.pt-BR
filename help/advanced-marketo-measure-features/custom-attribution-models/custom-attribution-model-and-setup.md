---
unique-page-id: 18874779
description: Modelo e Configuração de Atribuição Personalizados - [!DNL Marketo Measure]
title: Modelo e configuração de atribuição personalizada
exl-id: 7b156db2-9ac6-4d32-ac67-06c0aa15d651
feature: Attribution, Custom Models
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '845'
ht-degree: 1%

---

# Modelo e configuração de atribuição personalizada {#custom-attribution-model-and-setup}

Veja abaixo uma visão geral do modelo de atribuição personalizado [!DNL Marketo Measure] e como configurá-lo.

## Modelo de atribuição personalizado {#custom-attribution-model}

O modelo de Atribuição personalizada [!DNL Marketo Measure] permite que os usuários escolham quais pontos de contato ou estágios personalizados incluir no modelo. Os usuários podem controlar a porcentagem do crédito de receita atribuído a esses pontos de contato e estágios ou podem usar os valores percentuais de atribuição sugeridos pelo Modelo de Aprendizado de Máquina [!DNL Marketo Measure].

## Como configurar seu modelo de atribuição personalizado {#how-to-set-up-your-custom-attribution-model}

1. Determine quais estágios você deseja incluir no modelo personalizado.

   Para começar a criar seu modelo de atribuição personalizado, você precisará selecionar quais estágios são importantes para sua equipe de marketing. Além dos [!DNL Marketo Measure] estágios de marcos (FT, LC, OC, Fechado), você pode adicionar até seis status de lead/contato ou estágios de oportunidade adicionais em seu modelo personalizado. Por exemplo, é comum que o estágio MQL seja incluído no modelo personalizado. As equipes de marketing geralmente querem saber quais esforços ou canais estão impulsionando as transições para o estágio MQL.

   Entrar em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}. Vá para [!UICONTROL Minha Conta] > [!UICONTROL Configurações] > e, na seção CRM, selecione **[!UICONTROL Mapeamento de Estágio]**.

   Em seguida, escolha os estágios de Clientes Potenciais/Contatos e Oportunidade a serem incluídos, marcando a caixa **[!UICONTROL Incluir no Modelo]**.

   >[!NOTE]
   >
   >Você tem permissão para até seis estágios personalizados (sem incluir os padrões: FT, LC, OC, Fechado).

   ![](assets/1-1.png)

   >[!NOTE]
   >
   >_Todos_ os estágios de Clientes Potenciais/Contatos e Oportunidade aparecerão aqui, mesmo que o estágio esteja inativo ou não seja mais usado em [!DNL Salesforce]. Se quiser que esses estágios sejam removidos, será necessário excluí-los permanentemente em [!DNL Salesforce].

   Após selecionar seus estágios, clique no botão **[!UICONTROL Salvar e Processar]**, na parte inferior da página. Os estágios aparecerão na guia **[!UICONTROL Configurações de atribuição]** e você poderá atribuir porcentagens de atribuição a cada estágio. Os estágios personalizados também serão exibidos no Marketing Performance Suite como um estágio de Lead ou Oportunidade dentro do Demand Waterfall.

   Se houver outros estágios que você deseja incluir no modelo, mas que não estejam na lista [!UICONTROL Status do Cliente Potencial/Contato] ou [!UICONTROL Estágio da Oportunidade], você poderá definir seu próprio estágio personalizado com base nos campos em seu CRM.

   No exemplo abaixo, um estágio &quot;MQL&quot; personalizado é definido usando um campo de data. A regra simplesmente declara que, se o campo Data MQL não estiver vazio, ele deverá ser considerado um MQL e deverá ser incluído no modelo personalizado. Também é importante classificar os estágios personalizados depois de criados, para que sigam a progressão do ciclo de vendas.

   ![](assets/2-1.png)

   >[!CAUTION]
   >
   >Não se esqueça de ativar o rastreamento de histórico para campos personalizados.

Se um campo personalizado for usado em seu modelo personalizado, o rastreamento do Histórico de campos DEVERÁ ser habilitado no CRM. Para obter instruções para habilitar o rastreamento do histórico do campo, consulte [Configuração do Modelo Personalizado: Habilitar o Rastreamento do Histórico do Campo](/help/advanced-marketo-measure-features/custom-attribution-models/custom-model-setup-enable-field-history-tracking.md).

1. Determine as porcentagens de atribuição do modelo personalizado.

   Vá para as **[!UICONTROL Configurações de Atribuição]** em [!DNL Marketo Measure] aplicativos; os estágios personalizados aparecerão aqui na tabela de atribuição. A tabela de atribuição exibe todos os modelos de atribuição [!DNL Marketo Measure] e a ponderação de atribuição de cada modelo. As porcentagens de atribuição dos primeiros cinco modelos são fixas e não podem ser alteradas.

   Na coluna da extrema direita denominada &quot;**[!UICONTROL Personalizado]**&quot;, é possível definir a ponderação percentual para cada estágio no modelo de atribuição personalizado. Insira os valores de cada estágio na coluna Personalizado e clique em **[!UICONTROL Salvar e Reprocessar]** quando concluído.

   À esquerda da coluna _Personalizado_ está o **[!DNL Marketo Measure]modelo de Aprendizado de Máquina**. O modelo de aprendizado de máquina calcula a ponderação de atribuição com base na importância relativa de ganhar um negócio, dependendo do que aconteceu em cada estágio personalizado. Para obter mais informações sobre o modelo de Aprendizado de Máquina, consulte [Perguntas frequentes sobre o Modelo de Aprendizado de Máquina](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md).

   ![](assets/3.png)

## Posições do ponto de contato {#touchpoint-positions}

Depois que as porcentagens de atribuição forem salvas e processadas, os pontos de contato serão atualizados e receberão seus novos estágios e posições. O ponto de contato que ocorreu mais recentemente, antes de uma transição de estágio, receberá crédito por esse estágio (como mostrado abaixo). A ponderação e a receita personalizadas também são redistribuídas.

![](assets/4.png)

## A diferença entre os estágios de funil e os estágios de modelo personalizado {#the-difference-between-funnel-stages-and-custom-model-stages}

Agora é possível ver estágios personalizados no Funil de marketing, mesmo que o Modelo personalizado não esteja ativado. Isso seria feito com o uso da funcionalidade Estágio de funil. Os Estágios de funil agora permitem adicionar estágios ao funil, mas não visualizam a atribuição deles.

Os estágios de funil ainda serão rastreados como pontos de contato e ainda serão exibidos como Posições de ponto de contato no CRM. Sem o Modelo personalizado, esses Pontos de contato ainda poderão receber atribuição de toque intermediário se houver um preenchimento de formulário (10% para Toques intermediários), mas crédito de atribuição zero se for apenas uma visita à Web.

Como você pode ver abaixo, incluímos o estágio de diligência como uma parte dos nossos estágios de funil. Isso significa que teremos Pontos de contato onde a posição contém diligência, mas esses Pontos de contato só receberão crédito de atribuição de Contato intermediário se o Modelo personalizado não estiver habilitado (no máximo 10%).

![](assets/5.png)

>[!NOTE]
>
>O comportamento de modelos personalizados BAT é dividir a porcentagem de toque médio do modelo personalizado uniformemente em outros estágios, desde que não haja toque médio.
