---
unique-page-id: 18874799
description: Instruções de layout da página - [!DNL Marketo Measure] - Documentação do produto
title: Instruções de layout da página
exl-id: 627377f0-d0cf-448c-a7b5-7eb5634b9627
feature: Salesforce
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '836'
ht-degree: 7%

---

# Instruções de layout da página {#page-layout-instructions}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Para ver facilmente [!DNL Marketo Measure] , é recomendável atualizar os Layouts de página para a [!UICONTROL Conta], [!UICONTROL Contato], [!UICONTROL Lead], [!UICONTROL Oportunidade], e [!UICONTROL Campaign] Objetos. As instruções são divididas para cada Layout de página de objeto abaixo.

Para começar, primeiro navegue até o [!DNL Salesforce] Defina as configurações e localize o [!UICONTROL Personalizar] guia.

## Objeto de campanha {#campaign-object}

Recomendamos adicionar o [!DNL Marketo Measure] à sua campanha do SFDC somente para sua sandbox. Os campos podem ser usados para testar a geração de pontos de contato. Em produção, recomendamos adicionar apenas o [!DNL Marketo Measure] Botão Atualizar Data do Ponto de Contato em Massa. Não recomendamos adicionar o [!DNL Marketo Measure] para produção, pois é possível criar regras de regra de Sincronização de Campanha.

1. Na opção Criar, selecione **[!UICONTROL Campanhas]**.

1. Clique em **[!UICONTROL Layouts de página]**.

   ![](assets/1-1.jpg)

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que você deseja atualizar.

   ![](assets/2-1.jpg)

1. No prazo de [!UICONTROL campos] selecione a opção **[!UICONTROL Ativar pontos de contato do comprador]** e arraste-o para onde quiser na página. Em seguida, adicione o **[!UICONTROL Data de início do ponto de contato]** e **[!UICONTROL Data de término do ponto de contato]** campos.

   ![](assets/3-2.png)

1. Em seguida, na parte superior da página, clique no ícone &quot;[!UICONTROL Botões]&quot; no menu de localização rápida.

1. Arraste o **[!UICONTROL Atualização em massa da data do ponto de contato]** botão para sua seção de botões personalizados.

   ![](assets/4-1.jpg)

1. Clique em **[!UICONTROL Salvar]**.

   >[!NOTE]
   >
   >Se você estiver usando vários tipos de registro do Campaign, os valores da lista de seleção para o **[!UICONTROL Ativar pontos de contato do comprador]** precisará ser atualizado. Consulte [este artigo](/help/channel-tracking-and-setup/offline-channels/configurations-for-multiple-campaign-record-types.md) para obter instruções.

## Leads {#leads}

1. Na opção Criar, selecione **[!UICONTROL Clientes potenciais]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que você deseja atualizar. Lembre-se de que vários layouts de página podem conter as seções Pontos de contato do comprador.

1. Clique na opção de página do VisualForce à esquerda, no menu de localização rápida.

1. Crie uma nova seção e a nomeie como &quot;Pontos de contato do comprador&quot;.

   >[!NOTE]
   >
   >Selecione o formato &quot;uma coluna&quot; para cada uma dessas seções.

1. Arraste o **[!UICONTROL Lista Relacionada ao Cliente Potencial do Marketo Measure]** VisualForce na sua seção de layout da página.

   ![](assets/5-1.png)

1. Clique na chave inglesa dentro do [!DNL VisualForce] e altere a altura para 100 e ative as barras de rolagem.

1. De volta ao menu, selecione a [!UICONTROL Aplicativos Canvas] e crie uma nova seção chamada &quot;Marketo Measure Insights&quot; abaixo dos Pontos de contato [!DNL VisualForce] seção que acabou de criar.

   >[!NOTE]
   >
   >Selecione o formato &quot;uma coluna&quot; para cada uma dessas seções.

1. Arraste o [!DNL Marketo Measure Insights] aplicativo Canvas nessa seção recém-criada. Clique em **Salvar**. Às vezes, é necessário salvar o layout da página primeiro antes de soltar no aplicativo Canvas, pois o Salesforce não o reconhece instantaneamente. Portanto, depois de criar a nova seção, salve o layout da página e edite novamente para arrastar o aplicativo da tela nessa seção. Isso se aplica a todos os objetos.

   >[!NOTE]
   >
   >Para o [!DNL Marketo Measure Insights] Canvas App para funcionar corretamente, [as permissões do precisam ser configuradas corretamente](/help/configuration-and-setup/marketo-measure-insights-canvas-app/marketo-measure-insights-configuration.md).

   >[!TIP]
   >
   >A maioria dos clientes não usa os campos que terminam com (FT) ou (LC) porque são campos herdados de antes da variável [!DNL Marketo Measure] O ponto de contato existia como um objeto.

Se você estiver aproveitando o [!DNL Marketo Measure] Recurso ABM, [clique aqui para obter instruções adicionais sobre o layout da página](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md).

## Contatos {#contacts}

1. Na opção Criar, selecione **[!UICONTROL Contatos]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout da página que deseja editar.

   Vá para a opção Listas Relacionadas no menu de localização rápida e adicione a **[!UICONTROL Pontos de contato do comprador]** lista relacionada.

1. Clique no ícone da chave inglesa e adicione as seguintes colunas nesta ordem:

   * Ponto de contato do comprador
   * Canal de marketing
   * Origem do touchpoint
   * Nome da campanha publicitária
   * Posição do Touchpoint
   * Data do Touchpoint

1. Classificar Por: Data Do Ponto De Contato, Crescente.

   ![](assets/6.jpg)

1. Expanda a opção Botões e desmarque **[!UICONTROL Novo]**.

   ![](assets/7.png)

1. Volte para o [!UICONTROL Lista relacionada] no menu e adicione a variável **[!UICONTROL Ponto de contato de atribuição do comprador]** lista relacionada.

1. Clique no ícone da chave inglesa e adicione as seguintes colunas nesta ordem:

   * Ponto de contato de atribuição
   * Canal de marketing
   * Oportunidade
   * Nome da campanha publicitária
   * Tipo de Touchpoint
   * Posição do Touchpoint
   * % de atribuição em forma de W (_ou o modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou o modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do Touchpoint

1. Classificar por Touchpoint [!UICONTROL Data] > [!UICONTROL Crescente].

1. Expanda a seção Botões e desmarque **[!UICONTROL Novo]**.

1. Clique em **[!UICONTROL Salvar]**.

## Oportunidades {#opportunities}

1. Na opção Criar, selecione **[!UICONTROL Oportunidades]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout da página que deseja editar.

1. Adicione o **[!UICONTROL Ponto de contato de atribuição do comprador]** Relacionado e clique na chave inglesa para adicionar as seguintes colunas para Oportunidades:

   * Ponto de contato de atribuição
   * Canal de marketing
   * Contato
   * Nome da campanha publicitária
   * Tipo de Touchpoint
   * Posição do Touchpoint
   * % de atribuição em forma de W (_ou o modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou o modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do Touchpoint

1. Classificar por [!UICONTROL Data do ponto de contato] > [!UICONTROL Crescente].

1. Desmarcar **[!UICONTROL Novo]** no prazo de [!UICONTROL Botões] seção.

1. Clique em **[!UICONTROL Salvar]**.

## Contas {#accounts}

1. Na opção Criar, selecione **[!UICONTROL Contas]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout da página que deseja editar.

1. Adicione o **[!UICONTROL Ponto de contato de atribuição do comprador]** Relacionados e clique na chave inglesa para adicionar as seguintes colunas:

   * Ponto de contato de atribuição
   * Canal de marketing
   * Oportunidade
   * Nome da campanha publicitária
   * Tipo de Touchpoint
   * Posição do Touchpoint
   * % de atribuição em forma de W (_ou o modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou o modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do Touchpoint

1. Classificar por Data do ponto de contato > Crescente.

1. Desmarcar **[!UICONTROL Novo]** no prazo de [!UICONTROL Botões] seção.

1. Clique em **[!UICONTROL Salvar]**.

Se você estiver aproveitando o [!DNL Marketo Measure] Recurso ABM,  [clique aqui para obter instruções adicionais sobre o layout da página](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md).
