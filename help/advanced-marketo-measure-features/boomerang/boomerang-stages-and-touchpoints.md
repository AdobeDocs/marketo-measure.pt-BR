---
unique-page-id: 18874558
description: Estágios e pontos de contato do bumerangue - [!DNL Marketo Measure] - Documentação do produto
title: Estágios de bumerangue e touchpoints
exl-id: e58169a3-3637-4878-8a0e-1920d873ff52
source-git-commit: 01be819ccee1b3079b15a748480e9dacf6adb488
workflow-type: tm+mt
source-wordcount: '729'
ht-degree: 1%

---

# Estágios de bumerangue e touchpoints {#boomerang-stages-and-touchpoints}

>[!AVAILABILITY]
>
>O recurso Boomerang é ativado somente para clientes de Nível 3. Para solicitar uma camada de conta mais alta, entre em contato com a Equipe de conta do Adobe (seu gerente de conta).

[!DNL Marketo Measure] lançou nosso recurso Boomerang Stage! O recurso Boomerang Stage foi criado para oferecer mais visibilidade sobre a jornada do cliente para o [!DNL Marketo Measure] clientes com longos ciclos de vendas. Esse recurso permite que os profissionais de marketing criem pontos de contato para todas as transições de estágio que ocorrem na jornada de oportunidade, como quando um MQLs de contato se move para o SAL e, em seguida, reverte para o estágio MQL. Quando os contatos &quot;reentram no estágio MQL&quot; ou &quot;re-MQL&quot;, consideramos o MQL um estágio de bumerangue. O recurso Estágio Boomerang funciona junto com o [!DNL Marketo Measure] Estágios Personalizados.

## O que este recurso faz {#what-this-feature-does}

* Cria um ponto de contato de &quot;bumerangue&quot; para todas as transições de estágio que ocorrem na jornada de uma oportunidade
* Rastreia transições repetidas entre qualquer estágio personalizado (por exemplo, quando um Contato MQLs, passa para SAL e, em seguida, volta para o estágio MQL)
* Permite especificar quantos e qual conjunto de transições de estágio você deseja incluir na Oportunidade (por exemplo, Os primeiros 10 MQLs OU os últimos 5 MQLs)
* Se você for um usuário de Modelo personalizado, poderá determinar a ponderação de atribuição e o crédito em porcentagem que gostaria de alocar para cada um desses estágios (por exemplo, designar peso de atribuição para a primeira ou última ocorrência de MQL ou distribuir peso de atribuição uniformemente entre todas as ocorrências)

>[!NOTE]
>
>[Instruções sobre como configurar estágios de bumerangue](/help/advanced-marketo-measure-features/boomerang/setting-up-boomerang-stages.md).

## Como são os estágios e pontos de contato do bumerangue no seu CRM {#what-boomerang-stages-and-touchpoints-look-like-in-your-crm}

Sem os estágios de bumerangue (o &quot;antes&quot;), você só verá o MQL mais recente ou o ponto de contato SQL mais recente associado a um registro de lead/contato.

![](assets/1.png)

Com Estágios de bumerangue e pontos de contato, você verá pontos de contato que ocorrem para cada transição de estágio. A convenção de nomenclatura para esses pontos de contato de bumerangue será a seguinte:

**[Nome do estágio]-00.**

Usando o exemplo abaixo, este [!DNL Marketo Measure] A conta do incluiu MQL e SQL em seus estágios de bumerangue e optou por exibir 2 pontos de contato de bumerangue por estágio.

![](assets/2.png)

**MQL-01** é a primeira transição de estágio MQL.

O valor numérico na posição de ponto de contato denotará a ordem em que ocorreu a transição de estágio. O último ponto de contato de bumerangue deve ser carimbado como:

MQL-02 **(Último)**

## Como os estágios de bumerangue alteram seus dados existentes {#how-boomerang-stages-change-your-existing-data}

Os estágios de bumerangue afetarão:

**Atribuição por canal**

* Desde [!DNL Boomerang Stages] criará mais pontos de contato, isso mudará como a atribuição é distribuída entre os pontos de contato que existem atualmente em seus dados. Como resultado, isso pode significar que os valores de receita serão transferidos entre canais de marketing. Leve isso em consideração antes de implementar [!DNL Boomerang stages]ou entre em contato com seu gerente de conta para obter mais informações.

**Qualquer relatório que use &quot;é igual a&quot; [Posição do ponto de contato]&quot;**

* Os estágios de bumerangue introduzirão novas posições de ponto de contato para seus dados. [!DNL Marketo Measure] O está alterando o formato da Posição do ponto de contato para incluir a ocorrência do estágio, como &quot;MQL-01&quot; ou &quot;MQL-05 (Last)&quot;. Usando este exemplo, os estágios de bumerangue afetarão todos os relatórios que estiverem usando &quot;A posição do ponto de contato é igual ao MQL&quot;. Para ajustar esses relatórios, o filtro deve usar o operador &quot;contém&quot;.

## Perguntas frequentes {#faq}

**Quantos estágios de bumerangue posso incluir no meu modelo de atribuição?**

É possível selecionar até 15 estágios.

**P: Quantos pontos de contato de &quot;bumerangue&quot; posso ter por estágio?**

Você pode selecionar até 10 pontos de contato de bumerangue por estágio.

**P: Por que estamos limitados apenas a 10 bumerangues por estágio?**

[!DNL Marketo Measure] deve limitar o número de etapas, a fim de manter os tempos de processamento sob controlo. Se você optar por incluir todos os 15 estágios do bumerangue no modelo de atribuição e 10 pontos de contato do bumerangue por estágio, poderá ter mais de 150 pontos de contato por registro de lead/contato.

**P: Eu tenho Data Warehouse. Eu recebo todos os dados ou o limite dos Estágios de Bumerangue também se aplica a mim?**

O limite será aplicado à Data Warehouse e aos CRM devido aos limites de processamento que [!DNL Marketo Measure] está em vigor. O Data Warehouse também verá o limite de 10 pontos de contato por estágio.

**P: Qual é o benefício de usar estágios de bumerangue com modelagem personalizada?**

Usar [!UICONTROL Bumerangue] Estágios com modelagem personalizada permitirão atribuir peso à [!UICONTROL Bumerangue] pontos de contato, que alocarão crédito de receita a esses estágios.

Sem modelagem personalizada, [!DNL Marketo Measure] criará pontos de contato para cada transição de bumerangue e estágio, mas não atribuirá nenhum crédito de atribuição a esses pontos de contato. Os únicos pontos de contato de bumerangue que receberão créditos de atribuição são pontos de contato de envio de formulário. Sem modelo personalizado, [!DNL Boomerang] os pontos de contato são considerados o mesmo que um &quot;contato intermediário&quot; e recebem crédito de atribuição de acordo.
