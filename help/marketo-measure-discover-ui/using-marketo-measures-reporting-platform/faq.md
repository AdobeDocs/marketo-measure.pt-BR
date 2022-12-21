---
unique-page-id: 18874660
description: Perguntas frequentes - [!DNL Marketo Measure] - Documentação do produto
title: Perguntas frequentes
exl-id: f1896bf8-2216-427e-ac3e-98d87efede76
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '1072'
ht-degree: 0%

---

# Perguntas frequentes {#faq}

[!DNL Marketo Measure Discover]: Perguntas frequentes.

**Como faço para salvar os filtros em um relatório?**

Como hoje, os resultados da consulta são salvos no URL e podem ser salvos ou compartilhados com o URL copiado.

**Como usar intervalos de datas predefinidos como Ano anterior ou Trimestre atual?**

Em vez de usar intervalos de datas predefinidos, agora adicionamos flexibilidade de datas. Você ainda pode definir Ano passado, mas tem a opção de selecionar Ano passado, que é os últimos 365 dias desde hoje ou Ano completo último, que é o último ano completo de 1/1 a 12/31. Outros bons usos do novo seletor de datas é definir um intervalo de datas relativo, que tende a fornecer uma janela de tempo em andamento para uma data em movimento.

**Como obter dados de CPL ou CPC?**

Essas métricas podem ser encontradas somente no quadro Mídia paga .

**Por que você não mostra Exibições de página no Quadro de crescimento?**

Um dos recursos do Conselho de Crescimento é que você não pode agrupar os gráficos de tendência por uma dimensão, como Canal ou Campanha. Não temos esses dados disponíveis em um nível de Exibição de página, pois as Exibições de página nem sempre têm uma fonte como Canal ou Campanha, pois elas acontecem no meio de visitas da Web. Use Mídia paga ou Tráfego da Web para exibir os dados de Exibições de página.

**Quando eu altero o agrupamento, os totais nem sempre são iguais ao mesmo valor. Por que isso ocorre?**

Os valores não existem para cada hierarquia de dados porque a hierarquia nem sempre é um fluxo de corte claro. Por exemplo, se os custos estão sendo reportados automaticamente ou importados de um provedor de anúncios, o custo total do Canal 1 pode ser de US$ 10.000, mas por campanha individual, apenas um total de US$ 5.500 foi realmente reportado, de modo que, quando o agrupamento mudar entre o Canal e o Campaign, os totais variarão.

**O que é &quot;corresponde a um atributo de usuário&quot; nos operadores de filtro?**

Os atributos do usuário são aplicados a usuários, como ID de negócios, nome ou sobrenome, mas como nossos usuários são você (nossos clientes), e não seus clientes, os atributos do usuário na verdade não podem ser usados na variável [!DNL Marketo Measure Discover] experiência. Sinta-se à vontade para ignorar esta opção. Estamos trabalhando em uma melhor experiência de filtro personalizada que removerá filtros que não se aplicam a nossos clientes.

**Por que alguns intervalos de datas padrão passam pelo primeiro do mês seguinte?**

Embora o intervalo de datas nem sempre seja intuitivo, a interface do usuário do filtro padrão tem o texto útil &quot;antes&quot; que corresponde à data final, portanto, isso deve ajudar a lembrar que a data final usada deve ser 1 dia fora do intervalo desejado.

**Qual Modelo de Atribuição é usado para Clientes Potenciais e Contatos?**

Os pontos de contato do comprador mapeados para Leads e Contatos avaliam até o toque de Criação de leads, de modo que o modelo de Primeiro contato, Criação de leads e Forma de U seja recomendado. Se você alterar o Modelo de atribuição para Forma de W ou Caminho completo, aplicamos automaticamente um modelo em Forma de U para Clientes potenciais e Contatos.

**Por que meus blocos de Visitas, Visitas únicas e Forms estão em branco no Quadro de crescimento?**

Se esses blocos forem 0 ou em branco na sua exibição, significa que os blocos não são provisionados para sua conta. Entre em contato com o Gerente de sucesso se tiver dúvidas sobre isso.

**Para Leads ao longo do tempo e Contatos ao longo do tempo, qual é a referência de contagem?**

Ele está usando as contagens de ponto de contato, distribuídas pelo Modelo de atribuição selecionado. Será o total de Leads e Contagens distribuídos ao longo do tempo. Não é uma contagem única.

**O gráfico para URLs de formulário por canal no Content Marketing mostra Visitas da Web ou Preenchimentos de formulário?**

Esses são apenas preenchimentos de formulário rastreados.

**Qual é o benefício do Discover sobre a Medida?**

[!DNL Marketo Measure Discover] O oferece funcionalidades melhores, como drill-throughs e filtros melhores, como Subcanais e Canais. Também estamos a pôr do sol a Medida em 2019.

**Por exemplo, consegui filtrar por Grupo de anúncios e Conta quando filtrado em contas de anúncios - como posso ver isso no Discover?**

Isso só estará disponível com o quadro Mídia paga .

**Como o Funil de Coorte é diferente do Funil de Passport?**

O funil de coorte permite que você verifique a taxa de conversão do funil de vendas, avaliando o impacto entre os palcos. Você pode selecionar o estágio que deseja medir usando os filtros, o que permitirá visualizar a taxa de conversão desse estágio para todos os estágios subsequentes. O Conselho de Passaportes mostra todos os Clientes Potenciais/Contatos e Oportunidades que passaram por cada estágio de pipeline dentro de um determinado período de tempo.

**Como é determinado o conteúdo no quadro Mídia paga?**

Em cada um dos blocos de placa, adicionamos um filtro para incluir apenas dados nos quais temos um Provedor de anúncios conhecido do Facebook, Google, Bing, LinkedIn ou Doubleclick, já que nossa integração nos permite obter os dados de anúncio dessas fontes. Além disso, adicionamos um nome difuso correspondente a Canais e Subcanais para Exibição, Pesquisa paga, Social paga, PPC, SEM, Móvel pago, Twitter pago, Adroll, Terminus, Lógica de Madison, Madison Logic e Demandbase.

**Qual é a diferença entre Visitas e Visitas únicas?**

Visitas únicas são um subconjunto de Visitas. Enquanto Visitas são uma contagem de todas as visitas ao site, Visitas únicas são cookies exclusivos dessas visitas ao site. Uma pessoa pode contabilizar várias visitas exclusivas se ela retornar com um identificador de cookie diferente.

**O ponto de contato conta a contagem de pontos de contato do comprador ou de pontos de contato de atribuição do comprador?**

É uma contagem do que consideramos pontos de contato &quot;brutos&quot;, ou &quot;pontos de contato do usuário&quot;, onde é um agregado de ambos, além de toques que não resultaram em um ponto de contato com o Lead/Contato ou Oportunidade.

**Quando eu filtro por URL, por que os blocos de Custo por mostram apenas $0,00?**

Esse é o comportamento esperado devido ao fato de não termos custos segmentados por URL, portanto, não é aplicável nesse cenário.

**Por que todas as opções de Segmento não aparecem para meus filtros de Categoria?**

Somente os Segmentos que têm registros válidos mapeados para eles serão exibidos no filtro Segmentos . Por exemplo, se não houver registros com o segmento &quot;Outro&quot;, então &quot;Outro&quot; não será exibido como uma opção.

**Does [!DNL Marketo Measure Discover] suporta o conjunto de caracteres GB18030?**

O Discover utiliza ferramentas de terceiros e não oferece suporte ao conjunto de caracteres GB18030 no momento.

**Ao carregar o Discover, por que vejo um erro 401 informando &quot;Você não está autenticado a visualizar esta página&quot;?**

[!DNL Marketo Measure Discover] O exige que os cookies de terceiros sejam exibidos corretamente. Para usar o Discover, ative cookies de terceiros no navegador e atualize a página.

>[!NOTE]
>
>Alguns navegadores, incluindo o Chrome no Incógnito, desabilitam cookies de terceiros por padrão.

![](assets/faq-1.png)