---
unique-page-id: 18874779
description: Modelo e configuração de atribuição personalizada - [!DNL Marketo Measure] - Documentação do produto
title: Modelo e configuração de atribuição personalizada
exl-id: 7b156db2-9ac6-4d32-ac67-06c0aa15d651
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '845'
ht-degree: 0%

---

# Modelo e configuração de atribuição personalizada {#custom-attribution-model-and-setup}

Veja abaixo uma visão geral do [!DNL Marketo Measure] modelo de atribuição personalizado e como configurá-lo.

## Modelo de atribuição personalizada {#custom-attribution-model}

O [!DNL Marketo Measure] O modelo Atribuição personalizada permite que os usuários escolham quais pontos de contato ou estágios personalizados serão incluídos no modelo. Os usuários podem controlar a porcentagem do crédito de receita atribuído a esses pontos de contato e estágios ou podem usar os valores de porcentagem de atribuição sugeridos pelo [!DNL Marketo Measure] Modelo de aprendizado de máquina.

## Como configurar seu modelo de atribuição personalizado {#how-to-set-up-your-custom-attribution-model}

1. Determine quais estágios deseja incluir no modelo personalizado.

   Para começar a criar seu modelo de atribuição personalizado, você precisará selecionar quais estágios são importantes para sua equipe de marketing. Além do [!DNL Marketo Measure] estágios de marcos (FT, LC, OC, Closed) você pode adicionar até seis status adicionais de lead/contato ou estágios de oportunidade em seu modelo personalizado. Por exemplo, é comum que o estágio MQL seja incluído no modelo personalizado. As equipes de marketing geralmente querem saber quais esforços ou canais estão conduzindo as transições para o estágio MQL.

   Fazer logon em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target=&quot;_blank&quot;}. Ir para [!UICONTROL Minha conta] > [!UICONTROL Configurações] > e, na seção CRM , selecione **[!UICONTROL Mapeamento de palco]**.

   Uma vez aqui, você precisará selecionar quais leads/contatos e estágios de oportunidade serão incluídos ao selecionar o **[!UICONTROL Incluir no modelo]** caixa.

   >[!NOTE]
   >
   >É permitido até seis estágios personalizados (sem incluir os padrões: FT, LC, OC, Closed).

   ![](assets/1-1.png)

   >[!NOTE]
   >
   >_Todos_ Os estágios de Clientes Potenciais/Contatos e Oportunidades serão exibidos aqui, mesmo se o estágio estiver inativo ou não for mais usado em [!DNL Salesforce]. Se quiser remover esses estágios, será necessário excluí-los bastante no [!DNL Salesforce].

   Ao selecionar seus estágios, clique no botão **[!UICONTROL Salvar e processar]** na parte inferior da página. Os estágios agora aparecerão no **[!UICONTROL Configurações de atribuição]** e você poderá atribuir porcentagens de atribuição a cada estágio. Os estágios personalizados também serão exibidos no Marketing Performance Suite como um estágio de Lead ou Oportunidade dentro da Cascata de Demanda.

   Se houver outros estágios que você deseja incluir no modelo, mas eles não estão no [!UICONTROL Status do cliente potencial/contato] ou [!UICONTROL Estágio da Oportunidade] , você pode definir seu próprio estágio personalizado com base em campos em seu CRM.

   No exemplo abaixo, um estágio &quot;MQL&quot; personalizado é definido usando um campo de data. A regra simplesmente declara que, se o campo Data MQL não estiver vazio, ele deve ser considerado um MQL e deve ser incluído no modelo personalizado. Observe que também é importante classificar os estágios personalizados depois de criados para que ele acompanhe a progressão do ciclo de vendas.

   ![](assets/2-1.png)

   >[!CAUTION]
   >
   >Não esqueça de ativar o rastreamento de histórico para campos personalizados.

Se um campo personalizado estiver sendo usado no modelo personalizado, o rastreamento do Histórico do campo DEVERÁ ser ativado no CRM. Para obter instruções sobre como ativar o rastreamento do histórico de campos, [clique aqui](/help/advanced-marketo-measure-features/custom-attribution-models/custom-model-setup-enable-field-history-tracking.md).

1. Determine as porcentagens de atribuição do modelo personalizado.

   Vá para o **[!UICONTROL Configurações de atribuição]** em [!DNL Marketo Measure] Aplicativos; os estágios personalizados serão exibidos aqui na tabela de atribuição. A tabela de atribuição exibe todas as [!DNL Marketo Measure] modelos de atribuição e a ponderação de atribuição de cada modelo. As porcentagens de atribuição dos cinco primeiros modelos são fixas e não podem ser alteradas.

   Na coluna da extrema direita rotulada como &quot;**[!UICONTROL Personalizado]**,&quot; é possível definir a ponderação de porcentagem para cada estágio no modelo de atribuição personalizado. Basta inserir os valores de cada estágio na coluna Personalizado. Então **[!UICONTROL Salvar e reprocessar]** após a conclusão.

   À esquerda da coluna &quot;Personalizado&quot; fica o **[!DNL Marketo Measure]Modelo de aprendizado de máquina**. O modelo de aprendizado de máquina calcula a ponderação de atribuição com base na importância relativa de ganhar uma negociação dependendo do que aconteceu em cada estágio personalizado. Para obter mais informações sobre o modelo de aprendizado de máquina, [clique aqui](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md).

   ![](assets/3.png)

## Posições de ponto de contato {#touchpoint-positions}

Depois que as porcentagens de atribuição forem salvas e processadas, os pontos de contato serão atualizados e receberão seus novos estágios e posições. O ponto de contato que ocorreu mais recentemente, antes de uma transição de estágio, receberá crédito pelo estágio (como mostrado abaixo). A ponderação e a receita personalizadas também são redistribuídas.

![](assets/4.png)

## A diferença entre os estágios do funil e os estágios do modelo personalizado {#the-difference-between-funnel-stages-and-custom-model-stages}

Agora você pode ver estágios personalizados em seu Funil de marketing, mesmo se não tiver o Modelo personalizado ativado. Isso seria por meio do uso da nossa funcionalidade de Preparo de funil. Agora, os Estágios de funil oferecem a capacidade de adicionar palcos ao funil, mas não veem a atribuição para eles.

Os estágios do funil ainda serão rastreados como pontos de contato e ainda serão exibidos como Posições de ponto de contato no seu CRM. Sem Modelo personalizado, esses pontos de contato ainda podem receber atribuição de toque médio se houver um preenchimento de formulário (10% para Intervalos de toque), mas nenhum crédito de atribuição se for apenas uma visita da Web.

Como vocês podem ver abaixo, incluímos o estágio Diligência como separado de nossos Estágios de Funil. Isso significa que teremos pontos de contato onde a posição contém Diligência, mas esses pontos de contato só receberão crédito de atribuição de toque de meio se o Modelo personalizado não estiver habilitado (no máximo 10%).

![](assets/5.png)

>[!NOTE]
>
>O comportamento dos modelos personalizados BAT é dividir a porcentagem de toque médio do modelo personalizado igualmente entre outros estágios, desde que não haja toques médios.
