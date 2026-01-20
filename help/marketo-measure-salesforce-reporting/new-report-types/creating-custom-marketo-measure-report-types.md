---
unique-page-id: 18874539
description: Criando  [!DNL Marketo Measure] Tipos de Relatório - [!DNL Marketo Measure] Personalizados
title: Criação de tipos de relatórios [!DNL Marketo Measure] personalizados
exl-id: 1d72a04f-6a2d-4607-ad09-3b025125156a
feature: Reporting
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '372'
ht-degree: 5%

---

# Criando Tipos de Relatório [!DNL Marketo Measure] Personalizados {#creating-custom-marketo-measure-report-types}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na documentação, mas ainda pode ver &quot;[!DNL Bizible]&quot; no seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

Saiba como criar tipos de relatório [!DNL Marketo Measure] [!DNL Salesforce] personalizados. Há três tipos diferentes de relatórios que recomendamos criar: Clientes potenciais com pontos de contato do comprador (Personalizado), [!DNL Marketo Measure] Pessoa com pontos de contato do comprador (Personalizado), Oportunidades com o Buyer Attribution Touchpoint (Personalizado).

## Clientes potenciais com pontos de contato do comprador (personalizado) {#leads-with-buyer-touchpoints-custom}

1. Vá para **[!UICONTROL Configuração]** > **[!UICONTROL Compilação]** > **[!UICONTROL Tipos de Relatório]** > **[!UICONTROL Novos Tipos de Relatório Personalizado]**.

   ![](assets/1.png)

1. Defina o Tipo de relatório personalizado.

   * [!UICONTROL Foco do Tipo de Relatório] > [!UICONTROL [!UICONTROL Objeto Primário]]: Cliente Potencial
   * Identificação > [!UICONTROL Rótulo de Tipo de Relatório]: clientes potenciais com pontos de contato do comprador (personalizado)
   * [!UICONTROL Armazenar na Categoria]: Outros Relatórios
   * [!UICONTROL Implantação] > [!UICONTROL Status de Implantação]: implantado

   ![](assets/2.png)

1. Defina os Relacionamentos entre objetos.

   * Relacione o objeto Cliente Potencial (A) ao Objeto Pessoa [!DNL Marketo Measure] (B) e, em seguida, ao Objeto Buyer Touchpoint (C)
   * Verifique se &quot;[!UICONTROL Cada registro A/B deve ter pelo menos um registro B/C]&quot; selecionado
   * [!UICONTROL Salvar]

   ![](assets/3.png)

## [!DNL Marketo Measure] Pessoa com Pontos de contato do comprador (Personalizado) {#marketo-measure-person-with-buyer-touchpoints-custom}

1. Vá para **[!UICONTROL Configuração]** > **[!UICONTROL Compilação]** > **[!UICONTROL Tipos de Relatório]** > **[!UICONTROL Novos Tipos de Relatório Personalizado]**.

   ![](assets/4.png)

1. Defina o Tipo de relatório personalizado.

   * [!UICONTROL Foco do Tipo de Relatório] > [!UICONTROL Objeto Principal]: [!DNL Marketo Measure] Pessoas
   * [!UICONTROL Identificação] > [!UICONTROL Rótulo de Tipo de Relatório]: [!DNL Marketo Measure] Pessoa com Pontos de Contato de Comprador (Personalizado)
   * [!UICONTROL Armazenar na Categoria]: Outros Relatórios
   * [!UICONTROL Implantação] > [!UICONTROL Status de Implantação]: implantado

   ![](assets/5.png)

1. Defina os Relacionamentos entre objetos.

   * Relacione o objeto Pessoa [!DNL Marketo Measure] (A) ao Objeto Buyer Touchpoint (B)
   * Verifique se &quot;[!UICONTROL Cada registro A deve ter pelo menos um registro B]&quot; está selecionado
   * [!UICONTROL Salvar]

   ![](assets/6.png)

## Oportunidades com o Buyer Attribution Touchpoint (personalizado) {#opportunities-with-buyer-attribution-touchpoint-custom}

1. Vá para **[!UICONTROL Configuração]** > **[!UICONTROL Compilação]** > **[!UICONTROL Tipos de Relatório]** > **[!UICONTROL Novos Tipos de Relatório Personalizado]**.

   ![](assets/7.png)

1. Defina o Tipo de relatório personalizado.

   * [!UICONTROL Foco do Tipo de Relatório] > [!UICONTROL Objeto Principal]: Oportunidades
   * [!UICONTROL Identificação] > [!UICONTROL Rótulo de Tipo de Relatório]: Oportunidades com o Buyer Attribution Touchpoint (Personalizado)
   * [!UICONTROL Armazenar na Categoria]: Outros Relatórios
   * [!UICONTROL Implantação] > [!UICONTROL Status de Implantação]: implantado

   ![](assets/8.png)

1. Defina os Relacionamentos entre objetos.

   * Relacione o objeto Oportunidades (A) ao objeto Buyer Attribution Touchpoint (B)
   * Verifique se &quot;[!UICONTROL Cada registro A deve ter pelo menos um registro B]&quot; está selecionado
   * [!UICONTROL Salvar]

   ![](assets/9.png)

## Adição de campos personalizados a tipos de relatórios personalizados {#adding-custom-fields-to-custom-report-types}

1. Depois que os relatórios forem criados, você será redirecionado para uma visão geral do tipo de relatório. Clique em **[!UICONTROL Editar layout]**.

   ![](assets/10.png)

1. Verifique se os campos personalizados que deseja adicionar ao relatório aparecem na seção Propriedades de layout do campo. Se houver outros campos que você queira adicionar, use a opção &quot;[!UICONTROL Adicionar campos relacionados via pesquisa]&quot;.

   ![](assets/11.png)
