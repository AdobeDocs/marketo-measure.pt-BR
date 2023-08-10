---
unique-page-id: 18874535
description: Transição para [!DNL Marketo Measure] do Círculo Completo - [!DNL Marketo Measure] - Documentação do produto
title: Transição para [!DNL Marketo Measure] do círculo completo
exl-id: fd471771-33e2-413a-b155-02ba6e32e10c
feature: Attribution, Fundamentals
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '639'
ht-degree: 1%

---

# Transição para[!DNL Marketo Measure]do círculo completo {#transitioning-to-marketo-measure-from-full-circle}

Fazendo a migração de Círculo Completo para [!DNL Marketo Measure]? Você não está sozinho. Estas são as maiores considerações a serem levadas em conta e as lições que aprendemos com outros clientes que fizeram a mudança.

## Rastreamento baseado em campanha versus rastreamento de várias origens {#campaign-based-tracking-vs-multi-source-tracking}

Todas as interações em [!UICONTROL Círculo completo] são rastreados por meio da associação à campanha do CRM. Com [!DNL Marketo Measure], a jornada de compra é compilada por meio de uma combinação de nossos registros de atividade de JavaScript, campanha de CRM e CRM. Pode ser complicado fazer a mudança mental de &quot;toda interação deve ser rastreada em uma campanha de CRM para que nossos relatórios de atribuição funcionem&quot; para &quot;somente esse subconjunto de interações precisa ser rastreado em uma campanha de CRM para que nossos relatórios de atribuição funcionem&quot;.

De modo geral, veja como [!DNL Marketo Measure] cria registros de ponto de contato para os principais tipos de interações:

* Preenchimentos de formulário no(s) site(s): [!DNL Marketo Measure] Javascript
* Exibições de página em seus sites: criadas por [!DNL Marketo Measure] Javascript somente se essa visualização de página levou a um marco do CRM designado (como criação de lead ou oportunidade)
* Interações offline, como conferências ou feiras de negócios: associação a campanhas CRM
* Interações digitais que ocorrem em qualquer lugar na Internet que não seja o seu site (como um webinário hospedado em um site de terceiros que gera um upload de lista): associação à campanha de CRM
* Interações com sua equipe de vendas: registros de atividade de CRM

Se você estiver familiarizado com o gerenciamento de campanhas do CRM e preferir manter os processos existentes, tudo bem. Não dói [!DNL Marketo Measure] para continuar rastreando todas as interações em campanhas CRM. Você pode projetar uma lógica que crie somente pontos de contato de um subconjunto desejado de campanhas para evitar a duplicação do ponto de contato.

## Visibilidade versus Atribuição {#visibility-vs-attribution}

Com a maioria das configurações de ciclo completo, você pode ver todas as interações que uma pessoa tem com seus esforços de marketing ou vendas. Exibições de página, visitas repetidas à página, associação em campanhas duplicadas e triplicadas — Círculo completo mostra todas elas. Se você visualizar uma página 300 vezes, o Círculo completo criará 300 campanhas duplicadas e fornecerá uma associação em cada uma delas. [!DNL Marketo Measure] não, e essa foi uma decisão de design consciente de nossa parte.

[!DNL Marketo Measure] O tem como objetivo fornecer uma história de atribuição que supera interações significativas e distribui peso entre os pontos de contato mais impactantes apropriadamente. Por exemplo, a variável [!DNL Marketo Measure] A estrutura não exibirá exibições de página (sem preenchimentos de formulário) como pontos de contato de rotina. Uma exibição de página independente provavelmente não terá impacto ao impulsionar uma jornada de compra, mas criaremos um ponto de contato se for a interação mais recente antes de um marco de CRM designado (como criação de lead ou oportunidade). Não queremos mostrar tudo a vocês. Queremos mostrar a vocês o que é importante, do ponto de vista da atribuição.

Trabalhe com o seu [!DNL Marketo Measure] rep para definir expectativas apropriadas sobre quais dados não estarão mais disponíveis para sua equipe.

## Pré-[!DNL Marketo Measure] Dados {#pre-marketo-measure-data}

A recomendação padrão é iniciar a geração de relatórios e a coleta de dados a partir do dia em que você implantou o [!DNL Marketo Measure] JavaScript à frente, e isso é o dobro para antigos clientes do Full Circle. Pense nas duas seções acima: você está acostumado a ver uma quantidade maior de dados, e está acostumado a todos esses dados provenientes dos membros da campanha de CRM. Se você optar por incluir alguns ou todos esses dados anteriores à sua [!DNL Marketo Measure] implementação, você não estará comparando maçãs com maçãs na data de implementação do JavaScript.

Dito isso, certamente entendemos que muitos clientes precisam desses dados históricos; especialmente se você tiver um ciclo de vendas mais longo (superior a 90 dias), talvez queira fornecer [!DNL Marketo Measure] visibilidade do pré-[!DNL Marketo Measure] dados. Discuta isso cuidadosamente com seu [!DNL Marketo Measure] Representante do e sempre lembre-se de que a inclinação na data de implementação pode levar ao aparecimento de melhorias ou quedas no desempenho ou engajamento do canal, bem como outras inferências potencialmente incorretas.

## Em resumo {#in-summary}

Você está em boa companhia e ajudamos vários outros clientes a lidar com essas mudanças. Trabalhe com o seu [!DNL Marketo Measure] rep para entender os impactos acima, bem como quaisquer outras preocupações que você possa ter.
