---
description: Práticas recomendadas para usar uma orientação de valor de receita personalizado para usuários do Marketo Measure
title: Práticas recomendadas para utilizar uma quantia de receita personalizada
exl-id: 553bd75a-512a-4733-a24b-8112eb420afc
feature: Custom Revenue Amount
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '436'
ht-degree: 7%

---

# Práticas recomendadas para utilizar uma quantia de receita personalizada {#best-practices-for-utilizing-a-custom-revenue-amount}

## Visão geral {#overview}

A funcionalidade principal do [!DNL Marketo Measure] é a capacidade de atribuir crédito de receita a pontos de contato de marketing durante toda a jornada do comprador. A chave para uma atribuição de receita precisa é a capacidade de [!DNL Marketo Measure] fazer referência ao valor de receita correto em uma Oportunidade, que por sua vez é distribuída entre os pontos de contato de marketing através dos vários modelos de atribuição.

A menos que seja especificado de outra forma durante a implementação, sua instância [!DNL Marketo Measure] será definida para fazer referência ao Valor de Oportunidade padrão (Padrão SFDC) para atribuição de receita. No entanto, para muitas contas do [!DNL Marketo Measure], esse campo não reflete o valor de receita preciso para Oportunidades. Nesses casos, o [!DNL Marketo Measure] oferece a capacidade de configurar um Valor de Receita Personalizado para [!DNL Marketo Measure] para fazer referência e distribuir pelos Pontos de Contato de Atribuição (BATs).

## Prática recomendada {#best-practice}

Ao configurar um Valor de receita personalizado, lembre-se das seguintes práticas recomendadas para garantir que os dados de atribuição do [!DNL Marketo Measure] sejam precisos e consistentes.

O que deve ser lembrado:

* Selecionar o campo de receita que é preciso e utilizado para todas as oportunidades
   * ARR ou Valor Total do Contrato usado recomendado
* Não usar um campo de fórmula
* Se você estiver usando um Valor de receita personalizado para conversões de moeda, a funcionalidade [!UICONTROL Várias Moedas do Marketo Measure] é o método preferido.
   * A funcionalidade [!DNL Marketo Measure] Várias Moedas faz referência às taxas de conversão estabelecidas em [!DNL Salesforce] para melhor garantir o alinhamento entre as conversões de moeda. Isso permite que você continue utilizando o &#39;Valor&#39; padrão (SFDC Padrão) ou qualquer outro campo de Valor personalizado relacionado às taxas de conversão [!DNL Salesforce].
* Se você atualizar o campo Valor que gostaria que [!DNL Marketo Measure] referenciasse, use o Carregador de Dados para atualizar Oportunidades passadas para garantir que os dados de receita sejam consistentes e que o campo apropriado seja preenchido por meio do fluxo de trabalho

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Analisar a configuração do valor de receita anualmente garantirá que seus dados de atribuição sejam precisos e alinhados com o restante dos relatórios de receita da organização.

Se você estiver utilizando uma Quantia de Receita Personalizada, verifique a configuração da receita da seguinte maneira.

* Na sua conta [!DNL Marketo Measure], vá para a seção &#39;[!UICONTROL Oportunidades]&#39; no CRM
* Identifique o campo [!UICONTROL Valor personalizado da oportunidade]. Aqui, o campo [!UICONTROL API de valor personalizado da receita] deve ser listado
* Confirme se esse ainda é o campo correto
* Peça também que o administrador [!DNL Salesforce] confirme se o fluxo de trabalho de Valor de receita personalizado em [!DNL Salesforce] ainda está em execução

Além de uma revisão anual, certas alterações organizacionais podem indicar a necessidade de revisar a configuração da quantia de receita...

* Rotatividade de sua equipe de marketing
* Alterações no campo Receita personalizada
* Alterações da organização em como a receita é relatada

>[!MORELIKETHIS]
>
>* [Usando um Campo de Valor de Receita Personalizado](/help/channel-tracking-and-setup/using-a-custom-revenue-amount-field.md)
>* [Usando o Carregador de Dados para Atualizar o Campo de Valor Personalizado](/help/channel-tracking-and-setup/using-data-loader-to-update-marketo-measure-custom-amount-field.md)
>* [Visão Geral da Multimoeda](/help/channel-tracking-and-setup/overview.md)
>* [Configurações de várias moedas](/help/channel-tracking-and-setup/settings.md)
