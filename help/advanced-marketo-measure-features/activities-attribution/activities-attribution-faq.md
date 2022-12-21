---
unique-page-id: 18874704
description: Perguntas frequentes sobre atribuição de atividades - [!DNL Marketo Measure] - Documentação do produto
title: Perguntas frequentes sobre atribuição de atividades
exl-id: 6272024f-b6ae-4aa7-ba92-c9f183549614
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '788'
ht-degree: 2%

---

# Perguntas frequentes sobre atribuição de atividades {#activities-attribution-faq}

O [!DNL Marketo Measure] A funcionalidade Atividades permite importar todos os registros da Atividade e gerar pontos de contato para eles, permitindo que essas Atividades recebam crédito de atribuição. O caso de uso mais comum é rastrear Atividades da equipe de vendas, pois elas geralmente criam um registro de chamadas telefônicas ou emails enviados para prospetos. Outras coisas exclusivas que podem ser rastreadas são interações de conteúdo, como downloads de ativos ou exibições de vídeo.

**Como isso difere das campanhas offline?**

A maior diferença é que as Campanhas só podem fornecer um ponto de contato porque as Campanhas permitem somente um Membro da Campanha para cada Lead ou Contato. Isso significa que você não pode rastrear eventos recorrentes como chamadas de saída, demonstrações ou participantes do webinário, a menos que crie Campanhas individuais para cada agrupamento. As atividades permitirão medir cada evento.

**Existe uma diferença entre Tarefa, Eventos e Atividades?**

O objeto Atividades age como o guarda-chuva ou pai sobre os objetos Tarefa e Evento . As atividades abrangem essencialmente Tarefas e Eventos. Normalmente, as tarefas são usadas para gravar itens únicos rápidos, como uma chamada telefônica ou um email. Os eventos geralmente são usados para coisas que podem ter uma data de início ou término, como reuniões ou conferências.

**Se eu tiver um lead ou contato com a mesma tarefa recorrente como um email ou uma chamada, verei os pontos de contato do comprador para todos esses itens?**

Sim. Haverá uma relação 1:1 entre as atividades sincronizadas e os pontos de contato criados.

**Como sei quais registros resultarão na criação de pontos de contato?**

Uma boa sugestão é configurar seus filtros usando o objeto Atividade em seu CRM primeiro. Com base nas regras de filtragem, você terá uma boa ideia de quantos registros se enquadram nesses critérios, então você pode refiná-los conforme necessário. Isso não é necessário, mas uma maneira útil de os usuários entenderem quantas atividades Pontos de contato serão criadas depois que as regras de Atividades forem configuradas.

**O que é [!DNL Marketo Measure] Nome da campanha?**

Como essas atividades resultarão em um ponto de contato, [!DNL Marketo Measure] O precisa saber a qual canal e subcanal pertencem. Para cada regra, será necessário fornecer um [!DNL Marketo Measure] Nome da campanha. Depois de criado, você pode usar o CSV de Canais Online para mapear isso [!DNL Marketo Measure] Nome da campanha ao canal apropriado. O [!DNL Marketo Measure] O Nome da campanha também será exibido no próprio Ponto de contato dentro da variável [!UICONTROL Nome da campanha publicitária] campo.

**Quais outros campos de ponto de contato são preenchidos?**

| **Campo de ponto de contato** | **Valor** |
|---|---|
| Lead/Contato | Todas as atividades estão relacionadas a um Cliente Potencial ou Contato |
| Campanha | Canal.Subcanal [[!DNL Marketo Measure]] |
| Origem do Touchpoint | Atividade do CRM |
| Médio | Activity.Type |
| Tipo de Touchpoint | Activity.Type |
| Nome da campanha publicitária | [!DNL Marketo Measure] Nome da campanha |
| Conteúdo do anúncio | Assunto da atividade |
| ID da Publicidade | Id Externa Da Atividade |
| Data do Touchpoint | [personalizado - definido em aplicativos] |

**E se eu precisar criar uma regra diferente para cada representante de vendas? Preciso criar diferentes [!DNL Marketo Measure] Campanhas para cada?**

Não, não. Introduzimos um conceito de &quot;Nomes de Campanha Dinâmica&quot;. Isso permite preencher parte (ou todas) da variável [!DNL Marketo Measure] Nome da campanha usando um &quot;parâmetro de substituição&quot; que faz referência a um campo do objeto Atividade. Por exemplo, se você tiver uma [!DNL Marketo Measure] Nome da campanha intitulado &quot;Chamada de saída&quot;, mas você deseja que o Representante de vendas esteja no fim, pegue o nome do campo do CRM e chame o [!DNL Marketo Measure] Nome da campanha &quot;Chamada de saída {AssignedTo}&quot; ou &quot;Chamada de saída {CreatedBy}&quot;.

**Como configurar atividades no [!DNL Marketo Measure] aplicativo?**

Instruções sobre como configurar atividades no [!UICONTROL Marketo] O aplicativo de medida pode ser encontrado na seção [!DNL Marketo Measure] Artigo de suporte das atividades.

**O que significam os diferentes operadores?**

* é igual a: correspondência exata do valor (também conhecido como: social)
* contém: o texto está no meio (também conhecido por: &#42;social&#42;)
* começa com: o valor começa com o texto (também conhecido como: social&#42;)
* termina com: o valor termina com o texto (também conhecido como: &#42;social)
* corresponde a qualquer: é possível adicionar vários valores separados por vírgula. If [!UICONTROL começa com], [!UICONTROL termina com]os operadores ou contém precisam ser aplicados, usados como curinga (&#42;)
* maior que: usado para campos numéricos ou campos de data/hora
* menor que: usado para campos numéricos ou campos de data/hora

**Em qual canal essas atividades serão incluídas?**

Depois da regra de Atividade e suas [!DNL Marketo Measure] Nome da campanha, caso tenha sido criado, você usará as definições de Canais online para colocar essas Campanhas sob o Canal de marketing correto. [!DNL Marketo Measure] O tem a capacidade de definir Canais usando não apenas mídia e fonte, mas também campanha.

No exemplo acima, para atribuir a campanha &quot;Chamada de saída {Atribuída a}&quot; ao canal BDR, você deverá inserir uma linha em seu CSV de canais online para o canal BDR com uma definição de campanha &quot;Chamada de saída&quot;&#42;&quot; - o asterisco indica um valor curinga, de modo que todas as campanhas que começam com &quot;Chamada de saída&quot; ficarão sob o canal BDR, em vez de precisar criar uma linha separada para cada nome de campanha.
