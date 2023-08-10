---
unique-page-id: 18874684
description: Datas de sincronização da campanha - [!DNL Marketo Measure] - Documentação do produto
title: Datas de sincronização da campanha
exl-id: 66ce9948-9297-47ef-8b16-0ac45c5664fc
feature: Channels
source-git-commit: e01738222e8845112892c0258cb084a4f0ebb257
workflow-type: tm+mt
source-wordcount: '502'
ht-degree: 2%

---

# Datas de sincronização da campanha {#campaign-sync-dates}

Saiba o que o recurso Datas de sincronização do Campaign faz, bem como ofereça alguns casos de uso para esse recurso.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado no aplicativo](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md){target="_blank"}.

**[!DNL Marketo Measure]Pacote obrigatório: 6.9 ou superior**

Este recurso consiste em dois campos de data simples no [!DNL Salesforce] Objeto da campanha:

* Data de início do ponto de contato
* Data de término do ponto de contato

Quando os Pontos de contato do comprador estiverem ativados em uma campanha específica, as Datas de sincronização da campanha permitirão definir os parâmetros de Data do ponto de contato na campanha individual. Portanto, se você adicionasse uma Data de término do ponto de contato em 1º de março de 2017, [!DNL Marketo Measure] O criará somente Pontos de contato em Membros da campanha que foram adicionados à campanha antes dessa data. [!DNL Marketo Measure] não criará pontos de contato para membros da campanha que foram adicionados após 1º de março de 2017.

![](assets/1.gif)

Da mesma forma, se você adicionasse uma Data de início de ponto de contato em uma campanha (1º de janeiro de 2017), [!DNL Marketo Measure] O não criará pontos de contato em membros da campanha que foram adicionados à campanha antes de 1º de janeiro de 2017. Não é necessário adicionar uma Data inicial do ponto de contato se você adicionar uma Data final do ponto de contato e vice-versa.

## Casos de uso {#use-cases}

**Pontos de contato de preenchimento retroativo**

Pode haver momentos em que uma equipe de marketing deixe de adicionar parâmetros utm a um esforço de marketing específico. As Datas de sincronização de campanha permitirão que você (se usar campanhas do SFDC para esforços online) preencha retroativamente alguns dados perdidos. Digamos que você esteja executando uma campanha de email que começou em 1º de maio, mas sua equipe não adicionou parâmetros utm nessa campanha de email até 15 de maio. Se você estiver rastreando conversões de email por meio de uma campanha do SFDC, será possível definir uma data de término do ponto de contato para essa campanha em 15 de maio e habilitar pontos de contato para membros &#39;Respondidos&#39; da campanha. Esta ação indicará [!DNL Marketo Measure] para criar pontos de contato para todas essas respostas até 15 de maio.

**Pontos de contato de associação de campanha retroativa**

Se você é novo [!DNL Marketo Measure] cliente, você pode estar interessado em trazer alguns dos dados de marketing que tem monitorado por meio de campanhas do SFDC. No entanto, se você ativasse pontos de contato para suas campanhas online do SFDC, poderia enfrentar o problema da atribuição de dupla contagem, já que [!DNL Marketo Measure] O cria automaticamente pontos de contato para suas iniciativas de marketing online. Em um esforço para evitar a dupla contagem de dados, você pode usar as Datas de término do ponto de contato do Campaign para definir um limite nas datas do ponto de contato criadas por [!DNL Marketo Measure] na campanha do SFDC. Como exemplo, se você deseja adicionar conversões retroativas para uma campanha social que você tem rastreado no SFDC, mas você entende que adicionou o [!DNL Marketo Measure] JavaScript (que está criando pontos de contato online) em 1º de julho, você pode editar a Campanha do SFDC social para conter uma Data de término do ponto de contato igual a 1º de julho e habilitar os Pontos de contato do comprador para essa campanha.

Pode haver muitos outros casos de uso para datas de término de ponto de contato. Se precisar de ajuda para descobrir uma situação específica, entre em contato com [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Universidade: campos de membro de campanha e campanha](https://learn.bizible.com/2-bizible-customization/137720https://universityonline.marketo.com/courses/bizible-fundamentals-channel-management/#/page/5c63007334d9f0367662b758)
