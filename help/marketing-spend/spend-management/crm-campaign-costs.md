---
unique-page-id: 18874688
description: Custos de campanha de CRM - [!DNL Marketo Measure]
title: Custos de campanhas de CRM
exl-id: d967cabe-b9f1-4ea1-a81b-e4484c703ecf
feature: Spend Management
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '1253'
ht-degree: 0%

---

# Custos de campanhas de CRM {#crm-campaign-costs}

Mais [!DNL Marketo Measure] Os clientes usam campanhas do CRM para rastrear atividades de marketing offline. Os profissionais de marketing que utilizam essas campanhas também monitorarão os custos no CRM, portanto, esse recurso facilita o monitoramento dos profissionais de marketing ao permitir [!DNL Marketo Measure] para ler esses custos e aplicá-los ao Gasto com marketing relatado em [!DNL Marketo Measure]. Até o momento, os clientes tiveram que inserir manualmente os custos de cada campanha por mês, mas com as informações necessárias fornecidas, [!DNL Marketo Measure] O pode automatizar esse processo para que os profissionais de marketing possam gastar mais tempo analisando seu gasto e o ROI.

## Disponibilidade {#availability}

Este recurso está disponível para todos [!DNL Salesforce] e clientes do Dynamics.

## Como funciona {#how-it-works}

[!DNL Marketo Measure] primeiro, procura Campanhas que foram &quot;ativadas&quot; para pontos de contato, portanto, há uma regra de Sincronização de campanha correspondente que foi criada ou o valor Ativar pontos de contato do comprador é &quot;Incluir todos os membros da campanha&quot; ou &quot;Incluir membros da campanha &quot;Respondidos&quot;. Além disso, [!DNL Marketo Measure] É necessário importar os valores corretos e saber como distribuir os custos, de modo que seja necessário que os seguintes campos contenham um valor:

**[!DNL Salesforce]**: Custo real, Data inicial, Data final

**[!DNL Microsoft Dynamics]**: custo total efetivo, início efetivo, fim efetivo

Se algum dos três campos não tiver um valor, [!DNL Marketo Measure] não importará os custos. Você pode corrigir isso atualizando o registro do Campaign no CRM. Também é importante observar que não importaremos os custos se ele for explicitamente definido como $0 porque [!DNL Salesforce] O trata branco e $0 como iguais.

A fim de [!DNL Marketo Measure] para determinar a distribuição de uma campanha em meses, usamos as datas de início e término da campanha e distribuímos o valor uniformemente por dia.

![](assets/1.jpg)

Neste exemplo, temos uma campanha que dura 109 dias, então com um custo total de US$ 18.000, o gasto por dia chega a ~ US$ 165,14.

Com base no número de dias por mês, obtemos esses totais mensais, como você pode ver na tabela:

Jul de 2018: (US$ 18.000/109) x 31 = US$ 5.119,27

Ago de 2018: (US$ 18.000/109) x 31 = US$ 5.119,27

Set de 2018: (US$ 18.000/109) x 30 = US$ 4.954,13

Out de 2018: (US$ 18.000/109) x 17 = US$ 2.807,34

## Histórico de gastos relatados {#historical-reported-spend}

Não se preocupe! Se você tiver inserido gastos para Campanhas que rastreamos no passado que foram mapeadas para uma Campanha CRM, não substituiremos nenhum dos custos inseridos. Se a mesma campanha no CRM for modificada, ainda a ignoraremos e daremos prioridade às alterações feitas anteriormente no upload do CSV.

Se você preferir levar o custo da campanha de CRM adiante, o que você pode fazer é alterar o valor no CSV para $0, o que anulará a entrada. Em seguida, na próxima vez que executarmos nossos trabalhos para importar os custos, verificaremos todos os registros que foram editados anteriormente e os incluiremos.

## Campanhas sem pontos de contato {#campaigns-with-no-touchpoints}

Muitos profissionais de marketing optam por relatar gastos de marketing em campanhas do CRM que não geraram pontos de contato ou que, conscientemente, não têm Membros da campanha para fins de rastreamento de gastos. Contanto que os 3 campos estejam preenchidos (data inicial, data final, custo) e a campanha esteja habilitada para pontos de contato, [!DNL Marketo Measure] ainda extrairá esse custo, independentemente de haver ou não pontos de contato associados a ele.

Isso pode ser útil para rastrear os gastos excessivos com marketing ou ferramentas para acumular em seus cálculos de ROI.

## Sincronização de programa do Marketo {#marketo-program-sync}

Se você trouxer Programas do Marketo para o CRM como Campanhas, desejará garantir que a Data inicial, a Data final e o mapeamento do Custo do Período estejam configurados nos campos CRM necessários. Como não há mapeamento para o campo Ativar pontos de contato do comprador, ainda será necessário ativar essas campanhas para que saibamos quais são os custos.

## Editando os Custos {#editing-the-costs}

Depois que uma campanha é importada do CRM, ela é tratada de forma semelhante a um provedor de anúncios da API e não é exibida no CSV para fazer alterações de custo.

Qualquer mudança no custo ou na distribuição deve ser feita no CRM para que possamos apontar para um único ponto de verdade.

## Perguntas frequentes {#faq}

**Fiz uma alteração em minha campanha - quando devo esperar ver as alterações na tabela de Gastos com marketing ou em meus relatórios?**

3 a 4 horas

**Tenho a data inicial, a data final e o custo preenchido, mas por que meus custos ainda não estão aparecendo no [!DNL Marketo Measure]?**

Verifique se você tem o valor Ativar ponto de contato do comprador definido como &quot;Incluir todos os membros da campanha&quot; ou pelo menos &quot;Incluir membros da campanha &#39;respondidos&#39;&quot;, ou se você criou uma regra de sincronização de campanha personalizada que inclui essa campanha. Se você confirmou isso e ainda não visualizou a Campanha, entre em contato com [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para que possamos verificar se suas Campanhas estão sendo importadas corretamente.

**Preciso alterar a distribuição da minha Campanha para poder aumentá-la em alguns meses. Como faço isso?**

A classificação contábil dos custos é puramente baseada em uma classificação contábil uniforme da data inicial até a data final. Infelizmente, não podemos alterá-lo para que seus custos tenham uma ponderação diferente das datas definidas. Você pode controlar isso ajustando as datas de início e término de sua campanha, pois cada dia do mês é importante.

**Tenho os custos configurados na minha Campanha principal - como as Campanhas secundárias recebem o custo da Campanha principal?**

Na verdade, a forma como os custos serão obtidos será diretamente de uma única campanha, independentemente de qualquer relacionamento Pai ou Filho. Recomendamos que o custo seja aplicado às Campanhas secundárias, juntamente com as datas da campanha. Em seguida, usamos a campanha principal como a campanha principal, onde a campanha principal não seria ativada para pontos de contato.

**Como alterar o custo de um mês no [!DNL Marketo Measure]?**

Como contamos com o CRM como a única fonte da verdade, todas as alterações precisam ser feitas no CRM. Depois que a campanha for importada pelo [!DNL Marketo Measure], os valores de Campanha não podem ser editados no [!DNL Marketo Measure] ou no arquivo CSV.

**Em que cenário uma campanha aparece na tabela de Gastos de marketing e depois não aparece mais?**

Continuaremos a exigir que todos os três campos principais tenham um valor: Data inicial, Data final e Custo. Nosso comportamento padrão é importar Campanhas com um valor maior que $0. Idealmente, importaríamos Campanhas em que há um $0 explícito e não importaríamos as que estão em branco, mas a API do Salesforce as importa como $0 independentemente do valor. Além disso, se o valor Ativar ponto de contato do comprador mudar de &quot;Incluir tudo&quot; ou &quot;Incluir &#39;Respondido&#39;&quot; para &quot;Excluir tudo&quot;, removeremos a Campanha e o Custo da tabela de Gastos de marketing.

**Qual custo teria prioridade se uma linha já tivesse sido baixada do CRM e eu tivesse inserido outra linha no CSV com a mesma ID de campanha?**

Embora talvez seja possível carregar o arquivo com êxito, [!DNL Marketo Measure] O não usará essa linha porque já temos uma ID de campanha com o mesmo valor que foi extraído automaticamente da integração.

**Como você sugeriria que extraíssemos os custos de nossas Campanhas digitais que configuramos no CRM?**

Porque a nossa [!DNL Marketo Measure] O javascript já está rastreando a atividade da web do seu site. Recomendamos não sincronizar campanhas que rastreiam Membros do Campaign a partir de formulários web ou outras atividades do site, pois isso contará duas vezes os toques. Por causa disso, você pode querer continuar usando a opção de Upload de CSV no Marketing Spend para rastrear esses custos online/digitais se ainda não estivermos integrados a essa plataforma (ou seja, Twitter, Adroll).
