---
unique-page-id: 18874771
description: Uso do Carregador de Dados para Atualização [!DNL Marketo Measure] Campo Valor personalizado - [!DNL Marketo Measure]
title: Utilização do Carregador de dados para atualizar o campo Valor personalizado do Marketo Measure
exl-id: 55e91ac4-a835-48e0-a6ce-1d85b32aeac0
feature: Custom Revenue Amount
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '198'
ht-degree: 2%

---

# Uso do Carregador de Dados para Atualização [!DNL Marketo Measure] Campo Valor personalizado {#using-data-loader-to-update-marketo-measure-custom-amount-field}

[!DNL Marketo Measure] A recomenda usar o Carregador de dados como uma opção conveniente para atualizar valores de oportunidade ao usar um campo de receita personalizado (usamos o campo Valor imediatamente) na [!DNL Marketo Measure]. O Carregador de dados é preferível ao uso de [!DNL Marketo Measure] atualizar o script como o script exige que os usuários desativem todas as regras de validação do Salesforce enquanto o [!DNL Marketo Measure] execução do script.

## Uso do Carregador de Dados para Atualização [!DNL Marketo Measure] Campo Valor personalizado{#using-data-loader-to-update-marketo-measure-custom-amount-field-1}

1. Crie uma planilha do Excel com:

   * ID da oportunidade
   * Campo Valor de oportunidade personalizado (seu campo de receita preferido)
   * [!DNL Marketo Measure] Campo Valor da oportunidade

1. Copie e cole os valores do seu campo de receita preferido na [!UICONTROL [!DNL Marketo Measure] Valor da oportunidade] campo. Em seguida, atualize esses Opps usando o arquivo .csv.

**_Como alternativa, você pode acessar o Salesforce e usar uma exibição de lista personalizada para editar em massa todas as oportunidades..._**

1. Criar uma exibição de lista personalizada para todas as oportunidades.
1. Adicionar um filtro para o campo de receita preferencial não está em branco _e_ [!UICONTROL Marketo] O campo Valor da Oportunidade de Medida está em branco.
1. Clique em **[!UICONTROL Editar em massa]**, mas não mude nada.
1. Clique em **[!UICONTROL Salvar]**. Isso acionará o workflow para preencher o [!DNL Marketo Measure] Campos de valor da oportunidade com o campo Receita de software.
