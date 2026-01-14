---
description: Orientação de cenários do estágio Boomerang para usuários do Marketo Measure
title: Cenários de estágio de bumerangue
exl-id: 150db070-eef5-4741-845c-775ab4034ead
feature: Boomerang
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '1776'
ht-degree: 0%

---

# Cenários de estágio de bumerangue {#boomerang-stage-scenarios}

>[!AVAILABILITY]
>
>O recurso Boomerang é ativado somente para clientes de Nível 2 e 3. Para solicitar uma camada de conta mais alta, entre em contato com a Equipe de conta da Adobe (seu gerente de conta).

Abaixo estão alguns exemplos de cenários de Estágio de Bumerangue para fornecer um entendimento de como [!DNL Marketo Measure] cria pontos de contato em cada situação.

## Cenários de lead único {#single-lead-scenarios}

**Cenário 1: pontos de contato de bumerangue padrão para um cliente potencial**

Este é o mais simples cenário de Bumerangue. A linha superior (rotulada Lead 1) representa a jornada individual dos Leads e como seus pontos de contato aparecem no registro de Lead. A linha inferior (rotulada Oportunidade) exibe como os pontos de contato dos clientes potenciais se traduzem na Oportunidade. A progressão dos pontos de contato é explicada em ocorrência cronológica, da esquerda para a direita.

Neste cenário, um cliente optou por ter seus estágios de **MQL** e **SQL** rastreados com Bumerangues. Cada posição de ponto de contato do Boomerang é rotulada com o estágio e o número em que ocorre (MQL-01, SQL-01, MQL-02). O último ponto de contato de bumerangue para esse estágio tem &quot;(Último)&quot; na posição de ponto de contato.

O cliente em potencial 1 é convertido em um Contato com uma Oportunidade, que é considerado o contato do OC.

![](assets/boomerang-boomerang-18.png)

**Cenário 2: pontos de contato de bumerangue E estágios personalizados para um cliente potencial**

Neste cenário, um cliente optou por rastrear apenas o **estágio SQL** com pontos de contato de bumerangue. Os estágios MQL e SAL ainda estão sendo rastreados, mas com o recurso Estágio Personalizado [!DNL Marketo Measure].

![](assets/boomerang-boomerang-19.png)

Observe que a posição do ponto de contato MQL não é rotulada com um número. Isso ocorre porque ele não foi selecionado para ser rastreado com pontos de contato do Boomerang. Ao criar pontos de contato para estágios incluídos no modelo personalizado, mas que não são rastreados com o Boomerang, [!DNL Marketo Measure] leva a última ocorrência desse estágio.

Para o estágio SAL, [!DNL Marketo Measure] ignora as duas primeiras ocorrências deste estágio. [!DNL Marketo Measure] cria apenas um ponto de contato SAL para a ocorrência _last_. No exemplo acima, isso acontece antes do ponto de contato do OC.

O estágio SQL está sendo rastreado com pontos de contato do Boomerang e três pontos de contato foram criados e rotulados de acordo.

O cliente em potencial 1 é convertido em um Contato com uma Oportunidade, que é considerado o contato do OC.

**Cenário 3: quando os clientes em potencial não atingem/ignoram um estágio**

Esse cenário usa os mesmos critérios do cenário 2. Um cliente optou por rastrear apenas o estágio SQL com pontos de contato de bumerangue. O MQL e o SAL ainda estão sendo rastreados, mas com o recurso Estágio personalizado [!DNL Marketo Measure].

![](assets/boomerang-boomerang-20.png)

Nesse cenário, o lead nunca faz a transição para o estágio SAL. Ele se converte em um Contato antes de atingir o estágio SAL, essencialmente &quot;ignorando&quot; o estágio SAL. Nessa situação, [!DNL Marketo Measure] presume que o SAL ocorre com o ponto de contato do OC, e ambas as posições do SAL e do OC aparecerão no mesmo ponto de contato.

O cliente em potencial 1 é convertido em um Contato com uma Oportunidade, que é considerado o contato do OC.

## Cenários com Vários Clientes Potenciais {#scenarios-with-multiple-leads}

Os cenários a seguir são onde os Estágios de bumerangue podem se tornar mais complicados, já que estamos observando como vários Leads podem influenciar a jornada de oportunidade.

A linha superior (rotulada Lead 1, em azul) representa a jornada individual dos Leads e como seus pontos de contato aparecem no registro de Lead. O mesmo se aplica ao chumbo 2 (em rosa) e ao chumbo 3 (em laranja). A linha inferior (rotulada Oportunidade) exibe como os pontos de contato desses Clientes potenciais se traduzem na Oportunidade. A progressão dos pontos de contato é explicada em ocorrência cronológica, da esquerda para a direita.

**Cenário 1: [!UICONTROL Três clientes em potencial com Oportunidade]**

Neste cenário, um cliente optou por rastrear os **estágios MQL** e **SAL** com pontos de contato de bumerangue. O estágio SQL está sendo rastreado pelos estágios personalizados padrão.

![](assets/boomerang-boomerang-21.png)

Os pontos de contato FT e LC na oportunidade vêm do lead 1 (azul), porque ocorreram antes do FT e LC do lead 2 (rosa). O ponto de contato da LC para o lead 2 aparecerá como um ponto de contato de &quot;Formulário&quot; na oportunidade.

O MQL-01 (Último) do Lead 2 se tornará o primeiro MQL na oportunidade. O MQL-01 do lead 1 não aparecerá como um ponto de contato na oportunidade porque o MQL do lead 2 ocorreu primeiro. No entanto, o MQL-02 e o MQL-03 do lead 1 aparecerão na oportunidade.

O estágio SQL está sendo rastreado com estágios personalizados, e não estágios de bumerangue. Mesmo que haja três ocorrências do estágio SQL entre o Lead 1 e o Lead 2, somente a última ocorrência SQL será incluída como um ponto de contato na Oportunidade.

O ponto de contato SAL-01 (Último) do lead 1 é transportado como um ponto de contato na oportunidade. O cliente em potencial 1 é convertido em um Contato com uma Oportunidade, que é considerado o contato do OC. O (último) ponto de contato SAL-01 do lead 2 será criado como um ponto de contato porque esta transição de estágio ocorreu _após_ o toque de OC.

FT, LC e MQL, SQL, pontos de contato SAL (laranja) do lead 3 ocorreram após o ponto de contato OC na oportunidade. Esses pontos de contato são incluídos na Oportunidade, mas são considerados &quot;contatos intermediários&quot;.

Quando os clientes em potencial 2 e 3 forem convertidos em Contatos, [!DNL Marketo Measure] não criará outro ponto de contato do OC porque só pode haver um estágio de criação de oportunidade.

**Cenário 2 - [!UICONTROL Três clientes em potencial com Oportunidade]**

Neste cenário, um cliente optou por rastrear os estágios de **MQL**, **SQL** e **SAL** com pontos de contato de bumerangue.

Todos os pontos de contato do lead 1 estão incluídos na oportunidade, de FT a SAL-01 (Last). O ponto de contato LC do lead 2 será incluído como um ponto de contato de formulário entre os pontos de contato LC e MQL-01 na oportunidade.

![](assets/boomerang-boomerang-22.png)

O MQL-01 (Último) do Lead 2 acaba sendo o ponto de contato MQL-04 (Último) na Oportunidade. Como esse cenário aborda várias jornadas de clientes potenciais em uma oportunidade, o posicionamento e a numeração dos pontos de contato dos clientes potenciais podem mudar quando forem traduzidos como pontos de contato na oportunidade. Da mesma forma, o SQL-01 (Último) do Lead 2 torna-se o SQL-04 (Último) no Opp. O SAL-01 (Último) do lead 2 também se torna o SAL-02 (Último) da Oportunidade.

Há apenas 2 pontos de contato SAL incluídos na oportunidade. [!DNL Marketo Measure] não tentará forçar/criar pontos de contato para transições de estágio se eles não tiverem ocorrido.

A jornada do ponto de contato do lead 3 começa pouco antes do toque do OC ocorrer, mas muito depois do toque do Lead 1 e do Lead 2 em FT e LC. Nesse caso, o FT e o LC do lead 3 aparecem como um ponto de contato de formulário na oportunidade. O cliente em potencial 1 é convertido em um Contato com uma Oportunidade, que é considerado o contato do OC.

Os toques de MQL, SQL e SAL do lead 3 ocorrem ao mesmo tempo, após o toque de OC. Como ocorreram após o ponto de contato do OC, esse ponto de contato aparecerá como um Formulário/Meio de Contato na Oportunidade em vez de uma transição de estágio de Bumerangue.

**Cenário 2a - Pontos de Contato do Boomerang de Visitas à Web**

Neste cenário, um cliente optou por rastrear os estágios de **MQL**, **SQL** e **SAL** com pontos de contato de bumerangue. Esse cenário é quase idêntico ao acima, com algumas exceções.

![](assets/boomerang-boomerang-23.png)

Todos os pontos de contato do lead 1 serão incluídos na oportunidade, de FT a SAL-01 (Last). O ponto de contato LC do lead 2 será incluído como um ponto de contato de formulário entre os pontos de contato LC e MQL-01 na oportunidade.

O MQL-01 (Última) (Visita na Web) do lead 2 não será criado como um ponto de contato no Opp. Isso ocorre porque esse ponto de contato foi uma visita da Web que ocorre após a última ocorrência do estágio SQL e não ajuda a impulsionar a Oportunidade.

O estágio do lead 1 muda para SAL e, em seguida, é convertido em um Contato com uma Oportunidade; nesse caso, as posições SAL-01 (Último) e OC são combinadas no mesmo ponto de contato.

O FT, LC de lead 3 é criado como um ponto de contato de formulário no Opp. Somente ações de preenchimento de formulário serão criadas como pontos de contato após o toque do OC. Por esse motivo, as transições de estágio SQL-01 (Último) e SAL-01 (Último) do lead dois não serão criadas como pontos de contato porque esses pontos de contato foram visitas da Web.

Os toques de MQL, SQL, SAL do lead 3 são incluídos como um ponto de contato porque esta foi uma ação de preenchimento de formulário.

**Cenário 3 - Ponderação de atribuição de bumerangue**

Neste cenário, um cliente optou por rastrear os estágios de **MQL**, **SQL** e **SAL** com pontos de contato de bumerangue.

![](assets/boomerang-boomerang-25.png)

Os pontos de contato FT e LC na oportunidade vêm do lead 1 (azul), porque ocorreram antes do FT e LC do lead 2 (rosa). O ponto de contato LC do lead 2 aparece como um ponto de contato de &quot;Formulário&quot; na oportunidade.

O MQL-01 (Último) do Lead 2 se torna o primeiro MQL na oportunidade. O MQL-01 do lead 1 não aparecerá como um ponto de contato na oportunidade porque o MQL do lead 2 ocorreu primeiro.

O SQL-01 (Último) do Lead 2 torna-se SQL-01 na Oportunidade. O SQL-01 no lead 1 não aparecerá como um ponto de contato na oportunidade porque o SQL-01 no lead 2 aconteceu primeiro.

Observe que os bumerangues do Lead 1 entre o MQL e o SQL algumas vezes antes de finalmente atingir o estágio SAL. SQL-01, MQL-02, SQL-02, MQL-03, SQL-03 _não_ serão incluídos como pontos de contato na oportunidade porque essas transições de estágio não ajudam a impulsionar a oportunidade na jornada.

O ponto de contato SAL-01 (Último) do Lead 1 é o próximo ponto de contato a ser incluído no Opp. O lead 1 converte em um contato com uma oportunidade, criando o ponto de contato do OC.

Os pontos de contato FT e LC do lead 3 e os pontos de contato MQL, SQL e SAL aparecem como um formulário que toca a oportunidade.

O (último) ponto de contato SQL-01 do lead 2 não será incluído como um ponto de contato no Opp porque ocorreu após o ponto de contato do OC. Além disso, a transição de estágio SQL do lead 2 ocorreu _após a transição de estágio SAL final_ e não ajuda a impulsionar a jornada de oportunidade.

## Cenários de oportunidade {#opportunity-scenarios}

**Cenário 1 - Contatos com Rastreamento de Oportunidade e Bumerangue**

Neste cenário, um cliente optou por rastrear as **transições dos estágios de Demonstração e Negociação** no **Contato**. Cada estágio de bumerangue pode receber até dois pontos de contato. A diferença entre as transições de estágio em um Contato e as transições de estágio em um Cliente Potencial é que as transições de estágio do Contato podem aparecer como pontos de contato do Boomerang na Oportunidade _após_ o ponto de contato do OC. Isso não é verdadeiro para transições de estágio que ocorrem no lead, pois elas aparecem como um ponto de contato de Formulário.

![](assets/boomerang-boomerang-25.png)

Neste exemplo, as transições de Estágio de Demonstração e Negociação do Contato 1 são incluídas como pontos de contato de Demonstração-01 e Negociação-01 na Oportunidade. A transição de estágio de Demonstração do Contato 2 ocorre _depois_ do Contato 1 e aparece como o ponto de contato Demo-02 (Último) na Oportunidade.

Observe que não há uma segunda transição para o estágio de Negociação; a Oportunidade salta imediatamente da Demo-02 (Último) para Fechar conquistada. Nesse caso, [!DNL Marketo Measure] incluirá a transição Negociação com o ponto de contato Won fechado.
