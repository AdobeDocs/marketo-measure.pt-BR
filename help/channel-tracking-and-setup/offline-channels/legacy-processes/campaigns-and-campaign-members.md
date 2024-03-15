---
unique-page-id: 18874578
description: Campanhas e membros da campanha - [!DNL Marketo Measure]
title: Campanhas e membros da campanha
exl-id: e4e2b154-39ac-4295-a541-7fa6112672e3
feature: Channels
source-git-commit: b84909fbb34a1d8f739ebeea3400ef8816e17d32
workflow-type: tm+mt
source-wordcount: '1164'
ht-degree: 0%

---

# Campanhas e membros da campanha {#campaigns-and-campaign-members}

[!DNL Salesforce] As campanhas têm como objetivo rastrear listas de clientes potenciais e contatos associadas a um programa ou atividade de marketing. Normalmente, foram webinários, registros ou ambas as visitas, por exemplo. Os profissionais de marketing podem selecionar se uma campanha deve ser creditada em uma jornada de ponto de contato.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado no aplicativo](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md){target="_blank"}.

## Ativar pontos de contato {#enabling-touchpoints}

A variável [!DNL Marketo Measure] [!DNL Salesforce] O pacote incluirá um campo chamado &quot;Ativar pontos de contato do comprador&quot; no objeto do Campaign. Depois que o campo for adicionado ao layout da página, ele será semelhante a:

![](assets/1.png)

As opções disponíveis na lista de opções são:

![](assets/2.png)

* Incluir todos os membros da campanha - cada lead ou contato adicionado à campanha receberá um ponto de contato associado a ela.
* Incluir somente Membros da campanha &quot;Respondidos&quot; - Somente Clientes Potenciais ou Contatos com o Status de Membro da Campanha &quot;Respondidos&quot; receberão um Ponto de Contato associado a essa campanha.
* Excluir todos os membros da campanha - nenhum dos clientes em potencial ou contato receberá um ponto de contato associado a essa campanha.

Observe que os membros da campanha devem ter um endereço de email associado ao seu registro para que [!DNL Marketo Measure] para criar um ponto de contato. Sem um endereço de email, [!DNL Marketo Measure] não atribuirá um ponto de contato ao membro da campanha.

## Datas de sincronização da campanha {#campaign-sync-dates}

Com a instalação do pacote, [!DNL Marketo Measure] também incluirá dois campos de data no objeto Campaign: Data inicial do ponto de contato e Data final do ponto de contato.

Essas datas dizem [!DNL Marketo Measure] quando devemos iniciar ou parar de incluir Membros do Campaign na jornada do ponto de contato. Você pode definir uma data, ou ambas, ou nenhuma.

## Caso de uso para data de início do ponto de contato {#use-case-for-touchpoint-start-date}

A data de início pode ser usada caso uma Campanha existente seja usada para rastrear clientes em potencial e contatos, mas o usuário só deseja começar a medir quando novos sistemas ou processos estiverem em vigor. Portanto, decide definir uma data de início uma vez [!DNL Marketo Measure] deve começar a rastrear esses Membros da campanha.

## Caso de uso para data de término do ponto de contato {#use-case-for-touchpoint-end-date}

Se antes de usar [!DNL Marketo Measure], você usou uma plataforma de Automação de marketing que rastreou as interações digitais dos clientes potenciais (envios de formulários IE) e depois carregou esses clientes em um [!DNL Saleforce] Campaign, você pode usar o campo Data final do ponto de contato. Você definiria a Data de término do ponto de contato como a data de início com [!DNL Marketo Measure] e ativar Pontos de contato do comprador, então a interação digital de cada um desses Clientes potenciais será criada como um Ponto de contato. O motivo pelo qual você definirá a Data final do ponto de contato como a Data inicial com [!DNL Marketo Measure] é porque, dali em diante, rastrearemos essas interações digitais por meio do nosso javascript.

![](assets/3.png)

## Membros da campanha {#campaign-members}

Os membros da campanha estão aninhados em [!UICONTROL Campanhas]e estão relacionados a um cliente em potencial ou contato. Um lead ou contato só pode ser adicionado uma vez a uma campanha, o que pode ser problemático dependendo do caso de uso da campanha. Quando uma campanha é sincronizada, a associação à campanha é usada como uma atividade de marketing que é colocada na jornada do ponto de contato e tratada como um preenchimento de formulário.

## Status do Ponto de Contato do Comprador {#buyer-touchpoint-status}

Se ativado, [!DNL Marketo Measure] O enviará um valor de status para o Membro da campanha em 4 campos diferentes incluídos no pacote instalado: Status do ponto de contato (lead), Status do ponto de contato (contato), Status do ponto de contato (oportunidade) e Data do status do ponto de contato. Isso ajuda os clientes a auditar se um ponto de contato foi criado como um ponto de contato do comprador ou ponto de contato de atribuição do comprador, dependendo do objeto ao qual ele está relacionado. A data do status do ponto de contato é simplesmente a última data em que o status foi atualizado no membro da campanha.

![](assets/4.png)

## Data do ponto de contato do comprador {#buyer-touchpoint-date}

Com a instalação do pacote, [!DNL Marketo Measure] O também inclui um campo no Membro da campanha rotulado como &quot;Data do ponto de contato do comprador&quot;. Isso permite que o usuário substitua a data que [!DNL Marketo Measure] usaria para a Data do ponto de contato no registro do ponto de contato.

Isso pode ser necessário se uma lista for carregada dias/semanas/meses após a ocorrência real de um evento. Há maneiras de atualizar todos os registros de uma só vez, o que é explicado abaixo.

![](assets/5.png)

Para saber se você precisa ou não usar a Data do ponto de contato do comprador, veja como as datas são determinadas por [!DNL Marketo Measure] dependendo da [!UICONTROL Tipo de sincronização] que é selecionada para a Campanha.

Se a variável [!UICONTROL Tipo de sincronização] estiver definido como &quot;Incluir todos os membros da campanha&quot;, a prioridade de definir a Data do ponto de contato é de cima para baixo:

* Data do ponto de contato do comprador
* Data de criação do membro da campanha

Se a variável [!UICONTROL Tipo de sincronização] está definido como &quot;Incluir somente membros &quot;Respondidos&quot; da campanha,&quot; a prioridade de definir a Data do ponto de contato é de cima para baixo:

* Data do ponto de contato do comprador
* Data da primeira resposta
   * A Primeira Data de Resposta é definida automaticamente assim que o Status é alterado para &quot;Respondido&quot; e é um padrão [!DNL Salesforce] campo que não pode ser alterado

* Data de criação do membro da campanha

## Atualização em massa da data do ponto de contato {#bulk-update-touchpoint-date}

A data do ponto de contato de atualização em massa está incluída na instalada [!DNL Marketo Measure] [!DNL Salesforce] O pacote e o botão precisarão ser adicionados ao layout da página.

![](assets/6.png)

Se um grande número de registros de Membros da campanha precisar ser atualizado, você poderá usar o [!UICONTROL Atualização em massa da data do ponto de contato] botão para editar em massa.

Se houver casos de uso exclusivos que essa interface não aborda, você também poderá usar [Carregador de dados](https://dataloader.io/){target="_blank"} para exportar os registros, faça a alteração e faça upload dos registros novamente no.

Comece procurando os registros e filtrando aqueles para os quais deseja definir uma Data de ponto de contato do comprador.

>[!CAUTION]
>
>Há uma pesquisa que não funciona, exibida no exemplo abaixo. A interface do usuário não oferece suporte à pesquisa de Datas de ponto de contato do comprador nulas (a pesquisa abaixo não funcionaria):

![](assets/7.png)

Se você não precisar usar a pesquisa e apenas aplicar as datas a cada registro de Membro da campanha, use o &quot;[!UICONTROL Incluir todos os registros]&quot; (veja a captura de tela abaixo), que verificará todos os registros em todas as páginas.

Selecione a data e a hora no seletor de calendário. Se desejar selecionar a data e a hora atuais, clique na data/hora mostrada ao lado do seletor de calendário.

Depois que a data e a hora estiverem definidas, clique no link **[!UICONTROL Atualizar registros selecionados]** botão para aplicar as alterações.

![](assets/8.png)

## Custos de campanha {#campaign-costs}

Saiba tudo sobre os custos de campanha [neste artigo](/help/marketing-spend/spend-management/crm-campaign-costs.md){target="_blank"}.

## Remoção de membro da campanha {#campaign-member-removal}

A forma como [!DNL Marketo Measure] mantém todos os registros excluídos no Salesforce, sejam clientes potenciais excluídos, contas ou oportunidades, é visualizar esses registros na API e rastrear se uma entrada está marcada como &quot;IsDeleted&quot;. Infelizmente, com os Membros da campanha, o Salesforce introduziu uma maneira diferente de excluir esses Membros da campanha de uma campanha, que na verdade são marcados como &quot;removidos&quot; em vez de &quot;excluídos&quot;. Portanto, o problema é que os pontos de contato ainda viviam no Salesforce e estavam relacionados aos Membros excluídos da campanha.

Para contornar esse problema, [!DNL Marketo Measure] criou um [!DNL Marketo Measure] Objeto de histórico e um acionador para rastrear sempre que os Membros da campanha forem removidos e, em seguida, excluir o ponto de contato correspondente. **Você precisará [!DNL Marketo Measure] Pacote do Marketing Analytics V6.15 ou superior** para usar este recurso.

>[!CAUTION]
>
>Lembre-se que esse acionador não rastreia nenhum membro da campanha que tenha sido removido no passado, portanto, ele só funciona a partir de agora. Se precisar remover um grande número de pontos de contato de membros anteriores da campanha, entre em contato com [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Tutorials: Campos de objeto da campanha](https://experienceleague.adobe.com/en/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-salesforce/campaign-object-fields){target="_blank"}
>
>[[!DNL Marketo Measure] Tutorials: Mapeamento de canais offline](https://experienceleague.adobe.com/en/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-salesforce/mapping-offline-channels){target="_blank"}
