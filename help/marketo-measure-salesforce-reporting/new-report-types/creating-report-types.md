---
description: Criando orientação  [!DNL Marketo Measure] de Tipos de Relatório Personalizados para usuários do Marketo Measure
title: Criação de tipos de relatórios [!DNL Marketo Measure] personalizados
exl-id: 1d72a04f-6a2d-4607-ad09-3b025125156a
feature: Reporting
hidefromtoc: true
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '377'
ht-degree: 5%

---

# Criando Tipos de Relatório [!DNL Marketo Measure] Personalizados {#creating-custom-marketo-measure-report-types}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na documentação, mas ainda pode ver &quot;[!DNL Bizible]&quot; no seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

Saiba como criar tipos de relatório [!DNL Marketo Measure] [!DNL Salesforce] personalizados. Há três tipos diferentes de relatórios que recomendamos criar: Clientes potenciais com pontos de contato do comprador (Personalizado), [!DNL Marketo Measure] Pessoa com pontos de contato do comprador (Personalizado), Oportunidades com o Buyer Attribution Touchpoint (Personalizado).

## Clientes potenciais com pontos de contato do comprador (personalizado) {#leads-with-buyer-touchpoints-custom}

1. Vá para **[!UICONTROL Configuração]** > **[!UICONTROL Compilação]** > **[!UICONTROL Tipos de Relatório]** > **[!UICONTROL Novos Tipos de Relatório Personalizado]**.

   ![](assets/new-types-1.png)

1. Defina o Tipo de relatório personalizado.

   * [!UICONTROL Foco do Tipo de Relatório] > [!UICONTROL [!UICONTROL Objeto Primário]]: Cliente Potencial
   * Identificação > [!UICONTROL Rótulo de Tipo de Relatório]: clientes potenciais com pontos de contato do comprador (personalizado)
   * [!UICONTROL Armazenar na Categoria]: Outros Relatórios
   * [!UICONTROL Implantação] > [!UICONTROL Status de Implantação]: implantado

   ![](assets/new-types-10.jpg)

1. Defina os Relacionamentos entre objetos.

   * Relacione o objeto Cliente Potencial (A) ao Objeto Pessoa [!DNL Marketo Measure] (B) e, em seguida, ao Objeto Buyer Touchpoint (C)
   * Verifique se &quot;[!UICONTROL Cada registro A/B deve ter pelo menos um registro B/C]&quot; selecionado
   * [!UICONTROL Salvar]

   ![](assets/new-types-11.png)

## [!DNL Marketo Measure] Pessoa com Pontos de contato do comprador (Personalizado) {#marketo-measure-person-with-buyer-touchpoints-custom}

1. Vá para **[!UICONTROL Configuração]** > **[!UICONTROL Compilação]** > **[!UICONTROL Tipos de Relatório]** > **[!UICONTROL Novos Tipos de Relatório Personalizado]**.

   ![](assets/new-types-12.png)

1. Defina o Tipo de relatório personalizado.

   * [!UICONTROL Foco do Tipo de Relatório] > [!UICONTROL Objeto Principal]: [!DNL Marketo Measure] Pessoas
   * [!UICONTROL Identificação] > [!UICONTROL Rótulo de Tipo de Relatório]: [!DNL Marketo Measure] Pessoa com Pontos de Contato de Comprador (Personalizado)
   * [!UICONTROL Armazenar na Categoria]: Outros Relatórios
   * [!UICONTROL Implantação] > [!UICONTROL Status de Implantação]: implantado

   ![](assets/new-types-13.jpg)

1. Defina os Relacionamentos entre objetos.

   * Relacione o objeto Pessoa [!DNL Marketo Measure] (A) ao Objeto Buyer Touchpoint (B)
   * Verifique se &quot;[!UICONTROL Cada registro A deve ter pelo menos um registro B]&quot; está selecionado
   * [!UICONTROL Salvar]

   ![](assets/new-types-9.png)

## Oportunidades com o Buyer Attribution Touchpoint (personalizado) {#opportunities-with-buyer-attribution-touchpoint-custom}

1. Vá para **[!UICONTROL Configuração]** > **[!UICONTROL Compilação]** > **[!UICONTROL Tipos de Relatório]** > **[!UICONTROL Novos Tipos de Relatório Personalizado]**.

   ![](assets/new-types-8.png)

1. Defina o Tipo de relatório personalizado.

   * [!UICONTROL Foco do Tipo de Relatório] > [!UICONTROL Objeto Principal]: Oportunidades
   * [!UICONTROL Identificação] > [!UICONTROL Rótulo de Tipo de Relatório]: Oportunidades com o Buyer Attribution Touchpoint (Personalizado)
   * [!UICONTROL Armazenar na Categoria]: Outros Relatórios
   * [!UICONTROL Implantação] > [!UICONTROL Status de Implantação]: implantado

   ![](assets/new-types-14.jpg)

1. Defina os Relacionamentos entre objetos.

   * Relacione o objeto Oportunidades (A) ao objeto Buyer Attribution Touchpoint (B)
   * Verifique se &quot;[!UICONTROL Cada registro A deve ter pelo menos um registro B]&quot; está selecionado
   * [!UICONTROL Salvar]

   ![](assets/new-types-15.png)

## Adição de campos personalizados a tipos de relatórios personalizados {#adding-custom-fields-to-custom-report-types}

1. Depois que os relatórios forem criados, você será redirecionado para uma visão geral do tipo de relatório. Clique em **[!UICONTROL Editar layout]**.

   ![](assets/new-types-2.png)

1. Verifique se os campos personalizados que deseja adicionar ao relatório aparecem na seção Propriedades de layout do campo. Se houver outros campos que você queira adicionar, use a opção &quot;[!UICONTROL Adicionar campos relacionados via pesquisa]&quot;.

   ![](assets/new-types-3.png)
