---
unique-page-id: 18874704
description: Perguntas frequentes sobre atribuição de atividades - [!DNL Marketo Measure]
title: Perguntas frequentes sobre atribuição de atividades
exl-id: 6272024f-b6ae-4aa7-ba92-c9f183549614
feature: Attribution
source-git-commit: 741ab20845de2f3bcde589291d7446a5b4f877d8
workflow-type: tm+mt
source-wordcount: '752'
ht-degree: 2%

---

# Perguntas frequentes sobre atribuição de atividades {#activities-attribution-faq}

[!DNL Marketo Measure] As atividades importam todos os seus registros de Atividade e geram pontos de contato para eles, permitindo que essas Atividades recebam crédito de atribuição. O caso de uso mais comum é rastrear atividades da equipe de vendas, pois geralmente criam um registro de chamadas telefônicas ou emails enviados a clientes potenciais. Outros itens exclusivos que podem ser rastreados são as interações de conteúdo, como downloads de ativos ou visualizações de vídeo.

**Qual a diferença entre isso e as campanhas offline?**

A maior diferença é que as Campanhas só podem fornecer um ponto de contato, pois as Campanhas permitem apenas um membro da campanha para cada lead ou contato. Isso significa que não é possível rastrear eventos recorrentes como chamadas de saída ou demonstrações ou participantes do webinário, a menos que você crie Campanhas individuais para cada agrupamento. As atividades permitem medir cada evento.

**Há uma diferença entre Tarefa, Eventos e Atividades?**

O objeto Activities atua como o guarda-chuva ou pai dos objetos Task e Event. As atividades abrangem essencialmente Tarefas e Eventos. As tarefas são normalmente usadas para gravar itens únicos rápidos, como uma chamada telefônica ou um email. Eventos normalmente são usados para coisas que podem ter uma data de início ou término, como reuniões ou conferências.

**Se eu tiver um cliente potencial ou contato com a mesma tarefa recorrente, verei pontos de contato do comprador para todos eles?**

Sim. Há uma relação 1:1 entre suas Atividades sincronizadas e os Pontos de contato criados.

**Como sei quais registros resultam na criação de pontos de contato?**

Uma boa sugestão é configurar seus filtros usando primeiro o objeto Atividade em seu CRM. Com base nas regras de filtro, você tem uma boa ideia de quantos registros se enquadram nesse critério, então é possível refiná-lo conforme necessário. Isso não é necessário, mas uma maneira útil para os usuários entenderem quantos Pontos de contato de atividades serão criados depois que as regras de atividades forem configuradas.

**O que é o [!DNL Marketo Measure] Nome da campanha?**

Como essas atividades resultam em um ponto de contato, [!DNL Marketo Measure] O deve saber a qual canal e subcanal eles pertencem. Para cada regra, você deve fornecer uma [!DNL Marketo Measure] Nome da campanha. Depois de criar, use o CSV de canais online para mapear isso [!DNL Marketo Measure] Nome da campanha ao seu canal apropriado. A variável [!DNL Marketo Measure] O nome da campanha também aparece no próprio ponto de contato na variável [!UICONTROL Nome da campanha publicitária] campo.

**Quais outros campos de Touchpoint são preenchidos?**

| **Campo do ponto de contato** | **Valor** |
|---|---|
| Cliente Potencial/Contato | Todas as atividades estão relacionadas a um cliente potencial ou contato |
| Campanha | Canal.Subcanal [[!DNL Marketo Measure]] |
| Origem do touchpoint | Atividade do CRM |
| Meio | Activity.Type |
| Tipo de touchpoint | Activity.Type |
| Nome da campanha publicitária | [!DNL Marketo Measure] Nome da campanha |
| Conteúdo do anúncio | Assunto da atividade |
| ID do anúncio | ID externa da atividade |
| Data do touchpoint | [personalizado - definido em aplicativos] |

**E se for necessário criar uma regra diferente para cada Representante de vendas? Preciso criar arquivos diferentes [!DNL Marketo Measure] Campanha para cada?**

Não, você não. &quot;Nomes de Campanha Dinâmicos&quot; permite preencher parte (ou todos) os [!DNL Marketo Measure] Nome da campanha usando um &quot;parâmetro de substituição&quot; que faz referência a um campo do objeto Activity. Por exemplo, se você tiver uma [!DNL Marketo Measure] Nome da campanha chamado &quot;Chamada de saída&quot;, mas você quiser que o Representante de vendas esteja no final, pegue o nome do campo do CRM e ligue para [!DNL Marketo Measure] Nome da campanha &quot;Chamada de saída&quot; {AssignedTo}&quot; ou &quot;Chamada de saída {CreatedBy}.&quot;

**Como configurar atividades no [!DNL Marketo Measure] aplicativo?**

Instruções sobre como configurar atividades no [!UICONTROL Marketo] O aplicativo de medidas pode ser encontrado no [!DNL Marketo Measure] Artigo de suporte às atividades.

**O que significam os diferentes operadores?**

* é igual a: correspondência exata ao valor (também conhecido como: social)
* contains: o texto está no meio (também conhecido como: &#42;social&#42;)
* começa com: o valor começa com o texto (também conhecido como: social&#42;)
* termina com: o valor termina com o texto (também conhecido como: &#42;social)
* corresponde a qualquer: é possível adicionar vários valores separados por vírgulas. Se [!UICONTROL começa com], [!UICONTROL termina com]ou contém operadores devem ser aplicados, use o curinga (&#42;)
* maior que: usado para campos numéricos ou campos de data/hora
* menor que: usado para campos numéricos ou campos de data/hora

**Em qual canal essas atividades se enquadram?**

Quando a regra de Atividade e sua [!DNL Marketo Measure] Os Nomes das Campanhas são criados, use as definições de Canais Online para colocar essas Campanhas no Canal de Marketing correto. [!DNL Marketo Measure] O pode definir canais usando não apenas o meio e a origem, mas também o campaign.

No exemplo acima, para atribuir a campanha &quot;Chamada de saída {Atribuída a}&quot; ao canal BDR, insira uma linha no CSV Canais online para o canal BDR com uma definição de campanha de &quot;Chamada de saída&quot;&#42;&quot; - o asterisco denota um valor curinga, de modo que todas as campanhas que começam com &quot;Chamada de saída&quot; serão classificadas no canal BDR, em vez de precisarem criar uma linha separada para cada nome de campanha.
