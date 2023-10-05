---
unique-page-id: 18874656
description: Filtros - [!DNL Marketo Measure] - Documentação do produto
title: Filtros
exl-id: 249266c8-9ff5-4895-979c-4f377423d031
feature: Reporting
source-git-commit: e24e01a03218252c06c9a776e0519afbddbe2b8c
workflow-type: tm+mt
source-wordcount: '1290'
ht-degree: 3%

---

# Filtros {#filters}

Saiba mais sobre os diferentes filtros disponíveis para você no Discover e como usá-los.

>[!NOTE]
>
>Os operadores &quot;corresponde a um atributo do usuário&quot; e &quot;corresponde (avançado)&quot; em seus filtros do Discover são puramente administrativos e podem ser ignorados com segurança.

**ID da conta**

_Usado em: Marketing baseado em conta_

Selecione ou cole uma série de IDs de conta do CRM para filtrar os resultados. As IDs de conta fornecem mais exclusividade do que o Nome da conta, pois os nomes podem ser iguais.

**Nome da conta**

_Usado em: Marketing baseado em conta_

Selecione ou cole uma série de Nomes de conta no CRM para filtrar os resultados. As cadeias de caracteres podem ter duplicatas, portanto, é possível ter vários &quot;[!DNL Marketo Measure]Contas do &quot;, por exemplo. Se uma única conta for necessária nesse caso, use o filtro Account Id.

**Modelo de atribuição**

_Usado em: Visão geral, Gastos com marketing, ROI de anúncios, Marketing baseado em conta, Tráfego da Web, CMO, Mídia paga, Marketing de conteúdo, Passport_

Escolha um único modelo de atribuição a ser aplicado ao quadro: Primeiro contato, Toque de criação de lead, Forma de U, Forma de W, Caminho completo ou Modelo personalizado. O Caminho completo e o Modelo personalizado não estão disponíveis em todos os níveis.

**Campanha**

_Usado em: Visão geral, Crescimento, ROI de anúncios, Tráfego da Web, CMO, Mídia paga, Marketing de conteúdo, Passport_

Filtre o quadro por um ou vários nomes de campanha. Os operadores fornecem ao filtro flexibilidade adicional, como o uso dos operadores &quot;contém&quot; ou &quot;começa com&quot;. Se um filtro Canal ou Subcanal tiver sido aplicado, a lista de campanhas exibidas será um subconjunto dos filtros aplicados.

**Categoria 1-10**

_Usado em: Visão geral, Crescimento, ROI de anúncios, CMO, Mídia paga, Marketing de conteúdo, Velocity, Instantâneo, Funil de coorte, Passport_

Aplique filtros de segmento ao quadro, usando as Categorias e os Segmentos criados na [!DNL Marketo Measure] Configurações. A lista de Categorias que você criou aparecerá no menu de filtros, então se nenhuma Categoria foi configurada, não haverá filtros de Categoria no menu. As Categorias de segmento não estão disponíveis em todos os níveis, e o número de Categorias disponíveis também varia por nível.

**Canal**

_Usado em: Visão geral, Crescimento, Gastos com marketing, ROI de anúncios, Tráfego da Web, CMO, Mídia paga, Marketing de conteúdo, Velocity, Passport_

Filtre a placa por um único ou vários canais. Os operadores fornecem ao filtro flexibilidade adicional, como o uso dos operadores &quot;contém&quot; ou &quot;começa com&quot;. Depois que um canal é inserido, os valores mostrados nos filtros Subcanal e Campanha são do filtro de subcanal aplicado.

**Estágio de coorte**

_Usado em: Funil de coorte_

Selecione o estágio do qual você deseja exibir uma coorte. O estágio selecionado aparecerá na parte superior do funil, com todas as conversões fluindo da parte superior.

**Data**

_Usado em: Visão geral, Crescimento, Gastos com marketing, ROI de anúncios, Marketing baseado em conta, Tráfego da Web, CMO, Mídia paga, Marketing de conteúdo, Velocity, Instantâneo, Funil de coorte, Passport_

Selecione um intervalo de datas para filtrar os dados nos quadros, usando operadores de data flexíveis, como &quot;está no intervalo&quot;, &quot;está no ano&quot; ou &quot;está antes&quot;, por exemplo. A exceção é Instantâneo, onde você selecionará uma única data para visualizar um instantâneo dos dados.

**Tipo de data**

_Usado em: Visão geral, Crescimento, Gastos com marketing, ROI de anúncios, Marketing baseado em conta, Tráfego da Web, CMO, Mídia paga, Marketing de conteúdo, Passport_

Escolha o tipo de data que deseja usar, vinculado ao filtro Data. O tipo de data padrão varia por quadro. A data do ponto de contato refere-se à data em que a atividade de marketing ocorreu, a data de criação é a data em que o lead ou contato ou a oportunidade foi criado no CRM e a data de fechamento é a data em que a oportunidade foi fechada.

**Dimensão**

_Usado em: Mídia paga_

O Dimension é semelhante à função Agrupar por, exceto que é usado na placa de Mídia paga de uma maneira ligeiramente diferente. Em vez de empilhar um gráfico, o Dimension altera as linhas do gráfico Visão geral, bem como o objeto à esquerda nas tabelas.

![](assets/1.png)

Por padrão, o Dimension está definido como Subcanal e pode ser alterado para:

* Nenhum: exibe tudo na agregação sem detalhamento
* Canal: lista os dados por canal de marketing
* Subcanal: lista os dados por subcanal de marketing
* Campanha: lista os dados por campanha
* Conta: lista os dados por conta. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Grupo de publicidade: lista os dados por grupo de publicidade. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Ad: lista os dados por anúncio. Aplicável aos anúncios Doubleclick; portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Anunciante: lista os dados por anunciante. Aplicável ao anunciante Doubleclick; portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Creative: lista os dados por creative. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Palavra-chave: lista os dados por palavra-chave. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Posicionamento: lista os dados por posicionamento. Aplica-se a inserções de Doubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Site: lista os dados por site. Aplica-se a sites Doubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido

**Agrupar por**

_Usado em: Visão geral, Crescimento, Gastos com marketing, Marketing baseado em conta, Tráfego da Web, CMO_

Ajusta os gráficos para alterar a dimensão que está sendo empilhada e agrupada. Por padrão, Agrupar por está definido como Canal e pode ser alterado para:

* Nenhum: exibe tudo na agregação sem detalhamento
* Canal: agrupa os dados por canal de marketing
* Subcanal: agrupa os dados por subcanal de marketing
* Campanha: agrupa os dados por campanha
* Conta: agrupa os dados por conta. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Grupo de anúncios: agrupa os dados por grupo de anúncios. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Anúncio: agrupa os dados por anúncio. Aplicável aos anúncios Doubleclick; portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Anunciante: agrupa os dados por anunciante. Aplicável ao anunciante Doubleclick; portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Creative: agrupa os dados por creative. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Palavra-chave: agrupa os dados por palavra-chave. Aplicável a [!DNL AdWords], [!DNL Bing], e [!DNL Facebook].
* Posicionamento: agrupa os dados por posicionamento. Aplica-se a inserções de Doubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido
* Site: agrupa os dados por site. Aplica-se a sites Doubleclick, portanto, se Doubleclick não for usado, nenhum resultado será exibido

![](assets/2.png)

**Página de destino**

_Usado em: Marketing de conteúdo_

Analise detalhadamente o desempenho de uma única landing page ou talvez de páginas de aterrissagem que contenham uma determinada palavra, como &quot;blog&quot;.

**Métrica**

_Usado em: Visão geral, Tráfego da Web, CMO, Mídia paga, Marketing de conteúdo_

Há dois seletores de métrica diferentes que são usados em painéis diferentes. O seletor de métrica altera a medida em um gráfico, de modo que você possa alternar entre a exibição de receita ou gasto ou impressões, por exemplo.

Nas placas Visão geral e CMO, há uma lista reduzida de valores relacionados às métricas de ROI:

* Receita
* Gastos
* Negócios
* Receita de planejamento
* Oportunidades
* Contatos
* Leads

Nas placas de Tráfego da Web, Mídia paga e Marketing de conteúdo, há uma lista maior de valores relacionados às métricas de ROI e funil:

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

Por padrão, o quadro Velocity exibe os horários de todos os estágios, mas para fazer o drill-in para um estágio específico, use o filtro Estágio para selecionar o estágio.

**Subcanal**

_Usado em: Visão geral, Crescimento, Gastos com marketing, ROI de anúncios, Tráfego da Web, CMO, Mídia paga, Marketing de conteúdo, Passport_

Filtre a placa por um único ou vários subcanais. Os operadores fornecem ao filtro flexibilidade adicional, como o uso dos operadores &quot;contém&quot; ou &quot;começa com&quot;. Se um filtro Canal tiver sido aplicado, a lista de subcanais exibida será um subconjunto dos filtros aplicados. Depois que um subcanal é inserido, os valores mostrados nos filtros do Campaign são do filtro de subcanal aplicado.

**URL**

_Usado em: Tráfego da Web_

Detalhe o tráfego de um único URL, ou talvez URLs que contenham uma determinada palavra, como &quot;produto&quot;.

**Obtido**

_Usado em: Velocity_

Por padrão, o quadro Velocity relata apenas as oportunidades ganhas fechadas, mas ajusta esse filtro para observar a velocidade das oportunidades ganhas fechadas ou perdidas fechadas.
