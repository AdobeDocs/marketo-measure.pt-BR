---
description: Guia de Instruções de layout de página para usuários do Marketo Measure
title: Instruções de layout da página
exl-id: 627377f0-d0cf-448c-a7b5-7eb5634b9627
feature: Salesforce
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '855'
ht-degree: 92%

---

# Instruções de layout da página {#page-layout-instructions}

>[!NOTE]
>
>Você pode ver instruções específicas para o “[!DNL Marketo Measure]” na documentação, mas ainda notar o termo “Bizible” em seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

Para visualizar facilmente dados do [!DNL Marketo Measure], é recomendável atualizar os layouts de página para os objetos [!UICONTROL Conta], [!UICONTROL Contato], [!UICONTROL Lead], [!UICONTROL Oportunidade] e [!UICONTROL Campanha]. As instruções são divididas para cada layout de página de objeto abaixo.

Para começar, primeiro navegue até as configurações de definição do [!DNL Salesforce] e localize a guia [!UICONTROL Personalizar].

## Objeto de campanha {#campaign-object}

É recomendável adicionar os campos do [!DNL Marketo Measure] à campanha do SFDC somente para sua sandbox. Os campos podem ser usados para testar a geração de pontos de contato. Na produção, recomendamos adicionar apenas o botão Atualizar em massa a data do ponto de contato do [!DNL Marketo Measure]. Não recomendamos adicionar os campos do [!DNL Marketo Measure] na produção, pois é possível criar regras de sincronização de campanha.

1. Na opção Criar, selecione **[!UICONTROL Campanhas]**.

1. Clique em **[!UICONTROL Layouts de página]**.

   ![1. Clique em Layouts de Página.](assets/marketo-salesforce-7.jpg)

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que deseja atualizar.

   ![1. Clique em Editar ao lado do layout da página que você deseja](assets/marketo-salesforce-1.jpg)

1. Na opção [!UICONTROL campos], selecione o campo **[!UICONTROL Habilitar Buyer Touchpoints]** e arraste-o para onde quiser na página. Em seguida, adicione os campos **[!UICONTROL Data inicial do touchpoint]** e **[!UICONTROL Data final do touchpoint]**.

   ![1. Na opção Campos, selecione a opção Habilitar Pontos de Contato do Comprador](assets/bizible-full-1.png)

1. Em seguida, na parte superior da página, clique na opção “[!UICONTROL Botões]” no menu de localização rápida.

1. Arraste o botão **[!UICONTROL Atualizar data do touchpoint em massa]** para a seção de botões personalizados.

   ![1. Arraste o botão Atualização em Massa da Data do Ponto de Contato para o seu personalizado](assets/bizible-taxonomy-1.png)

1. Clique em **[!UICONTROL Salvar]**.

   >[!NOTE]
   >
   >Se estiver usando vários tipos de registro de campanha, atualize os valores da lista de seleção do campo **[!UICONTROL Habilitar Buyer Touchpoints]**. Consulte [este artigo](/help/channel-tracking-and-setup/configurations-record-types.md) para obter instruções.

## Leads {#leads}

1. Na opção Criar, selecione **[!UICONTROL Leads]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Clique em **[!UICONTROL Editar]** ao lado do layout da página que deseja atualizar. Lembre-se de que vários layouts de página podem conter as seções Buyer Touchpoints.

1. Clique na opção de página VisualForce à esquerda, no menu de localização rápida.

1. Crie uma nova seção e a nomeie como “Buyer Touchpoints”.

1. Arraste a página do VisualForce **[!UICONTROL Lista relacionada ao lead do Marketo Measure]** para a seção de layout da página.

   ![1. Arraste a página VisualForce da Lista Relacionada ao Cliente Potencial do Marketo Measure para ](assets/connect-salesforce-1.png)

1. Clique no ícone de chave inglesa na página [!DNL VisualForce], modifique a altura para 100 e habilite as barras de rolagem.

1. De volta ao menu, clique na seção [!UICONTROL Aplicativos de tela] e crie uma seção chamada “Insights do Marketo Measure” abaixo da seção [!DNL VisualForce] de pontos de contato que acabou de criar.

1. Arraste o aplicativo de tela do [!DNL Marketo Measure Insights] para a seção recém-criada. Clique em **Salvar**. Às vezes, é necessário salvar o layout da página primeiro antes de soltar no aplicativo de tela, pois o Salesforce não o reconhece instantaneamente. Portanto, depois de criar a seção, salve o layout da página e edite-o novamente para arrastar o aplicativo de tela para essa seção. Isso se aplica a todos os objetos.

   >[!NOTE]
   >
   >Para o aplicativo de tela do [!DNL Marketo Measure Insights] funcionar de maneira adequada, é preciso configurar corretamente as permissões do [](/help/configuration-and-setup/marketo-measure-insights-configuration.md).

Se estiver usando o recurso de ABM do [!DNL Marketo Measure], [clique aqui para obter instruções adicionais sobre o layout de página](/help/channel-tracking-and-setup/account-based-marketing-overview.md).

## Contatos {#contacts}

1. Na opção Criar, selecione **[!UICONTROL Contatos]**.

1. Clique em **[!UICONTROL Layouts de página]**.

1. Selecione o layout de página que deseja editar.

   Vá para a opção Listas relacionadas no menu de localização rápida e adicione a lista relacionada **[!UICONTROL Buyer Touchpoints]**.

1. Clique no ícone de chave inglesa e adicione as seguintes colunas nesta ordem:

   * Buyer Touchpoint
   * Canal de marketing
   * Origem do touchpoint
   * Nome da campanha publicitária
   * Posição do touchpoint
   * Data do touchpoint

1. Classificar por: data do touchpoint, ordem crescente.

   ![1. Classificar Por: Data Do Ponto De Contato, Crescente.](assets/marketo-salesforce-15.jpg)

1. Expanda as opções de botões e desmarque a opção **[!UICONTROL Novo]**.

   ![1. Expanda a opção Botões e desmarque Novo.](assets/marketo-salesforce-12.png)

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

1. Selecione o layout de página que deseja editar.

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

1. Selecione o layout de página que deseja editar.

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

Se estiver usando o recurso de ABM do [!DNL Marketo Measure], consulte as [instruções adicionais de layout de página](/help/channel-tracking-and-setup/account-based-marketing-overview.md).
