---
unique-page-id: 18874656
description: Filtros - [!DNL Marketo Measure] - Documentação do produto
title: Filtros
exl-id: 249266c8-9ff5-4895-979c-4f377423d031
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '1290'
ht-degree: 3%

---

# Filtros {#filters}

Saiba mais sobre os diferentes filtros disponíveis no Discover e como você pode usá-los.

>[!NOTE]
>
>Os Operadores &quot;corresponde a um atributo de usuário&quot; e &quot;corresponde (avançado)&quot; nos filtros do Discover são meramente administrativos e podem ser ignorados com segurança.

**ID da conta**

_Usado em: Marketing baseado em conta_

Selecione ou cole em uma série de IDs de conta do CRM para filtrar os resultados. As IDs de conta fornecem mais exclusividade do que o Nome da conta, pois os nomes podem ser os mesmos.

**Nome da conta**

_Usado em: Marketing baseado em conta_

Selecione ou cole em uma série de Nomes de Conta no CRM para filtrar os resultados. As cadeias de caracteres podem ter duplicatas, portanto, é possível ter vários &quot;[!DNL Marketo Measure]&quot; por exemplo. Se uma única conta for necessária nesse caso, use o filtro ID da conta .

**Modelo de atribuição**

_Usado em: Visão geral, gasto de marketing, ROI de anúncios, Marketing baseado em conta, Tráfego da Web, OCM, Mídia paga, Marketing de conteúdo, Passport_

Escolha um modelo de atribuição único para aplicar ao quadro: Primeiro contato, contato com a criação de clientes potenciais, forma de U, forma de W, caminho completo ou modelo personalizado. Caminho completo e Modelo personalizado não estão disponíveis em todos os níveis.

**Campanha**

_Usado em: Visão geral, crescimento, ROI de anúncios, Tráfego da Web, OCM, Mídia paga, Marketing de conteúdo, Passport_

Filtre o quadro com um ou vários nomes de campanha. Os operadores dão ao filtro flexibilidade adicional, como o uso dos operadores &quot;contém&quot; ou &quot;começa com&quot;. Se um filtro Canal ou Subcanal tiver sido aplicado, a lista de campanhas exibidas será um subconjunto dos filtros aplicados.

**Categoria 1-10**

_Usado em: Visão geral, crescimento, ROI de anúncios, COM, Mídia paga, Marketing de conteúdo, Velocity, Snapshot, Funil de coorte, Passport_

Aplique filtros de segmento ao quadro, usando as Categorias e os segmentos criados na [!DNL Marketo Measure] Configurações. A lista de Categorias criadas será exibida no menu de filtros; portanto, se nenhuma Categoria tiver sido configurada, não haverá filtros de Categoria no menu. As Categorias de segmentos não estão disponíveis em todos os níveis, e o número de Categorias disponíveis também varia por nível.

**Canal**

_Usado em: Visão geral, crescimento, gastos com marketing, ROI de anúncios, Tráfego da Web, OCM, Mídia paga, Marketing de conteúdo, Velocity, Passport_

Filtre o quadro por um único ou vários canais. Os operadores dão ao filtro flexibilidade adicional, como o uso dos operadores &quot;contém&quot; ou &quot;começa com&quot;. Quando um canal é inserido, os valores mostrados nos filtros Subcanal e Campanha são do filtro de subcanal aplicado.

**Estágio de coorte**

_Usado em: Funil de coorte_

Selecione o estágio do qual deseja exibir um coorte. O estágio selecionado aparecerá na parte superior do funil, com todas as conversões fluindo do topo.

**Data**

_Usado em: Visão geral, crescimento, gastos com marketing, ROI de anúncios, Marketing baseado em conta, Tráfego da Web, COM, Mídia paga, Marketing de conteúdo, Velocity, instantâneo, Funil de coorte, Passport_

Selecione um intervalo de datas para filtrar os dados nos quadros, usando operadores de data flexíveis, como &quot;está no intervalo&quot;, &quot;está no ano&quot; ou &quot;está antes&quot;, por exemplo. A exceção é Snapshot, onde você selecionará uma única data para exibir um instantâneo dos dados.

**Tipo de data**

_Usado em: Visão geral, crescimento, gastos com marketing, ROI de anúncios, Marketing baseado em conta, Tráfego da Web, OCM, Mídia paga, Marketing de conteúdo, Passport_

Escolha o tipo de data que deseja usar vinculado ao filtro Data . O tipo de data padrão varia de acordo com a placa. Data do ponto de contato refere-se à data em que a atividade de marketing ocorreu, Data de criação é a data em que o lead ou contato ou oportunidade foi criado no CRM, e Data de fechamento é a data em que a Oportunidade foi fechada.

**Dimensão**

_Usado em: Mídia paga_

O Dimension é semelhante à função Agrupar por , exceto que é usado no quadro Mídia paga de uma maneira um pouco diferente. Em vez de empilhar um gráfico, o Dimension altera as linhas do gráfico Visão geral , bem como o objeto à esquerda nas tabelas.

![](assets/1.png)

Por padrão, o Dimension é definido como Subcanal e pode ser alterado para:

* Nenhum: Exibe tudo em agregação sem detalhamento
* Canal: Lista os dados por canal de marketing
* Subcanal: Lista os dados por subcanal de marketing
* Campanha: Lista os dados por campanha
* Conta: Lista os dados por conta. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Grupo de anúncios: Lista os dados por grupo de publicidade. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Anúncio: Lista os dados por anúncio. Aplica-se a anúncios em Doubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Anunciante: Lista os dados por anunciante. Aplica-se ao anunciante do Doubleclick, portanto, se o Doubleclick não for usado, nenhum resultado será exibido
* Criativo: Lista os dados por criativo. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Palavra-chave: Lista os dados por palavra-chave. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Disposição: Lista os dados por posicionamento. Aplica-se a disposições de Dubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Site: Lista os dados por site. Aplica-se a sites de Dubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido

**Agrupar por**

_Usado em: Visão Geral, Crescimento, Gastos De Marketing, Marketing Baseado Em Conta, Tráfego Da Web, OCM_

Ajusta os gráficos para alterar a dimensão que está sendo empilhada e agrupada. Por padrão, Agrupar por está definido como Canal e pode ser alterado para:

* Nenhum: Exibe tudo em agregação sem detalhamento
* Canal: Agrupa os dados por canal de marketing
* Subcanal: Agrupa os dados por subcanal de marketing
* Campanha: Agrupa os dados por campanha
* Conta: Agrupa os dados por conta. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Grupo de anúncios: Agrupa os dados por grupo de publicidade. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Anúncio: Agrupa os dados por anúncio. Aplica-se a anúncios em Doubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Anunciante: Agrupa os dados por anunciante. Aplica-se ao anunciante do Doubleclick, portanto, se o Doubleclick não for usado, nenhum resultado será exibido
* Criativo: Agrupa os dados por criativo. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Palavra-chave: Agrupa os dados por palavra-chave. Aplica-se a [!DNL AdWords], [!DNL Bing]e [!DNL Facebook].
* Disposição: Agrupa os dados por posicionamento. Aplica-se a disposições de Dubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Site: Agrupa os dados por site. Aplica-se a sites de Dubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido

![](assets/2.png)

**Página**

_Usado em: Marketing de conteúdo_

Analise o desempenho de uma única página de aterrissagem ou, talvez, páginas de aterrissagem que contenham uma determinada palavra, como &quot;blog&quot;.

**Métrica**

_Usado em: Visão geral, Tráfego da Web, OCM, Mídia paga, Marketing de conteúdo_

Há dois seletores de métricas diferentes que são usados em diferentes quadros. O seletor de métrica altera a medida em um gráfico, para que você possa alternar entre a exibição da receita ou do gasto ou impressões, por exemplo.

Nos quadros Visão geral e OCM, há uma lista reduzida de valores relacionados às métricas de ROI:

* Receita
* Gastos
* Negócios
* Receita de planejamento
* Oportunidades
* Contatos
* Leads

Nas placas de Tráfego da Web, Mídia paga e Marketing de conteúdo, há uma lista mais longa de valores relacionados às métricas de ROI e funil:

* Receita
* Gastos
* Negócios
* Receita de planejamento
* Oportunidades
* Contatos
* Leads
* Cliques
* impressões
* Visitas
* Visitas Exclusivas
* Visualizações de página
* Formulários

**Estágio**

_Usado em: Velocity_

Por padrão, o quadro Velocity exibe os horários para todos os estágios, mas para fazer drill-in em um estágio específico, use o filtro Estágio para selecionar o estágio.

**Subcanal**

_Usado em: Visão geral, crescimento, gastos com marketing, ROI de anúncios, Tráfego da Web, OCM, Mídia paga, Marketing de conteúdo, Passport_

Filtre o quadro por um único ou vários subcanais. Os operadores dão ao filtro flexibilidade adicional, como o uso dos operadores &quot;contém&quot; ou &quot;começa com&quot;. Se um filtro Canal tiver sido aplicado, a lista de subcanais que aparece será um subconjunto dos filtros aplicados. Quando um subcanal é inserido, os valores mostrados nos Filtros de campanha serão do filtro de subcanal aplicado.

**URL**

_Usado em: Tráfego da Web_

Analise o tráfego de um único URL ou, talvez, URLs que contenham uma determinada palavra, como &quot;produto&quot;.

**Obtido**

_Usado em: Velocity_

Por padrão, o painel Velocity relata apenas oportunidades vencidas fechadas, mas ajuste esse filtro para visualizar a velocidade de oportunidades vencidas ou perdidas fechadas.
