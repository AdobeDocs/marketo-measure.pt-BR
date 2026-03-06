---
description: O que é o Adobe Marketo Measure
title: O que é o Adobe Marketo Measure?
hide: true
hidefromtoc: true
source-git-commit: 7c3f586e308ba885d10f3f9b8925af93277ad2e0
workflow-type: tm+mt
source-wordcount: '642'
ht-degree: 0%

---

# O que é o Adobe Marketo Measure? {#what-is-adobe-marketo-measure}

O Adobe Marketo Measure (anteriormente conhecido como Bizible) é uma plataforma líder de atribuição de multitoque.

Ele consolida dados de diferentes fontes de dados (CRM, automação de marketing, site etc.). Com esses dados em um local, ele cria uma série de eventos (os pontos de contato mencionados acima) para cada pessoa, identificada por seu endereço de email exclusivo.

Esses pontos de contato são relacionados a oportunidades por meio de metodologias baseadas em conta ou em função de contato da oportunidade, para que possamos atribuir oportunidades de volta aos vários pontos de contato diferentes que desempenharam um papel na jornada de cada oportunidade.

Usando vários modelos de atribuição baseados em regras e em posição (que abordaremos mais detalhadamente posteriormente), cada ponto de contato relacionado a uma Oportunidade recebe um peso, que então atribui um valor em dólar a cada ponto de contato.

Como cada ponto de contato é classificado como canal, subcanal, campanha e outros segmentos definidos, é possível descobrir quais atividades de marketing estão mais fortemente correlacionadas às oportunidades e vitórias.

Vamos falar mais sobre como ela faz isso
Como o Marketo Measure funciona
O Marketo Measure integra-se com muitas das ferramentas da sua pilha técnica. Também se integra diretamente às plataformas de anúncios listadas abaixo.

●    Anúncios do Google
●    Bing Ads
●    Facebook/Meta
●    LinkedIn

Essas integrações ajudam a resolver o tráfego de campanha de mídia paga para a campanha de publicidade exata dessas plataformas, quando a marcação automática está ativada.

Essas integrações também assimilam automaticamente toda a campanha de anúncios e os gastos com anúncios dessas plataformas, diretamente na plataforma do Marketo Measure.

Observação: essas integrações não podem trazer pontos de contato nos jardins murados de mídia paga, com exceção da integração de formulário do LinkedIn Lead Gen. Isso significa que você não está obtendo pontos de contato para coisas como comentários, compartilhamentos e curtidas... ou qualquer outra interação que ocorra exclusivamente dentro dessas plataformas.
O Marketo Measure também tem um javascript que é colocado em seu site e que cria pontos de contato a partir de interações da Web. Esses pontos de contato são categorizados em canais e subcanais com base em regras que utilizam parâmetros UTM, informações da campanha, páginas de aterrissagem e/ou URLs de referência. Mais informações sobre essa funcionalidade serão fornecidas posteriormente.

Ele também se integra ao seu CRM para trazer oportunidades, contas, contatos, clientes potenciais, funções de contato de oportunidade, campanhas, membros de campanha e atividades (tarefas e eventos). Essa integração permite configurar regras que criam pontos de contato a partir da associação ao Campaign, bem como Atividades registradas em uma pessoa (chamadas telefônicas, emails, reuniões etc.). Novamente, mais informações sobre essas configurações posteriormente.

O Marketo Measure também pode se integrar diretamente ao Marketo Engage. Essa integração permite criar regras que criam pontos de contato a partir da associação ao Programa, bem como do Log de atividades do Marketo. Também nos aprofundaremos nessa funcionalidade.

Com todos esses dados, agora você está criando pontos de contato a partir de uma grande quantidade de fontes de dados diferentes. E esses pontos de contato são designados a um Canal e, em alguns casos, um Subcanal. Isso categoriza os pontos de contato com base em sua origem.

Pontos de contato também recebem uma posição. Essa posição se baseia na localização do ponto de contato no processo de compra e na jornada. Há quatro posições padrão e você pode criar posições personalizadas. As posições padrão são...

●    Primeiro contato (FT) - O primeiro ponto de contato (pode ser anônimo)
●    Criação de leads (LC) - o primeiro ponto de contato no qual capturamos um endereço de email
●    Criação de oportunidade (OC) - O último contato antes da criação de uma oportunidade
●    Fechado - O último contato antes do fechamento (fechado, conquistado ou fechado, perdido) de uma Oportunidade

As posições então ditam o peso, com base nos diferentes modelos de atribuição.

As oportunidades têm seu valor dividido entre todos os pontos de contato que as influenciaram, como partes de pizza, a dar um valor a cada ponto de contato.

Por exemplo, se um ponto de contato tiver um peso de 30% e estiver relacionado a uma Oportunidade com um valor de US$ 10.000, esse ponto de contato será avaliado em US$ 3.000.
