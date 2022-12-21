---
unique-page-id: 18874535
description: Transição para [!DNL Marketo Measure] de círculo completo - [!DNL Marketo Measure] - Documentação do produto
title: Transição para [!DNL Marketo Measure] de círculo completo
exl-id: fd471771-33e2-413a-b155-02ba6e32e10c
source-git-commit: 09ffdbb0b1baeed870a3145268997e63a3707c97
workflow-type: tm+mt
source-wordcount: '639'
ht-degree: 0%

---

# Transição para [!DNL Marketo Measure] de círculo completo {#transitioning-to-marketo-measure-from-full-circle}

Como mover de círculo completo para [!DNL Marketo Measure]? Você não está sozinho. Estas são as maiores considerações para ter em mente e as lições que aprendemos com outros clientes que fizeram o switch.

## Rastreamento baseado em campanha versus rastreamento de várias fontes {#campaign-based-tracking-vs-multi-source-tracking}

Todas as interações em [!UICONTROL Círculo completo] são rastreados por meio da associação à campanha do CRM. Com [!DNL Marketo Measure], a jornada de compra é compilada por meio de uma combinação de nossos registros de atividade de JavaScript, campanha de CRM e CRM. Tornar o desvio mental de &quot;todas as interações devem ser rastreadas em uma campanha CRM para que nosso relatório de atribuição funcione&quot; para &quot;somente esse subconjunto de interações precisa ser rastreado em uma campanha CRM para que nosso relatório de atribuição funcione&quot; pode ser complicado.

Em geral, veja como [!DNL Marketo Measure] O cria registros de pontos de contato para os principais tipos de interações:

* Preenchimentos de formulário em seu(s) site(s): [!DNL Marketo Measure] Javascript
* Exibições de página em seu(s) site(s): Criado por [!DNL Marketo Measure] O Javascript somente se essa exibição de página tiver conduzido um marco do CRM designado (como Criação de lead ou oportunidade)
* Interações offline, como conferências ou shows de negócios: associação de campanha CRM
* Interações digitais que acontecem em qualquer lugar na Internet que não seja seu site (como um webinar hospedado em um site de terceiros que gera um upload de lista): associação de campanha CRM
* Interações com sua equipe de vendas: Registros de atividade do CRM

Se você estiver familiarizado com o gerenciamento de campanhas do CRM e preferir manter os processos existentes em vigor, tudo bem. Não dói [!DNL Marketo Measure] para continuar rastreando todas as interações em campanhas CRM. Você pode criar uma lógica que crie apenas pontos de contato a partir de um subconjunto de campanhas desejado para evitar a duplicação de pontos de contato.

## Visibilidade x atribuição {#visibility-vs-attribution}

Com a maioria das configurações de Círculo completo, você vê todas as interações que uma pessoa tem com seus esforços de marketing ou vendas. Exibições de página, visitas repetidas à página, associação em campanhas duplicadas e triplicadas — Círculo completo supera tudo isso. Se você visualizar uma página 300 vezes, o círculo completo criará 300 campanhas duplicadas e oferecerá uma associação a cada uma delas. [!DNL Marketo Measure] não o faz, e essa foi uma decisão consciente em matéria de design da nossa parte.

[!DNL Marketo Measure] O tem o objetivo de fornecer a você uma história de atribuição que supere as interações significativas e distribua peso entre os pontos de contato mais impactantes adequadamente. Por exemplo, a variável [!DNL Marketo Measure] O framework não exibirá as exibições de página (sem preenchimentos de formulário) como pontos de contato de rotina. Uma exibição de página independente provavelmente não terá impacto sobre o avanço de uma jornada de compra, mas criaremos um ponto de contato se for a interação mais recente antes de um marco de CRM designado (como Criação de lead ou oportunidade). Não queremos mostrar tudo a você. Queremos mostrar a vocês o que importa, do ponto de vista de atribuição.

Trabalhe com seu [!DNL Marketo Measure] rep para definir expectativas apropriadas sobre quais dados não estarão mais disponíveis para a sua equipe.

## Pré-[!DNL Marketo Measure] Dados {#pre-marketo-measure-data}

A recomendação padrão é iniciar o relatório e a coleta de dados a partir do dia em que você implantou o [!DNL Marketo Measure] JavaScript em diante, e isso equivale a dobrar para antigos clientes do círculo completo. Pense nas duas seções acima: Você está acostumado a ver uma quantidade maior de dados, e está acostumado com todos esses dados provenientes da associação à campanha de CRM. Se você optar por incluir alguns ou todos esses dados de antes da [!DNL Marketo Measure] Na implementação, você não comparará as maçãs com as maçãs na data de implementação do JavaScript.

Dito isto, compreendemos certamente que muitos clientes necessitam destes dados históricos. especialmente se você tiver um ciclo de vendas mais longo (mais de 90 dias), talvez queira fornecer [!DNL Marketo Measure] visibilidade no pré-lançamento[!DNL Marketo Measure] dados. Discuta isso com cuidado com seu [!DNL Marketo Measure] e sempre lembre-se de que o desvio na data de implementação pode levar à aparência de melhorias ou declínios no desempenho ou engajamento do canal, bem como outras inferências potencialmente incorretas.

## Em resumo {#in-summary}

Você está em boa companhia e ajudamos vários outros clientes a lidar com essas alterações. Trabalhe com seu [!DNL Marketo Measure] rep para entender os impactos acima, bem como quaisquer outras preocupações que você possa ter.
