---
unique-page-id: 18874558
description: Estágios e Pontos de Contato de Bumerangue - [!DNL Marketo Measure]
title: Estágios de bumerangue e touchpoints
exl-id: e58169a3-3637-4878-8a0e-1920d873ff52
feature: Boomerang, Touchpoints
source-git-commit: ea113b02b910fbc894311200aff83286636d4b32
workflow-type: tm+mt
source-wordcount: '723'
ht-degree: 1%

---

# Estágios de bumerangue e touchpoints {#boomerang-stages-and-touchpoints}

>[!AVAILABILITY]
>
>O recurso Boomerang é ativado somente para clientes de Nível 2 e 3. Para solicitar uma camada de conta mais alta, entre em contato com a Equipe de conta do Adobe (seu gerente de conta).

[!DNL Marketo Measure] lançou o recurso Estágio de Bumerangue! O recurso Estágio Boomerang foi criado para oferecer maior visibilidade da jornada do cliente para [!DNL Marketo Measure] clientes com longos ciclos de vendas. Esse recurso permite que os profissionais de marketing criem pontos de contato para todas as transições de estágio que ocorrem na jornada de oportunidade, como quando um MQLs de contato é movido para SAL e, em seguida, reverte para o estágio MQL. Quando os contatos &quot;reentram no estágio MQL&quot; ou &quot;re-MQL&quot;, o MQL é considerado um estágio de bumerangue. O recurso Estágio de Bumerangue funciona com os Estágios Personalizados [!DNL Marketo Measure].

## O que este recurso faz {#what-this-feature-does}

* Cria um ponto de contato de &quot;bumerangue&quot; para todas as transições de estágio que ocorrem na jornada de uma oportunidade
* Rastreia transições repetidas entre qualquer estágio personalizado (por exemplo, quando um Contato MQLs, passa para SAL e, em seguida, volta para o estágio MQL)
* Permite especificar quantos e qual conjunto de transições de estágio você deseja incluir na Oportunidade (por exemplo, Os primeiros 10 MQLs OU os últimos 5 MQLs)
* Se você for um usuário de Modelo personalizado, poderá determinar a ponderação de atribuição e o crédito em porcentagem que gostaria de alocar para cada um desses estágios (por exemplo, designar peso de atribuição para a primeira ou última ocorrência de MQL ou distribuir peso de atribuição uniformemente entre todas as ocorrências)

>[!NOTE]
>
>[Instruções sobre como configurar Estágios de Bumerangue](/help/advanced-marketo-measure-features/boomerang/setting-up-boomerang-stages.md).

## Como são os estágios e pontos de contato do bumerangue no seu CRM {#what-boomerang-stages-and-touchpoints-look-like-in-your-crm}

Sem os estágios de Bumerangue (o &quot;antes&quot;), você verá apenas o MQL mais recente ou o ponto de contato SQL mais recente associado a um registro de lead/contato.

![](assets/1.png)

Com Estágios de bumerangue e pontos de contato, você vê pontos de contato que ocorrem para cada transição de estágio. A convenção de nomenclatura para esses pontos de contato de bumerangue é:

**[Nome do Estágio]-00.**

Usando o exemplo abaixo, essa conta [!DNL Marketo Measure] incluiu MQL e SQL em seus estágios de bumerangue e optou por exibir 2 pontos de contato de bumerangue por estágio.

![](assets/2.png)

**MQL-01** é a primeira transição de estágio MQL.

O valor numérico na posição de ponto de contato indica a ordem em que ocorreu a transição de estágio. O último ponto de contato de bumerangue deve ser carimbado como:

MQL-02 **(Último)**

## Como os estágios de bumerangue alteram seus dados existentes {#how-boomerang-stages-change-your-existing-data}

Impacto dos estágios de bumerangue:

**Atribuição por canal**

* Como [!DNL Boomerang Stages] cria mais pontos de contato, isso altera a forma como a atribuição é distribuída entre os pontos de contato que existem atualmente em seus dados. Como resultado, isso pode significar que os valores de receita são alterados entre canais de marketing. Leve isso em consideração antes de implementar o [!DNL Boomerang stages], ou entre em contato com seu gerente de conta para obter mais informações.

**Qualquer relatório que use &quot;é igual a [Posição do Ponto de Contato]&quot;**

* Os estágios de bumerangue introduzem novas posições de ponto de contato para seus dados. [!DNL Marketo Measure] está alterando o formato da Posição do Ponto de Contato para incluir a ocorrência do estágio, como &quot;MQL-01&quot; ou &quot;MQL-05 (Last)&quot;. Usando este exemplo, os estágios de bumerangue afetam todos os relatórios que estão usando &quot;A posição do ponto de contato é igual ao MQL&quot;. Para ajustar esses relatórios, o filtro deve usar o operador &quot;contém&quot;.

## Perguntas frequentes {#faq}

**Quantos estágios de bumerangue posso incluir no meu modelo de atribuição?**

É possível selecionar até 15 estágios.

**P: Quantos pontos de contato de &quot;bumerangue&quot; posso ter por estágio?**

Você pode selecionar até dez pontos de contato de bumerangue por estágio.

**P: Por que há um limite de dez bumerangues por estágio?**

[!DNL Marketo Measure] precisa colocar um limite no número de estágios para manter os tempos de processamento sob controle. Se você optar por incluir todos os 15 estágios do bumerangue no modelo de atribuição e 10 pontos de contato do bumerangue por estágio, poderá ter mais de 150 pontos de contato por registro de lead/contato.

**P: Eu tenho Data Warehouse. Obtenho todos os dados ou o limite de Estágios de Bumerangue também se aplica a mim?**

O limite se aplica a Datas Warehouse e CRMs devido aos limites de processamento que [!DNL Marketo Measure] tem em vigor. O Data Warehouse também verá o limite de dez pontos de contato por estágio.

**P: Qual é o benefício de usar Estágios de Bumerangue com Modelagem Personalizada?**

Usar os estágios [!UICONTROL Bumerangue] com modelagem personalizada permite atribuir ponderação de atribuição aos pontos de contato [!UICONTROL Bumerangue], que aloca crédito de receita a esses estágios.

Sem a modelagem personalizada, o [!DNL Marketo Measure] cria pontos de contato para cada bumerangue e transição de estágio, mas não atribui nenhum crédito de atribuição a esses pontos de contato. Os únicos pontos de contato de bumerangue que recebem créditos de atribuição são de pontos de contato de envio. Sem um modelo personalizado, [!DNL Boomerang] pontos de contato são considerados o mesmo que um &quot;contato intermediário&quot; e recebem crédito de atribuição de acordo.
