---
description: Orientação de datas de sincronização do Campaign para usuários do Marketo Measure
title: Datas de sincronização da campanha
exl-id: 66ce9948-9297-47ef-8b16-0ac45c5664fc
feature: Channels
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '503'
ht-degree: 4%

---

# Datas de sincronização da campanha {#campaign-sync-dates}

Saiba o que o recurso Datas de sincronização do Campaign faz, bem como ofereça alguns casos de uso para esse recurso.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado do aplicativo](/help/channel-tracking-and-setup/custom-campaign-sync.md){target="_blank"}.

**[!DNL Marketo Measure]Pacote Necessário: 6.9 ou superior**

Este recurso consiste em dois campos de data simples no [!DNL Salesforce] Objeto de campanha:

* Data de início do ponto de contato
* Data de término do ponto de contato

Quando os Pontos de contato do comprador estiverem ativados em uma campanha específica, as Datas de sincronização da campanha permitirão definir os parâmetros de Data do ponto de contato na campanha individual. Portanto, se você adicionasse uma Data de Término do Ponto de Contato em 1º de março de 2017, o [!DNL Marketo Measure] criaria apenas Pontos de Contato em Membros da Campanha que foram adicionados à Campanha antes dessa data. [!DNL Marketo Measure] não criará pontos de contato para membros da campanha que foram adicionados após 1º de março de 2017.

![Quando os Pontos de Contato do Comprador estiverem habilitados em uma campanha específica, Datas de Sincronização da Campanha](assets/legacy-processes-3.gif)

Da mesma forma, se você adicionasse uma Data de Início do Ponto de Contato em uma Campanha (digamos, 1º de janeiro de 2017), o [!DNL Marketo Measure] não criaria Pontos de Contato em Membros da Campanha que foram adicionados à Campanha antes de 1º de janeiro de 2017. Não é necessário adicionar uma Data inicial do ponto de contato se você adicionar uma Data final do ponto de contato e vice-versa.

## Casos de uso {#use-cases}

**Pontos de contato de preenchimento retroativo**

Pode haver momentos em que uma equipe de marketing deixe de adicionar parâmetros utm a um esforço de marketing específico. As Datas de sincronização da campanha permitem que você (se usar campanhas do SFDC para esforços online) preencha retroativamente alguns dados perdidos. Digamos que você esteja executando uma campanha de email que começou em 1º de maio, mas sua equipe não adicionou parâmetros utm nessa campanha de email até 15 de maio. Se você estiver rastreando conversões de email por meio de uma campanha do SFDC, será possível definir uma Data de término do ponto de contato para 15 de maio nessa campanha e habilitar os Pontos de contato para os membros &quot;Respondidos&quot; da campanha. Esta ação instruirá [!DNL Marketo Measure] a criar Pontos de Contato para todas essas respostas até 15 de maio.

**Pontos de contato de associação de campanha retroativa**

Se você for um novo cliente do [!DNL Marketo Measure], talvez esteja interessado em trazer alguns dos dados de marketing que tem monitorado por meio das Campanhas do SFDC. No entanto, se você ativasse os Pontos de Contato para suas campanhas do SFDC online, poderia ter um problema de atribuição de dupla contagem, pois [!DNL Marketo Measure] está criando automaticamente Pontos de Contato para suas iniciativas de marketing online. Em um esforço para evitar a dupla contagem de dados, você pode usar as Datas de término do ponto de contato do Campaign para definir um limite nas datas do ponto de contato criadas por [!DNL Marketo Measure] na campanha do SFDC. Por exemplo, se você quiser adicionar conversões retroativas a uma campanha social que está rastreando no SFDC, mas entender que adicionou o JavaScript [!DNL Marketo Measure] (que está criando Pontos de Contato online) em 1º de julho, poderá editar a Campanha do SFDC Social para conter uma Data de término do Ponto de Contato igual a 1º de julho e habilitar Pontos de Contato do Comprador para essa campanha.

Pode haver muitos outros casos de uso para datas de término de ponto de contato. Se precisar de ajuda para descobrir uma situação específica, entre em contato com o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
