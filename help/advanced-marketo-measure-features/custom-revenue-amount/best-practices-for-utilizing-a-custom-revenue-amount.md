---
description: Práticas recomendadas para usar um valor de receita personalizado - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para utilizar uma quantia de receita personalizada
exl-id: 553bd75a-512a-4733-a24b-8112eb420afc
feature: Custom Revenue Amount
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '431'
ht-degree: 8%

---

# Práticas recomendadas para utilizar uma quantia de receita personalizada {#best-practices-for-utilizing-a-custom-revenue-amount}

## Visão geral {#overview}

A funcionalidade principal do [!DNL Marketo Measure] é a capacidade de atribuir crédito de receita a pontos de contato de marketing durante toda a jornada do comprador. A chave para a atribuição precisa de receita é a capacidade de [!DNL Marketo Measure] para fazer referência ao valor de receita correto em uma Oportunidade, que, por sua vez, é distribuída entre os pontos de contato de marketing por meio dos vários modelos de atribuição.

A menos que especificado de outra forma durante a implementação, seu [!DNL Marketo Measure] será definida para fazer referência ao Valor de oportunidade padrão (Padrão SFDC) para atribuição de receita. No entanto, para muitos [!DNL Marketo Measure] contas, esse campo não reflete o valor de receita preciso para Oportunidades. Nesses casos, [!DNL Marketo Measure] oferece a capacidade de configurar um Valor de receita personalizado para [!DNL Marketo Measure] para fazer referência e distribuir pelos Pontos de contato de atribuição (BATs).

## Prática recomendada {#best-practice}

Ao configurar um Valor de receita personalizado, lembre-se das seguintes práticas recomendadas para garantir que [!DNL Marketo Measure] os dados de atribuição são precisos e consistentes!

O que deve ser lembrado:

* Selecionar o campo de receita que é preciso e utilizado para todas as oportunidades
   * ARR ou Valor Total do Contrato usado recomendado
* Não usar um campo de fórmula
* Se estiver usando um Valor de receita personalizado para conversões de moeda, a variável [!UICONTROL Várias Moedas do Marketo Measure] A funcionalidade é o método preferido.
   * A variável [!DNL Marketo Measure] A funcionalidade Várias Moedas faz referência às taxas de conversão estabelecidas no [!DNL Salesforce] para melhor garantir o alinhamento entre as conversões de moeda. Isso permite que você continue utilizando o &#39;Valor&#39; padrão (Padrão SFDC) ou qualquer outro campo de Valor personalizado relacionado ao [!DNL Salesforce] taxas de conversão.
* Se você atualizar o campo Valor desejado [!DNL Marketo Measure] para fazer referência, use o Carregador de dados para atualizar Oportunidades anteriores para garantir que os dados de receita sejam consistentes e o campo adequado seja preenchido por meio do fluxo de trabalho

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Analisar a configuração do valor de receita anualmente garantirá que seus dados de atribuição sejam precisos e alinhados com o restante dos relatórios de receita da organização.

Se você estiver utilizando uma Quantia de Receita Personalizada, verifique a configuração da receita da seguinte maneira.

* No seu [!DNL Marketo Measure] conta, acesse o link &#39;[!UICONTROL Oportunidades]seção &quot; no CRM
* Identificar o [!UICONTROL Valor de oportunidade personalizado] Campo, aqui o seu [!UICONTROL API de valor de receita personalizada] o campo deve ser listado
* Confirme se esse ainda é o campo correto
* Tenha também o seu [!DNL Salesforce] O administrador confirma se o fluxo de trabalho de Valor de receita personalizada no [!DNL Salesforce] ainda está em execução

Além de uma revisão anual, certas alterações organizacionais podem indicar a necessidade de revisar a configuração da quantia de receita...

* Volume de negócios da sua equipe de marketing
* Alterações no campo Receita personalizada
* Alterações da organização em como a receita é relatada

>[!MORELIKETHIS]
>
>* [Utilização de um campo de quantia de receita personalizada](/help/advanced-marketo-measure-features/custom-revenue-amount/using-a-custom-revenue-amount-field.md)
>* [Como usar o carregador de dados para atualizar ocampo de quantia personalizada](/help/advanced-marketo-measure-features/custom-revenue-amount/using-data-loader-to-update-marketo-measure-custom-amount-field.md)
>* [Visão Geral da Multimoeda](/help/advanced-marketo-measure-features/multi-currency/overview.md)
>* [Configurações de várias moedas](/help/advanced-marketo-measure-features/multi-currency/settings.md)
