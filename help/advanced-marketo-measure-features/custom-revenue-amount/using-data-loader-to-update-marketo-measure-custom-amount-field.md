---
unique-page-id: 18874771
description: Usando o Carregador de Dados para Atualizar [!DNL Marketo Measure] Campo de Valor Personalizado - [!DNL Marketo Measure]
title: Utilização do Carregador de dados para atualizar o campo Valor personalizado do Marketo Measure
exl-id: 55e91ac4-a835-48e0-a6ce-1d85b32aeac0
feature: Custom Revenue Amount
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '198'
ht-degree: 2%

---

# Usando o Carregador de Dados para Atualizar o Campo de Valor Personalizado [!DNL Marketo Measure] {#using-data-loader-to-update-marketo-measure-custom-amount-field}

A [!DNL Marketo Measure] recomenda usar o Carregador de Dados como uma opção conveniente para atualizar os valores de oportunidade ao usar um campo de receita personalizado (usamos o campo Valor imediatamente) em [!DNL Marketo Measure]. O Carregador de Dados é preferível ao uso do script de atualização [!DNL Marketo Measure], pois o script requer que os usuários desabilitem todas as regras de validação do Salesforce enquanto o script [!DNL Marketo Measure] é executado.

## Usando o Carregador de Dados para Atualizar o Campo de Valor Personalizado [!DNL Marketo Measure]{#using-data-loader-to-update-marketo-measure-custom-amount-field-1}

1. Crie uma planilha do Excel com:

   * ID da oportunidade
   * Campo Valor de oportunidade personalizado (seu campo de receita preferido)
   * [!DNL Marketo Measure] Campo de valor da oportunidade

1. Copie e cole os valores do seu campo de receita preferido no campo [!UICONTROL [!DNL Marketo Measure] Valor da oportunidade]. Em seguida, atualize esses Opps usando o arquivo .csv.

**_Como alternativa, você pode acessar o Salesforce e usar uma exibição de lista personalizada para editar em massa todas as oportunidades..._**

1. Criar uma exibição de lista personalizada para todas as oportunidades.
1. Adicionar um filtro para o campo de receita preferencial não está em branco _e o campo Valor da Oportunidade de Medida_ [!UICONTROL Marketo] está em branco.
1. Clique em **[!UICONTROL Editar em massa]**, mas não altere nada.
1. Clique em **[!UICONTROL Salvar]**. Isso acionará o fluxo de trabalho para preencher os campos de Valor da oportunidade [!DNL Marketo Measure] com o campo Receita de software.
