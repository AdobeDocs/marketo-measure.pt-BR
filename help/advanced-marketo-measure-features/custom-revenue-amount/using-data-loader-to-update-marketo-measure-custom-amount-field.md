---
unique-page-id: 18874771
description: Como usar o Data Loader para atualizar [!DNL Marketo Measure] Campo de valor personalizado - [!DNL Marketo Measure] - Documentação do produto
title: Usando o Carregador de Dados para Atualizar o Campo de Quantia Personalizada do Marketo Measure
exl-id: 55e91ac4-a835-48e0-a6ce-1d85b32aeac0
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '200'
ht-degree: 1%

---

# Como usar o Data Loader para atualizar [!DNL Marketo Measure] Campo Quantia Personalizada {#using-data-loader-to-update-marketo-measure-custom-amount-field}

[!DNL Marketo Measure] A recomenda usar o Data Loader como uma opção conveniente para atualizar valores de oportunidade ao usar um campo de receita personalizado (usamos o campo Quantia imediatamente) em [!DNL Marketo Measure]. O Carregador de dados é preferível a usar o [!DNL Marketo Measure] atualizar script, pois o script requer que os usuários desabilitem todas as regras de validação do Salesforce, enquanto a variável [!DNL Marketo Measure] O script é executado.

## Como usar o Data Loader para atualizar [!DNL Marketo Measure] Campo Quantia Personalizada{#using-data-loader-to-update-marketo-measure-custom-amount-field-1}

1. Crie uma planilha do excel com:

   * ID da oportunidade
   * Campo Quantia da Oportunidade Personalizada (campo de receita preferencial)
   * [!DNL Marketo Measure] Campo Valor da Oportunidade

1. Copie e cole os valores do campo de receita preferencial no [!UICONTROL [!DNL Marketo Measure] Valor da Oportunidade] campo. Em seguida, atualize essas Opções usando o arquivo .csv .

**_Como alternativa, você pode entrar no Salesforce e usar uma exibição de lista personalizada para editar em massa todas as oportunidades..._**

1. Crie uma exibição de Lista personalizada para todas as oportunidades.
1. Adicionar um filtro para o campo de receita preferencial não está em branco _e_ [!UICONTROL Marketo] O campo Quantia da Oportunidade de Medida está em branco.
1. Clique em **[!UICONTROL Edição em massa]**, mas não mude nada.
1. Clique em **[!UICONTROL Salvar]**. Isso acionará o fluxo de trabalho para preencher a variável [!DNL Marketo Measure] Campos Quantia da Oportunidade com o campo Receita de Software.
