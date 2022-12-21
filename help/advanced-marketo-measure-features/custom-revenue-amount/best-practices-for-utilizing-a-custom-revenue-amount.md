---
description: Práticas recomendadas para utilizar uma quantia de receita personalizada - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para utilizar uma quantia de receita personalizada
exl-id: 553bd75a-512a-4733-a24b-8112eb420afc
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '431'
ht-degree: 0%

---

# Práticas recomendadas para utilizar uma quantia de receita personalizada {#best-practices-for-utilizing-a-custom-revenue-amount}

## Visão geral {#overview}

A principal funcionalidade do [!DNL Marketo Measure] é a capacidade de atribuir crédito de receita a pontos de contato de marketing em toda a jornada do comprador. A chave para uma atribuição de receita precisa é a capacidade de [!DNL Marketo Measure] para fazer referência ao valor de receita correto em uma Oportunidade, que, por sua vez, é distribuído pelos pontos de contato de marketing por meio dos vários modelos de atribuição.

Salvo especificação em contrário durante a implementação, [!DNL Marketo Measure] A instância será definida para fazer referência à Quantia da Oportunidade padrão (Padrão SFDC) para atribuição de receita. No entanto, para muitos [!DNL Marketo Measure] , este campo não reflete o valor exato da receita para Oportunidades. Nesses casos, [!DNL Marketo Measure] O oferece a capacidade de configurar uma Quantia de Receita Personalizada para [!DNL Marketo Measure] fazer referência e distribuir pelos pontos de contato de atribuição (BATs).

## Prática recomendada {#best-practice}

Ao configurar uma Quantia de Receita Personalizada, lembre-se das seguintes práticas recomendadas para garantir [!DNL Marketo Measure] os dados de atribuição são precisos e consistentes!

O que deve ser lembrado:

* Selecione o campo de receita que é preciso e utilizado para todas as Oportunidades
   * Recomendamos usar ARR ou Valor total do contrato
* Não usar um campo de fórmula
* Se estiver usando uma Quantia de Receita Personalizada para conversões de moeda, a variável [!UICONTROL Marketo Mede Várias Moedas] em vez disso, é o método preferido.
   * O [!DNL Marketo Measure] A funcionalidade de várias moedas faz referência às taxas de conversão estabelecidas em [!DNL Salesforce] para melhor garantir o alinhamento entre conversões de moeda. Isso permite que você continue utilizando o &quot;Valor&quot; padrão (Padrão SFDC) ou qualquer outro campo Quantia personalizada relacionado ao [!DNL Salesforce] taxas de conversão.
* Se você atualizar o campo Quantia que deseja [!DNL Marketo Measure] para fazer referência, use o Data Loader para atualizar Oportunidades passadas para garantir que seus dados de receita sejam consistentes e que o campo correto seja preenchido por meio do workflow

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Revisar sua configuração de valor de receita anualmente garantirá que seus dados de atribuição sejam precisos e alinhados com o resto dos relatórios de receita de sua organização.

Se estiver utilizando uma Quantia de Receita Personalizada, verifique a configuração de receita da seguinte maneira.

* Em seu [!DNL Marketo Measure] , vá para o[!UICONTROL Oportunidades]&quot; em CRM
* Identifique o [!UICONTROL Valor da Oportunidade Personalizada] Campo, aqui está o seu [!UICONTROL API de valor de receita personalizada] deve ser listado
* Confirme se este ainda é o campo correto
* Além disso, [!DNL Salesforce] O administrador confirma que o fluxo de trabalho Quantia de receita personalizada em [!DNL Salesforce] ainda está em execução

Além de uma revisão anual, algumas alterações organizacionais podem sinalizar a necessidade de revisar a configuração do valor da receita..

* Volume de negócios em sua equipe de marketing
* Alterações no campo Receita personalizada
* Alterações de organização na forma como a receita é relatada

>[!MORELIKETHIS]
>
>* [Usando um Campo de Quantia de Receita Personalizada](/help/advanced-marketo-measure-features/custom-revenue-amount/using-a-custom-revenue-amount-field.md)
>* [Usando o Carregador de Dados para Atualizar o Campo de Quantia Personalizada](/help/advanced-marketo-measure-features/custom-revenue-amount/using-data-loader-to-update-marketo-measure-custom-amount-field.md)
>* [Visão Geral da Multimoeda](/help/advanced-marketo-measure-features/multi-currency/overview.md)
>* [Configurações de várias moedas](/help/advanced-marketo-measure-features/multi-currency/settings.md)

