---
description: Perguntas Frequentes sobre Atribuição de Atividades - [!DNL Marketo Measure]
title: Perguntas frequentes sobre atribuição de atividades
exl-id: 6272024f-b6ae-4aa7-ba92-c9f183549614
feature: Attribution
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '770'
ht-degree: 2%

---


# Perguntas frequentes sobre atribuição de atividades {#activities-attribution-faq}

[!DNL Marketo Measure] As atividades importam todos os seus registros de Atividade e geram pontos de contato para eles, permitindo que essas Atividades recebam crédito de atribuição. O caso de uso mais comum é rastrear atividades da equipe de vendas, pois geralmente criam um registro de chamadas telefônicas ou emails enviados a clientes potenciais. Outros itens exclusivos que podem ser rastreados são as interações de conteúdo, como downloads de ativos ou visualizações de vídeo.

>[!AVAILABILITY]
>
>Esse recurso é habilitado somente para clientes de Nível 2. Para solicitar uma camada de conta mais alta, entre em contato com a Equipe de conta da Adobe (seu gerente de conta).

**Qual a diferença em relação às Campanhas Offline?**

A maior diferença é que as Campanhas só podem fornecer um ponto de contato, pois as Campanhas permitem apenas um membro da campanha para cada lead ou contato. Isso significa que não é possível rastrear eventos recorrentes como chamadas de saída ou demonstrações ou participantes do webinário, a menos que você crie Campanhas individuais para cada agrupamento. As atividades permitem medir cada evento.

**Há uma diferença entre Tarefa, Eventos e Atividades?**

O objeto Activities atua como o guarda-chuva ou pai dos objetos Task e Event. As atividades abrangem essencialmente Tarefas e Eventos. As tarefas são normalmente usadas para gravar itens únicos rápidos, como uma chamada telefônica ou um email. Eventos normalmente são usados para coisas que podem ter uma data de início ou término, como reuniões ou conferências.

**Se eu tiver um Cliente Potencial ou Contato com a mesma Tarefa recorrente, verei Pontos de Contato do Comprador para todos eles?**

Sim. Há uma relação 1:1 entre suas Atividades sincronizadas e Pontos de contato criados.

**Como saber quais registros resultam na criação de Pontos de Contato?**

Uma boa sugestão é configurar seus filtros usando primeiro o objeto Atividade em seu CRM. Com base nas regras de filtro, você tem uma boa ideia de quantos registros se enquadram nesse critério, então é possível refiná-lo conforme necessário. Isso não é necessário, mas uma maneira útil para os usuários entenderem quantos Pontos de contato de atividades serão criados depois que as regras de atividades forem configuradas.

**Qual é o Nome da Campanha [!DNL Marketo Measure]?**

Como essas atividades resultam em um ponto de contato, [!DNL Marketo Measure] deve saber a qual canal e subcanal eles pertencem. Para cada regra, você deve fornecer um Nome de Campanha [!DNL Marketo Measure]. Depois de criar a campanha, use o CSV de Canais Online para mapear o Nome da Campanha [!DNL Marketo Measure] para o Canal apropriado. O Nome da Campanha [!DNL Marketo Measure] também aparece no próprio Ponto de Contato, no campo [!UICONTROL Nome da Campanha Publicitária].

**Que outros campos de Touchpoint estão preenchidos?**

| Campo do ponto de contato | Valor |
|---|---|
| Cliente Potencial/Contato | Todas as atividades estão relacionadas a um cliente potencial ou contato |
| Campanha | Canal.Subcanal [[!DNL Marketo Measure]] |
| Origem do touchpoint | Atividade do CRM |
| Meio | Activity.Type |
| Tipo de touchpoint | Activity.Type |
| Nome da campanha publicitária | Nome da campanha [!DNL Marketo Measure] |
| Conteúdo do anúncio | Assunto da atividade |
| ID do anúncio | ID externa da atividade |
| Data do touchpoint | [personalizado - definido em aplicativos] |

**E se eu precisar criar uma regra diferente para cada Representante de Vendas? Preciso criar uma campanha [!DNL Marketo Measure] diferente para cada uma?**

Não, você não. &quot;Nomes de Campanha Dinâmicos&quot; permite preencher parte (ou todo) o Nome da Campanha [!DNL Marketo Measure] usando um &quot;parâmetro de substituição&quot; que faça referência a um campo do objeto Atividade. Por exemplo, se você tiver um Nome de Campanha [!DNL Marketo Measure] intitulado &quot;Chamada de Saída&quot;, mas quiser que o Representante de Vendas esteja no final, use o nome de campo do CRM e chame o Nome de Campanha [!DNL Marketo Measure] de &quot;Chamada de Saída {AssignedTo}&quot; ou &quot;Chamada de Saída {CreatedBy}&quot;.

**Como configurar atividades no aplicativo [!DNL Marketo Measure]?**

As instruções sobre como configurar Atividades no aplicativo [!UICONTROL Marketo] Measure podem ser encontradas no artigo de suporte Atividades [!DNL Marketo Measure].

**O que significam os diferentes operadores?**

* é igual a: correspondência exata ao valor (também conhecido como: social)
* contém: o texto está no meio (também conhecido como: &#42;social&#42;)
* começa com: o valor começa com o texto (também conhecido como: social&#42;)
* termina com: o valor termina com o texto (também conhecido como: &#42;social)
* corresponde a qualquer: é possível adicionar vários valores separados por vírgulas. Se [!UICONTROL começa com], [!UICONTROL termina com] ou contém operadores devem ser aplicados, use o curinga (&#42;)
* maior que: usado para campos numéricos ou campos de data/hora
* menor que: usado para campos numéricos ou campos de data/hora

**Em qual Canal estas Atividades se encontram?**

Quando a regra de Atividade e seu Nome de campanha [!DNL Marketo Measure] correspondente forem criados, use as definições de Canais Online para colocar essas Campanhas no Canal de marketing correto. [!DNL Marketo Measure] pode definir Canais usando não apenas o meio e a origem, mas também o Campaign.

No exemplo acima, para atribuir a campanha &quot;Chamada de saída {Assigned To}&quot; ao canal BDR, insira uma linha no CSV Canais online para o canal BDR com uma definição de campanha de &quot;Chamada de saída&#42;&quot; - o asterisco denota um valor curinga, de modo que todas as campanhas que começam com &quot;Chamada de saída&quot; caibam no canal BDR, em vez de terem que criar uma linha separada para cada nome de campanha.
