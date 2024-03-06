---
unique-page-id: 18874688
description: Custos de campanha de CRM - [!DNL Marketo Measure]
title: Custos de campanhas de CRM
exl-id: d967cabe-b9f1-4ea1-a81b-e4484c703ecf
feature: Spend Management
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '1187'
ht-degree: 0%

---

# Custos de campanhas de CRM {#crm-campaign-costs}

Mais [!DNL Marketo Measure] Os clientes usam campanhas do CRM para rastrear atividades de marketing offline. Os profissionais de marketing que usam essas campanhas também monitoram os custos no CRM. Esse recurso facilita a tarefa dos profissionais de marketing ao permitir [!DNL Marketo Measure] para ler esses custos e aplicá-los ao Gasto com marketing relatado em [!DNL Marketo Measure]. Até o momento, os clientes tiveram que inserir manualmente os custos de cada campanha por mês, mas com as informações necessárias fornecidas ao[!DNL Marketo Measure]No entanto, os usuários podem automatizar esse processo para que os profissionais de marketing possam gastar mais tempo analisando seus gastos e o ROI.

## Disponibilidade {#availability}

Este recurso está disponível para todos [!DNL Salesforce] e clientes do Dynamics.

## Como funciona {#how-it-works}

[!DNL Marketo Measure] primeiro, procura Campanhas que foram &quot;ativadas&quot; para pontos de contato, portanto, há uma regra de Sincronização de campanha correspondente que foi criada ou o valor Ativar pontos de contato do comprador é &quot;Incluir todos os membros da campanha&quot; ou &quot;Incluir membros da campanha &quot;Respondidos&quot;. Além disso, [!DNL Marketo Measure] O deve importar os valores corretos e saber como distribuir os custos, portanto, é necessário que os seguintes campos contenham um valor:

**[!DNL Salesforce]**: `ActualCost`, `StartDate`, `EndDate`

**[!DNL Microsoft Dynamics]**: `totalactualcost`, `actualstart`, `actualend`

Se algum dos três campos não tiver um valor, [!DNL Marketo Measure] não importará os custos. Você pode corrigir isso atualizando o registro do Campaign no CRM. Os custos não são importados se for definido como $0 porque [!DNL Salesforce] O trata branco e $0 como iguais.

Para [!DNL Marketo Measure] para determinar a distribuição de uma campanha entre meses, as datas de início e término da campanha são usadas para distribuir o valor uniformemente por dia.

![](assets/1.jpg)

Neste exemplo, uma campanha dura 109 dias, portanto, com um custo total de US$ 18.000, o gasto por dia chega a ~ US$ 165,14.

Com base no número de dias por mês, obtemos esses totais mensais, como você pode ver na tabela:

Jul de 2018: (US$ 18.000/109) x 31 = US$ 5.119,27

Ago de 2018: (US$ 18.000/109) x 31 = US$ 5.119,27

Set de 2018: (US$ 18.000/109) x 30 = US$ 4.954,13

Out de 2018: (US$ 18.000/109) x 17 = US$ 2.807,34

## Histórico de gastos relatados {#historical-reported-spend}

Se você tiver inserido gastos para Campanhas que foram rastreadas no passado e mapeadas para uma Campanha CRM, isso não substituirá nenhum dos custos inseridos. Se a mesma campanha no CRM for modificada, ela a ignorará e dará prioridade às alterações feitas anteriormente no upload do CSV.

Se preferir que a partir de agora peguemos o custo da Campanha CRM, altere o valor no CSV para $0, o que anula a entrada. Na próxima vez que os trabalhos forem executados para importar os custos, os relatórios editados anteriormente serão obtidos.

## Campanhas sem pontos de contato {#campaigns-with-no-touchpoints}

Muitos profissionais de marketing escolhem relatar gastos de marketing em campanhas CRM que não geraram pontos de contato ou que não têm Membros da campanha para fins de rastreamento de gastos. Contanto que os três campos estejam preenchidos (data inicial, data final, custo) e a campanha esteja habilitada para pontos de contato, [!DNL Marketo Measure] O extrai esse custo, mesmo se não houver pontos de contato associados a ele.

Isso pode ser útil para rastrear os gastos excessivos com marketing ou ferramentas para acumular em seus cálculos de ROI.

## Sincronização de programa do Marketo {#marketo-program-sync}

Se você trouxer Programas do Marketo para o CRM como Campanhas, verifique se você tem a Data inicial, a Data final e a configuração de mapeamento do Custo do Período para os campos obrigatórios do CRM. Como não há mapeamento para o campo Ativar pontos de contato do comprador, você ainda deve ativar essas campanhas para que os custos possam ser obtidos.

## Editando os Custos {#editing-the-costs}

Depois que uma campanha é importada do CRM, ela é tratada de forma semelhante a um Provedor de anúncios da API e não aparecerá no CSV para fazer alterações de custo.

Qualquer mudança no custo ou na distribuição deve ser feita no CRM para que possamos apontar para um único ponto de verdade.

## Perguntas frequentes {#faq}

**Fiz uma alteração em minha campanha - quando devo esperar ver as alterações na tabela de Gastos com marketing ou em meus relatórios?**

3 a 4 horas

**Tenho a data inicial, a data final e o custo preenchido, mas por que meus custos ainda não estão aparecendo no [!DNL Marketo Measure]?**

Verifique se o valor &quot;Ativar ponto de contato do comprador&quot; está definido como &quot;Incluir todos os membros da campanha&quot; ou pelo menos &quot;Incluir membros da campanha &quot;Respondidos&quot;, ou se você criou uma regra de sincronização de campanha personalizada que inclui essa campanha. Se você confirmou isso e ainda não visualizou a Campanha, entre em contato com [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para que possamos verificar se suas Campanhas estão sendo importadas corretamente.

**Preciso mudar a distribuição da minha Campanha para poder pesá-la mais em alguns meses. Como faço isso?**

A classificação contábil dos custos é puramente baseada em uma classificação contábil uniforme da data inicial até a data final. Infelizmente, não podemos alterá-lo para que seus custos tenham uma ponderação diferente das datas definidas. Você pode controlar isso ajustando as datas de início e término de sua campanha, pois cada dia do mês é importante.

**Tenho os custos configurados na minha Campanha principal - como as Campanhas secundárias recebem os custos da Campanha principal?**

Na verdade, a forma como os custos serão obtidos será diretamente de uma única campanha, independentemente de qualquer relacionamento Pai ou Filho. Recomendamos que o custo seja aplicado às Campanhas secundárias, juntamente com as datas da campanha. Em seguida, usamos a campanha principal como a campanha principal, onde a campanha principal não seria ativada para pontos de contato.

**Como alterar o custo de um mês no [!DNL Marketo Measure]?**

Como dependemos do CRM como a única fonte da verdade, todas as alterações devem ser feitas no CRM. Depois que a campanha for importada pelo [!DNL Marketo Measure], os valores de Campanha não podem ser editados no [!DNL Marketo Measure] ou no arquivo CSV.

**Em que cenário uma campanha aparece na tabela de Gastos de marketing e depois não aparece mais?**

Continuamos a exigir que todos os três campos principais tenham um valor: Data inicial, Data final e Custo. Nosso comportamento padrão é importar Campanhas com um valor maior que $0. Idealmente, importaríamos Campanhas em que há um $0 explícito e não importaríamos as que estão em branco, mas a API do Salesforce as importa como $0 independentemente do valor. Além disso, se o valor Ativar ponto de contato do comprador mudar de &quot;Incluir tudo&quot; ou &quot;Incluir &quot;Respondido&quot; para &quot;Excluir tudo&quot;, removemos a Campanha e o Custo da tabela de Gastos de marketing.

**Qual custo teria prioridade se uma linha já tivesse sido baixada do CRM e eu tivesse inserido outra linha no CSV com a mesma ID de campanha?**

Embora talvez seja possível carregar o arquivo com êxito, [!DNL Marketo Measure] O não usará essa linha porque já temos uma ID de campanha com o mesmo valor que foi extraído automaticamente da integração.

**Como você sugeriria que extraíssemos os custos de nossas Campanhas digitais que configuramos no CRM?**

Porque a nossa [!DNL Marketo Measure] O javascript já está rastreando a atividade da web do seu site. Recomendamos não sincronizar campanhas que rastreiam Membros do Campaign a partir de formulários web ou outras atividades do site, pois isso contará duas vezes os toques. Por causa disso, você pode querer continuar usando a opção de Upload de CSV no Marketing Spend para rastrear esses custos online/digitais se ainda não estivermos integrados a essa plataforma (ou seja, Twitter, Adroll).
