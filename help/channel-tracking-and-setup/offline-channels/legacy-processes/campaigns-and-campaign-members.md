---
description: Orientação de campanhas e membros da campanha para usuários do Marketo Measure
title: Campanhas e membros da campanha
exl-id: e4e2b154-39ac-4295-a541-7fa6112672e3
feature: Channels
hidefromtoc: true
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '1169'
ht-degree: 94%

---

# Campanhas e membros da campanha {#campaigns-and-campaign-members}

As campanhas do [!DNL Salesforce] têm como objetivo rastrear listas de leads e contatos associadas a um programa de marketing ou atividade. Por exemplo, estes podem ter sido webinários, registros ou visitas em estandes. Profissionais de marketing podem decidir se uma campanha deve ser creditada em uma jornada de ponto de contato.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado do aplicativo](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md){target="_blank"}.

## Habilitar pontos de contato {#enabling-touchpoints}

O pacote [!DNL Marketo Measure] [!DNL Salesforce] incluirá um campo chamado “Habilitar Buyer Touchpoints” no objeto da campanha. Depois que o campo for adicionado ao layout da página, ele terá esta aparência:

![](assets/dynamics-lists-1.png)

As opções disponíveis na lista de seleção são:

![](assets/dynamics-lists-10.png)

* Incluir todos os membros da campanha - Cada lead ou contato adicionado à campanha receberá um ponto de contato associado a ela.
* Incluir somente membros “respondidos” da campanha - Somente leads ou contatos com o status de membro da campanha “Respondido” receberão um ponto de contato associado a essa campanha.
* Excluir todos os membros da campanha - Nenhum lead ou contato receberá um ponto de contato associado a essa campanha.

Observe que membros da campanha devem ter um endereço de email associado ao seu registro para que o [!DNL Marketo Measure] possa criar um ponto de contato. Sem um endereço de email, o [!DNL Marketo Measure] não atribuirá um ponto de contato ao membro da campanha.

## Datas de sincronização da campanha {#campaign-sync-dates}

Com a instalação do pacote, o [!DNL Marketo Measure] também incluirá dois campos de data no objeto da campanha: a data inicial e a data final do ponto de contato.

Essas datas informam ao [!DNL Marketo Measure] quando devemos começar ou parar de incluir membros da campanha na jornada do ponto de contato. Você pode definir uma data, ou ambas, ou nenhuma.

## Caso de uso para a data inicial do ponto de contato {#use-case-for-touchpoint-start-date}

A data inicial pode ser usada caso uma campanha existente seja usada para rastrear leads e contatos, mas o usuário só deseja começar a medição quando novos sistemas ou processos estiverem em vigor. Logo, decide definir uma data inicial assim que o [!DNL Marketo Measure] começar a rastrear membros da campanha.

## Caso de uso para a data final do ponto de contato {#use-case-for-touchpoint-end-date}

Se antes de usar o [!DNL Marketo Measure], você usou uma plataforma de automação de marketing que rastreava as interações digitais de leads (envios de formulários IE) e depois carregou tais clientes em uma campanha do [!DNL Saleforce], você pode usar o campo Data final do ponto de contato. Você definiria a data final do ponto de contato como a data inicial com o [!DNL Marketo Measure] e habilitaria os Buyer Touchpoints. Neste caso, a interação digital de cada lead é criada como um ponto de contato. O motivo pelo qual você deve definir a data final do ponto de contato como a data inicial com o [!DNL Marketo Measure] é porque, a partir desse momento, rastrearemos essas interações digitais por meio do nosso JavaScript.

![](assets/dynamics-lists-2.png)

## Membros da campanha {#campaign-members}

Membros da campanha estão aninhados em [!UICONTROL Campanhas] e estão relacionados a leads ou contatos. Só é possível adicionar leads ou contatos uma vez a uma campanha, o que pode ser problemático dependendo do caso de uso da campanha. Quando uma campanha é sincronizada, a associação à campanha é usada como uma atividade de marketing que é inserida na jornada do ponto de contato e tratada como um preenchimento de formulário.

## Status do Buyer Touchpoint {#buyer-touchpoint-status}

Se habilitado, o [!DNL Marketo Measure] enviará um valor de status para membros da campanha em 4 campos diferentes incluídos no pacote instalado: Status do ponto de contato (lead), Status do ponto de contato (contato), Status do ponto de contato (oportunidade) e Data do status do ponto de contato. Isso ajuda clientes a auditar se um ponto de contato foi criado como um Buyer Touchpoint ou Buyer Attribution Touchpoint, dependendo do objeto ao qual ele está relacionado. A data do status do ponto de contato é simplesmente a última data em que o status foi atualizado no membro da campanha.

![](assets/dynamics-lists-3.png)

## Data do Buyer Touchpoint {#buyer-touchpoint-date}

Com a instalação do pacote, o [!DNL Marketo Measure] também inclui um campo no membro da campanha rotulado como “Data do Buyer Touchpoint”. Isso permite que o usuário substitua a data que o [!DNL Marketo Measure] usaria como data do ponto de contato no registro.

Isso pode ser necessário se uma lista for carregada dias, semanas ou meses após a ocorrência de um evento. Há maneiras de atualizar todos os registros de uma só vez, as quais são explicadas abaixo.

![](assets/dynamics-lists-4.png)

Para saber se você precisa ou não usar a data do Buyer Touchpoint, veja como as datas são determinadas pelo [!DNL Marketo Measure] dependendo do [!UICONTROL tipo de sincronização] selecionado para a campanha.

Se o [!UICONTROL Tipo de sincronização] estiver definido como “Incluir todos os membros da campanha”, a prioridade de configuração da data do ponto de contato é de cima para baixo:

* Data do Buyer Touchpoint
* Data de criação de membro da campanha

Se o [!UICONTROL Tipo de sincronização] estiver definido como “Incluir somente membros ‘respondidos’ da campanha”, a prioridade de configuração da data do ponto de contato é de cima para baixo:

* Data do Buyer Touchpoint
* Data da primeira resposta
   * A Data da primeira resposta é definida automaticamente assim que o status é alterado para “Respondido” e é um campo padrão do [!DNL Salesforce] que não pode ser alterado

* Data de criação de membro da campanha

## Atualização em massa da data do ponto de contato {#bulk-update-touchpoint-date}

A atualização em massa da data do ponto de contato está incluída no pacote [!DNL Marketo Measure] [!DNL Salesforce] e o botão precisa ser adicionado ao layout da página.

![](assets/dynamics-lists-5.png)

Se um grande número de registros de membros da campanha precisar ser atualizado, você poderá usar o botão [!UICONTROL Atualização em massa da data do ponto de contato] para editar em massa.

Se houver casos de uso exclusivos que esta interface não aborda, você também poderá usar o [Carregador de Dados](https://dataloader.io/){target="_blank"} para exportar os registros, fazer a alteração e carregá-los de volta no.

Comece procurando pelos registros e filtrando aqueles para os quais deseja definir uma data do Buyer Touchpoint.

>[!CAUTION]
>
>Há uma pesquisa que não funciona, exibida no exemplo abaixo. A interface não oferece suporte à pesquisa de datas do Buyer Touchpoint nulas (a pesquisa abaixo não funciona):

![](assets/legacy-processes-10.png)

Se não for necessário usar a pesquisa, mas apenas aplicar as datas a cada registro de membro da campanha, use a caixa de seleção “[!UICONTROL Incluir todos os registros]” (veja a captura de tela abaixo), que verificará todos os registros em todas as páginas.

Selecione a data e a hora no seletor de calendário. Se desejar selecionar a data e a hora atuais, clique na data e hora mostrada ao lado do seletor de calendário.

Depois que a data e hora estiverem definidas, clique no botão **[!UICONTROL Atualizar registros selecionados]** para aplicar as alterações.

![](assets/dynamics-lists-6.png)

## Custos de campanha {#campaign-costs}

Saiba tudo sobre os custos de campanha [neste artigo](/help/marketing-spend/crm-campaign-costs.md){target="_blank"}.

## Remoção de membro da campanha {#campaign-member-removal}

A forma como o [!DNL Marketo Measure] monitora todos os registros excluídos no Salesforce, sejam leads, contas ou oportunidades excluídas, é a partir da visualização desses registros na API e do rastreio de entradas marcadas como “IsDeleted”. Infelizmente, o Salesforce introduziu uma maneira distinta para a exclusão de membros de uma campanha, marcando-os como “removidos”, ao invés de “excluídos”. Portanto, pontos de contato que estavam relacionados aos membros excluídos da campanha ainda permaneciam no Salesforce.

Para contornar esse problema, o [!DNL Marketo Measure] criou um objeto de histórico do [!DNL Marketo Measure] e um acionador para detectar quando membros da campanha forem removidos e, em seguida, excluir o ponto de contato correspondente. **Você precisará de um pacote [!DNL Marketo Measure] Marketing Analytics V6.15 ou superior** para usar este recurso.

>[!CAUTION]
>
>Lembre-se que esse acionador não rastreia nenhum membro da campanha que tenha sido removido no passado, portanto, só monitorará os definidos após sua ativação. Se precisar remover um grande número de pontos de contato de membros anteriores da campanha, contate o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Tutoriais: Campos de Objeto de Campanha](https://experienceleague.adobe.com/pt-br/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-salesforce/campaign-object-fields){target="_blank"}
>
>[[!DNL Marketo Measure] Tutoriais: Mapeando Canais Offline](https://experienceleague.adobe.com/pt-br/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-salesforce/mapping-offline-channels){target="_blank"}
