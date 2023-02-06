---
unique-page-id: 18874799
description: Instruções de layout da página - [!DNL Marketo Measure] - Documentação do produto
title: Instruções de layout da página
exl-id: 627377f0-d0cf-448c-a7b5-7eb5634b9627
source-git-commit: b910e5aedb9e178058f7af9a6907a1039458ce7a
workflow-type: tm+mt
source-wordcount: '836'
ht-degree: 4%

---

# Instruções de layout da página {#page-layout-instructions}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

Para ver facilmente [!DNL Marketo Measure] , é recomendável atualizar os Layouts de página para a variável [!UICONTROL Conta], [!UICONTROL Contato], [!UICONTROL Líder], [!UICONTROL Oportunidade]e [!UICONTROL Campanha] Objetos. As instruções são detalhadas para cada Layout de página de objeto abaixo.

Para começar, primeiro navegue até o [!DNL Salesforce] Configure as configurações e localize a variável [!UICONTROL Personalizar] guia .

## Objeto da campanha {#campaign-object}

Recomendamos adicionar o [!DNL Marketo Measure] campos para sua campanha SFDC somente para sua sandbox. Os campos podem ser usados para testar a geração de pontos de contato. Na produção, recomendamos adicionar somente o [!DNL Marketo Measure] Botão Atualização em massa da data do ponto de contato. Não é recomendável adicionar o [!DNL Marketo Measure] campos para produção, pois é possível criar regras de sincronização de campanha.

1. Na opção Criar , selecione **[!UICONTROL Campanhas]**.

1. Clique em **[!UICONTROL Layouts de página]**.

   ![](assets/1-1.jpg)

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que deseja atualizar.

   ![](assets/2-1.jpg)

1. No [!UICONTROL campos] selecione a opção **[!UICONTROL Ativar pontos de contato do comprador]** e arraste-o onde desejar na página. Em seguida, adicione o **[!UICONTROL Data de início do ponto de contato]** e **[!UICONTROL Data final do ponto de contato]** campos.

   ![](assets/3-2.png)

1. Em seguida, na parte superior da página, clique no botão[!UICONTROL Botões]&quot; no menu de localização rápida.

1. Arraste o **[!UICONTROL Data do ponto de contato de atualização em massa]** à seção de botões personalizados.

   ![](assets/4-1.jpg)

1. Clique em **[!UICONTROL Salvar]**.

   >[!NOTE]
   >
   >Se você estiver usando vários tipos de registro de Campanha, os valores da lista de opções para a variável **[!UICONTROL Ativar pontos de contato do comprador]** precisará ser atualizado. Por favor consulte [este artigo](/help/channel-tracking-and-setup/offline-channels/configurations-for-multiple-campaign-record-types.md) para obter instruções.

## Leads {#leads}

1. Na opção Criar , selecione **[!UICONTROL Clientes potenciais]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que deseja atualizar. Lembre-se de que vários layouts de página podem conter as seções de Pontos de contato do comprador .

1. Clique na opção de página VisualForce à esquerda dentro do menu localizar rápido.

1. Crie uma nova seção e nomeie-a como &quot;Pontos de contato do comprador&quot;.

   >[!NOTE]
   >
   >Selecione o formato &quot;uma coluna&quot; para cada uma dessas seções.

1. Arraste o **[!UICONTROL Lista de leads relacionados da Marketo Measure]** Forçar a página a entrar na seção de layout da página.

   ![](assets/5-1.png)

1. Clique na chave inglesa dentro da janela [!DNL VisualForce] e altere a altura para 100 e ative barras de rolagem.

1. De volta ao menu, selecione o [!UICONTROL Aplicativos Canvas] e criar uma nova seção chamada &quot;Marketo Measure Insights&quot; abaixo dos Pontos de contato [!DNL VisualForce] seção que você acabou de criar.

   >[!NOTE]
   >
   >Selecione o formato &quot;uma coluna&quot; para cada uma dessas seções.

1. Arraste o [!DNL Marketo Measure Insights] Aplicativo Canvas na seção recém-criada. Clique em **Salvar**. Às vezes, é necessário salvar o layout da página primeiro antes de soltar no Aplicativo de Tela, pois o Salesforce não o reconhece instantaneamente. Assim, depois de criar a nova seção, salve o layout da página e edite novamente para arrastar o aplicativo de tela nessa seção. Isso se aplica a cada objeto.

   >[!NOTE]
   >
   >Para o [!DNL Marketo Measure Insights] Aplicativo de tela para funcionar corretamente, [as permissões precisam ser configuradas corretamente](/help/configuration-and-setup/marketo-measure-insights-canvas-app/marketo-measure-insights-configuration.md).

   >[!TIP]
   >
   >A maioria dos clientes não usa os campos que terminam com (FT) ou (LC) porque são campos herdados de antes da variável [!DNL Marketo Measure] O ponto de contato existia como um objeto.

Se você estiver aproveitando o [!DNL Marketo Measure] recurso ABM, [clique aqui para obter instruções adicionais sobre layout de página](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md).

## Contatos {#contacts}

1. Na opção Criar , selecione **[!UICONTROL Contatos]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout de página que deseja editar.

   Vá para a opção Listas relacionadas no menu localizar rápido e adicione o **[!UICONTROL Pontos de contato do comprador]** lista relacionada.

1. Clique no ícone da chave de fenda e adicione as seguintes colunas nesta ordem:

   * Ponto de contato do comprador
   * Canal de marketing
   * Origem do Touchpoint
   * Nome da campanha publicitária
   * Posição do Touchpoint
   * Data do Touchpoint

1. Classificar por: Data do ponto de contato, crescente.

   ![](assets/6.jpg)

1. Expanda a opção Botões e desmarque **[!UICONTROL Novo]**.

   ![](assets/7.png)

1. Volte para o [!UICONTROL Lista Relacionada] no menu e adicione agora a **[!UICONTROL Ponto de contato da atribuição do comprador]** lista relacionada.

1. Clique no ícone da chave de fenda e adicione as seguintes colunas nesta ordem:

   * Ponto de contato da atribuição
   * Canal de marketing
   * Oportunidade
   * Nome da campanha publicitária
   * Tipo de Touchpoint
   * Posição do Touchpoint
   * Atribuição % Forma de W (_ou modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do Touchpoint

1. Classificar por ponto de contato [!UICONTROL Data] > [!UICONTROL Crescente].

1. Expanda a seção Botões e desmarque **[!UICONTROL Novo]**.

1. Clique em **[!UICONTROL Salvar]**.

## Oportunidades {#opportunities}

1. Na opção Criar , selecione **[!UICONTROL Oportunidades]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout de página que deseja editar.

1. Adicione o **[!UICONTROL Ponto de contato da atribuição do comprador]** Lista relacionada e clique na chave inglesa para adicionar as seguintes colunas para Oportunidades:

   * Ponto de contato da atribuição
   * Canal de marketing
   * Contato
   * Nome da campanha publicitária
   * Tipo de Touchpoint
   * Posição do Touchpoint
   * Atribuição % Forma de W (_ou modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do Touchpoint

1. Classificar por [!UICONTROL Data do ponto de contato] > [!UICONTROL Crescente].

1. Desmarcar **[!UICONTROL Novo]** no [!UICONTROL Botões] seção.

1. Clique em **[!UICONTROL Salvar]**.

## Contas {#accounts}

1. Na opção Criar , selecione **[!UICONTROL Contas]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o Layout de página que deseja editar.

1. Adicione o **[!UICONTROL Ponto de contato da atribuição do comprador]** Lista relacionada e clique na chave inglesa para adicionar as seguintes colunas:

   * Ponto de contato da atribuição
   * Canal de marketing
   * Oportunidade
   * Nome da campanha publicitária
   * Tipo de Touchpoint
   * Posição do Touchpoint
   * Atribuição % Forma de W (_ou modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Receita em forma de W (_ou modelo de atribuição mais robusto, como Caminho completo ou Personalizado_)
   * Data do Touchpoint

1. Classificar por data do ponto de contato > Crescente.

1. Desmarcar **[!UICONTROL Novo]** no [!UICONTROL Botões] seção.

1. Clique em **[!UICONTROL Salvar]**.

Se você estiver aproveitando a variável [!DNL Marketo Measure] recurso ABM,  [clique aqui para obter instruções adicionais sobre layout de página](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md).
