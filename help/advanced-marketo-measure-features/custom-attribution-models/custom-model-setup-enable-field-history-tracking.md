---
unique-page-id: 18874777
description: 'Configuração de modelo personalizado: habilitar o rastreamento do histórico de campos -  [!DNL Marketo Measure]'
title: 'Configuração de modelo personalizado: habilitar o rastreamento do histórico de campos'
exl-id: 70328e67-051b-4864-891b-b251e49859c2
feature: Custom Models
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: ht
source-wordcount: '312'
ht-degree: 100%

---

# Configuração de modelo personalizado: habilitar o rastreamento do histórico de campos {#custom-model-setup-enable-field-history-tracking}

## Por que e quando habilitar o rastreamento do histórico de campos {#why-and-when-to-enable-field-history-tracking}

Se você decidir incluir um campo personalizado como um estágio em seu modelo de atribuição personalizado, o rastreamento do histórico de campos **deve estar habilitado** para este campo. Habilitar o rastreamento do histórico de campos permite que o [!DNL Salesforce] rastreie cada edição do campo personalizado, criando um registro na tabela Rastreamento de histórico. O [!DNL Marketo Measure] pode baixar essa tabela e usar essas informações para medir a hora e o dia em que ocorreu uma “transição”. Sem o rastreamento do histórico de campos, o [!DNL Marketo Measure] não consegue rastrear alterações relacionadas a este campo.

Se você usar apenas os estágios de [!UICONTROL status do lead] ou oportunidade no modelo personalizado, não há necessidade de habilitar o rastreamento do histórico de campos, visto que ele será rastreado automaticamente como uma transição de estágio.

Para habilitar o rastreamento do histórico de campos, siga as instruções abaixo.

## Habilitar o rastreamento do histórico de campos {#enable-field-history-tracking}

>[!NOTE]
>
>Você precisa ser um(a) admin de sistema para fazer essas alterações nos campos dos objetos de lead, contato ou oportunidade.

1. Acesse o objeto que contém o campo personalizado e clique em **[!UICONTROL Definir rastreamento de histórico]**.

   ![](assets/1.png)

1. Selecione os campos nos quais deseja acompanhar as alterações.

   ![](assets/2.png)

O [!DNL Marketo Measure] só poderá reimportar um registro se perceber que ele foi modificado recentemente. Alterar os campos de fórmula tecnicamente não conta como uma alteração de registro, pois o cálculo é feito em segundo plano. Já observamos problemas em que uma regra foi ignorada porque o [!DNL Marketo Measure] não notou a alteração do registro; por isso é aconselhável **não usar campos de fórmula em definições de regra**. A solução é criar um campo de texto e usar um fluxo de trabalho para preencher esse campo com o valor ou cálculo adequado sempre que o registro for editado ou atender aos critérios. Isso exige que todos os registros sejam editados para que o fluxo de trabalho funcione retroativamente com registros antigos.
