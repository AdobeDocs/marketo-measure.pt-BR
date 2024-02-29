---
unique-page-id: 18874799
description: Instruções de layout da página - [!DNL Marketo Measure]
title: Instruções de layout da página
exl-id: 627377f0-d0cf-448c-a7b5-7eb5634b9627
feature: Salesforce
source-git-commit: 741ab20845de2f3bcde589291d7446a5b4f877d8
workflow-type: tm+mt
source-wordcount: '832'
ht-degree: 69%

---

# Instruções de layout da página {#page-layout-instructions}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Para visualizar facilmente dados do [!DNL Marketo Measure], é recomendável atualizar os layouts de página para os objetos [!UICONTROL Conta], [!UICONTROL Contato], [!UICONTROL Lead], [!UICONTROL Oportunidade] e [!UICONTROL Campanha]. As instruções são divididas para cada layout de página de objeto abaixo.

Para começar, primeiro navegue até as configurações de definição do [!DNL Salesforce] e localize a guia [!UICONTROL Personalizar].

## Objeto de campanha {#campaign-object}

É recomendável adicionar a variável [!DNL Marketo Measure] à sua campanha do SFDC somente para sua sandbox. Os campos podem ser usados para testar a geração de touchpoints. Na produção, é recomendável adicionar apenas o [!DNL Marketo Measure] Botão Atualizar Data do Ponto de Contato em Massa. Não é recomendável adicionar a variável [!DNL Marketo Measure] desde que seja possível criar uma regra de sincronização de campanha.

1. Na opção Criar, selecione **[!UICONTROL Campanhas]**.

1. Clique em **[!UICONTROL Layouts de página]**.

   ![](assets/1-1.jpg)

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que você deseja atualizar.

   ![](assets/2-1.jpg)

1. Na opção [!UICONTROL campos], selecione o campo **[!UICONTROL Habilitar Buyer Touchpoints]** e arraste-o para onde quiser na página. Em seguida, adicione os campos **[!UICONTROL Data inicial do touchpoint]** e **[!UICONTROL Data final do touchpoint]**.

   ![](assets/3-2.png)

1. Em seguida, na parte superior da página, clique na opção “[!UICONTROL Botões]” no menu de localização rápida.

1. Arraste o botão **[!UICONTROL Atualizar data do touchpoint em massa]** para a seção de botões personalizados.

   ![](assets/4-1.jpg)

1. Clique em **[!UICONTROL Salvar]**.

   >[!NOTE]
   >
   >Se estiver usando vários tipos de registro do Campaign, você deverá atualizar os valores da lista de seleção para o **[!UICONTROL Ativar pontos de contato do comprador]** campo. Consulte [este artigo](/help/channel-tracking-and-setup/offline-channels/configurations-for-multiple-campaign-record-types.md) para obter instruções.

## Leads {#leads}

1. Na opção Criar, selecione **[!UICONTROL Leads]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que você deseja atualizar. Lembre-se de que vários layouts de página podem conter as seções Buyer Touchpoints.

1. Clique na opção de página VisualForce à esquerda, no menu de localização rápida.

1. Crie uma seção e a nomeie como &quot;Pontos de contato do comprador&quot;.

   >[!NOTE]
   >
   >Selecione o formato “uma coluna” para cada uma dessas seções.

1. Arraste a página do VisualForce **[!UICONTROL Lista relacionada ao lead do Marketo Measure]** para a seção de layout da página.

   ![](assets/5-1.png)

1. Clique na chave dentro da [!DNL VisualForce] e altere a altura para 100 e ative as barras de rolagem.

1. De volta ao menu, selecione a [!UICONTROL Aplicativos Canvas] e crie uma seção chamada &quot;Marketo Measure Insights&quot; abaixo dos Pontos de contato [!DNL VisualForce] seção que você criou.

   >[!NOTE]
   >
   >Selecione o formato “uma coluna” para cada uma dessas seções.

1. Arraste o aplicativo de tela do [!DNL Marketo Measure Insights] para a seção recém-criada. Clique em **Salvar**. Às vezes, é necessário salvar o layout da página primeiro antes de soltar no aplicativo de tela, pois o Salesforce não o reconhece instantaneamente. Portanto, depois de criar a seção, salve o layout da página e edite novamente para arrastar o aplicativo da tela nessa seção. Isso se aplica a todos os objetos.

   >[!NOTE]
   >
   >Para o [!DNL Marketo Measure Insights] Canvas App para funcionar corretamente, [as permissões do devem ser configuradas corretamente](/help/configuration-and-setup/marketo-measure-insights-canvas-app/marketo-measure-insights-configuration.md).

   >[!TIP]
   >
   >A maioria dos clientes não usa os campos que terminam com (FT) ou (LC) porque são campos herdados de antes de o touchpoint do [!DNL Marketo Measure] existir como um objeto.

Se você estiver usando o [!DNL Marketo Measure] Recurso ABM, [clique aqui para obter instruções adicionais sobre o layout da página](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md).

## Contatos {#contacts}

1. Na opção Criar, selecione **[!UICONTROL Contatos]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout da página que deseja editar.

   Vá para a opção Listas relacionadas no menu de localização rápida e adicione a lista relacionada **[!UICONTROL Buyer Touchpoints]**.

1. Clique no ícone de chave inglesa e adicione as seguintes colunas nesta ordem:

   * Buyer Touchpoint
   * Canal de marketing
   * Origem do touchpoint
   * Nome da campanha publicitária
   * Posição do touchpoint
   * Data do touchpoint

1. Classificar por: data do touchpoint, ordem crescente.

   ![](assets/6.jpg)

1. Expanda as opções de botões e desmarque a opção **[!UICONTROL Novo]**.

   ![](assets/7.png)

1. Volte para a opção [!UICONTROL Listas relacionada] no menu e adicione a lista relacionada **[!UICONTROL Buyer Attribution Touchpoint]**.

1. Clique no ícone de chave inglesa e adicione as seguintes colunas nesta ordem:

   * Touchpoint de atribuição
   * Canal de marketing
   * Oportunidade
   * Nome da campanha publicitária
   * Tipo de touchpoint
   * Posição do Touchpoint
   * % de atribuição em forma de W (_ou um modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou um modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do touchpoint

1. Classificar por [!UICONTROL Data] do touchpoint > [!UICONTROL Ordem crescente].

1. Expanda a seção de botões e desmarque a opção **[!UICONTROL Novo]**.

1. Clique em **[!UICONTROL Salvar]**.

## Oportunidades {#opportunities}

1. Na opção Criar, selecione **[!UICONTROL Oportunidades]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout da página que deseja editar.

1. Adicione a Lista relacionada **[!UICONTROL Buyer Attribution Touchpoint]** e clique na chave inglesa para adicionar as seguintes colunas para oportunidades:

   * Touchpoint de atribuição
   * Canal de marketing
   * Contato
   * Nome da campanha publicitária
   * Tipo de touchpoint
   * Posição do Touchpoint
   * % de atribuição em forma de W (_ou um modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou um modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do touchpoint

1. Classificar por [!UICONTROL Data do touchpoint] > [!UICONTROL Ordem crescente].

1. Desmarque a opção **[!UICONTROL Novo]** na seção de [!UICONTROL Botões].

1. Clique em **[!UICONTROL Salvar]**.

## Contas {#accounts}

1. Na opção Criar, selecione **[!UICONTROL Contas]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout da página que deseja editar.

1. Adicione a lista relacionada **[!UICONTROL Buyer Attribution Touchpoint]** e clique na chave inglesa para adicionar as seguintes colunas:

   * Touchpoint de atribuição
   * Canal de marketing
   * Oportunidade
   * Nome da campanha publicitária
   * Tipo de touchpoint
   * Posição do Touchpoint
   * % de atribuição em forma de W (_ou um modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou um modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do touchpoint

1. Classificar por Data do touchpoint > Ordem crescente.

1. Desmarcar a opção **[!UICONTROL Novo]** na seção de [!UICONTROL Botões].

1. Clique em **[!UICONTROL Salvar]**.

Se você estiver usando a variável [!DNL Marketo Measure] recurso ABM, reveja a [instruções adicionais de layout da página](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md).
