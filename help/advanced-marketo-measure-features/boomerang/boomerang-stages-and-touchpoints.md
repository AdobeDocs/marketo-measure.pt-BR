---
unique-page-id: 18874558
description: Estágios e pontos de contato do bumerangue - [!DNL Marketo Measure] - Documentação do produto
title: Estágios de bumerangue e pontos de contato
exl-id: e58169a3-3637-4878-8a0e-1920d873ff52
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '705'
ht-degree: 0%

---

# Estágios de bumerangue e pontos de contato {#boomerang-stages-and-touchpoints}

[!DNL Marketo Measure] O lançou nosso recurso Boomerang Stage! O recurso Boomerang Stage foi criado para fornecer maior visibilidade à jornada do cliente para [!DNL Marketo Measure] clientes com longos ciclos de vendas. Esse recurso permite que os profissionais de marketing criem pontos de contato para todas as transições de estágio que ocorrem na jornada da Oportunidade, como quando um MQL de contato é movido para SAL e, em seguida, reverte para o estágio MQL. Quando os contatos &quot;entram novamente no estágio MQL&quot; ou &quot;reMQL&quot;, consideramos o MQL como um estágio de boomerang. O recurso de Estágio do Boomerang funciona ao lado do [!DNL Marketo Measure] Estágios personalizados.

## O que esse recurso faz {#what-this-feature-does}

* Cria um ponto de contato &quot;boomerang&quot; para todas as transições de estágio que ocorrem na jornada de uma oportunidade
* Rastreia transições repetidas entre qualquer estágio personalizado (por exemplo, quando um MQL de contato é movido para SAL e, em seguida, retorna para o estágio MQL)
* Permite especificar quantos e qual conjunto de transições de estágio você deseja incluir na Oportunidade (por exemplo, Os primeiros 10 MQLs OU os últimos 5 MQLs)
* Se você for um usuário do Modelo personalizado, é possível determinar a ponderação de atribuição e o crédito percentual que gostaria de alocar para cada um desses estágios (por exemplo, designar o peso da atribuição à primeira ou última ocorrência de MQL ou distribuir a ponderação da atribuição uniformemente entre todas as ocorrências)

>[!NOTE]
>
>[Instruções sobre como configurar Estágios de Boomerang](/help/advanced-marketo-measure-features/boomerang/setting-up-boomerang-stages.md).

## Como são os estágios e pontos de contato do Boomerang no seu CRM {#what-boomerang-stages-and-touchpoints-look-like-in-your-crm}

Sem os estágios do Boomerang (o &quot;antes&quot;), você verá apenas o MQL mais recente ou o ponto de contato SQL mais recente associado a um registro de lead/contato.

![](assets/1.png)

Com Estágios e pontos de contato do Boomerang, você verá pontos de contato que ocorrem para cada transição de estágio. A convenção de nomenclatura para esses pontos de contato de boomerang será a seguinte:

**[Nome do palco]-00.**

Usando o exemplo abaixo, [!DNL Marketo Measure] A conta incluiu MQL e SQL em seus estágios de bumerangue e optou por exibir 2 pontos de contato de bumerangue por estágio.

![](assets/2.png)

**MQL-01** é a primeira transição de estágio MQL.

O valor numérico na posição do ponto de contato indica a ordem em que a transição do palco ocorreu. O último ponto de contato de bumerangue deve ser carimbado como:

MQL-02 **(Último)**

## Como os estágios do Boomerang alteram seus dados existentes {#how-boomerang-stages-change-your-existing-data}

Estágios de bumerangue afetarão:

**Atribuição por canal**

* Since [!DNL Boomerang Stages] criará mais pontos de contato, o que alterará a maneira como a atribuição é distribuída entre os pontos de contato que existem atualmente nos seus dados. Como resultado, isso pode significar que os valores de receita serão alterados entre os canais de marketing. Tenha isso em consideração antes de implementar [!DNL Boomerang stages]ou entre em contato com seu gerente de conta para obter mais informações.

**Qualquer relatório que use &quot;igual [Posição do ponto de contato]&quot;**

* Os estágios de bumerangue apresentarão novas posições de ponto de contato aos seus dados. [!DNL Marketo Measure] O está alterando o formato da Posição do ponto de contato para incluir a ocorrência do palco, como &quot;MQL-01&quot; ou &quot;MQL-05 (Último)&quot;. Usando este exemplo, os Estágios do Boomerang afetarão qualquer relatório que esteja usando &quot;A Posição do Ponto de Contato é igual ao MQL&quot;. Para ajustar esses relatórios, o filtro deve estar usando o operador &quot;contains&quot;.

## Perguntas frequentes {#faq}

**Quantos estágios de bumerangue posso incluir no meu modelo de atribuição?**

É possível selecionar até 15 estágios.

**P: Quantos pontos de contato de &quot;bumerangue&quot; eu posso ter por palco?**

Você pode selecionar até 10 pontos de contato de bumerangue por palco.

**P: Por que estamos limitados a 10 bumerangue por estágio?**

[!DNL Marketo Measure] tem de limitar o número de fases, a fim de manter os tempos de transformação sob controlo. Se você optar por incluir todos os 15 Estágios de Boomerang em seu modelo de atribuição e 10 pontos de contato de boomerang por estágio, você poderá ter mais de 150 pontos de contato por registro de lead/contato.

**P: Eu tenho Data Warehouse. Eu recebo todos os dados ou a tampa de Estágio do Boomerang também se aplica a mim?**

O limite será aplicado ao Data Warehouse e aos CRMs devido aos limites de processamento que [!DNL Marketo Measure] está em vigor. O Data Warehouse também verá o limite de 10 pontos de contato por estágio.

**P: Qual é o benefício de usar Estágios de Boomerang com Modelagem Personalizada?**

Usando [!UICONTROL Bomerang] Estágios com modelagem personalizada permitirão atribuir ponderação de atribuição a [!UICONTROL Bomerang] pontos de contato, que alocarão crédito de receita para esses estágios.

Sem modelagem personalizada, [!DNL Marketo Measure] O criará pontos de contato para cada boomerang e transição de palco, mas não atribuirá crédito de atribuição a esses pontos de contato. Os únicos pontos de contato de bumerangue que receberão créditos de atribuição são pontos de contato de envio de formulário. Sem modelo personalizado, [!DNL Boomerang] os pontos de contato são considerados iguais a um &quot;toque médio&quot; e recebem crédito de atribuição de acordo.
