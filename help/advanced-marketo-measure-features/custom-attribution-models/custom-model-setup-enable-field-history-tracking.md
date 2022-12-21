---
unique-page-id: 18874777
description: Configuração do modelo personalizado - Ativar rastreamento do histórico de campos - [!DNL Marketo Measure] - Documentação do produto
title: Configuração do modelo personalizado - Ativar o rastreamento do histórico de campos
exl-id: 70328e67-051b-4864-891b-b251e49859c2
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '315'
ht-degree: 0%

---

# Configuração de modelo personalizado: Ativar o rastreamento do histórico de campos {#custom-model-setup-enable-field-history-tracking}

## Por que e quando ativar o rastreamento do histórico de campos {#why-and-when-to-enable-field-history-tracking}

Se você decidir incluir um campo personalizado como estágio em seu modelo de atribuição personalizado, o rastreamento do histórico de campos **deve estar habilitado** para este campo. Habilitar o rastreamento do histórico de campos permitirá [!DNL Salesforce] para rastrear a qualquer momento, o campo personalizado é editado criando um registro na tabela Rastreamento de histórico . [!DNL Marketo Measure] O pode baixar essa tabela e usar essas informações para medir a hora e o dia em que ocorreu uma &quot;transição&quot;. Sem rastreamento do histórico de campos, [!DNL Marketo Measure] O não pode rastrear as alterações relacionadas a este campo.

Somente se [!UICONTROL Status do cliente potencial] Para que os Estágios de oportunidade sejam usados no modelo personalizado, não há necessidade de ativar o rastreamento do Histórico de campos porque ele será rastreado automaticamente como uma transição de estágio.

Para ativar o rastreamento do histórico de campos, siga as instruções abaixo.

## Ativar o rastreamento do histórico de campos {#enable-field-history-tracking}

>[!NOTE]
>
>Você precisará ser um Administrador do sistema para fazer essas alterações nos campos do objeto Lead/Contact/Oportunity.

1. Vá para o Objeto em que o campo personalizado está e clique no botão **[!UICONTROL Definir rastreamento de histórico]** botão.

   ![](assets/1.png)

1. Selecione os campos nos quais deseja rastrear as alterações.

   ![](assets/2.png)

[!DNL Marketo Measure] só poderá reimportar um registro se ele verificar que ele foi modificado recentemente. Os campos de fórmula tecnicamente não modificam um registro quando ele é alterado, pois faz o cálculo em segundo plano. Vimos problemas em que uma regra é ignorada porque [!DNL Marketo Measure] não visualizou a alteração de registro, portanto, recomenda-se **não usar campos de fórmula nas definições de regra**. A solução é criar um campo de texto e usar um workflow para preencher esse campo com o valor ou cálculo apropriado sempre que o registro for editado ou se ajustar aos critérios. Isso requer que todos os registros sejam editados para que o workflow possa trabalhar retroativamente em registros antigos.
