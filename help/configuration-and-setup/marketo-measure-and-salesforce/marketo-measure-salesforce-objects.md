---
unique-page-id: 18874582
description: "[!DNL Marketo Measure] Objetos do Salesforce - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Objetos do Salesforce"
exl-id: d5d6f334-6531-40fa-b043-75b49d8f43d5
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '949'
ht-degree: 1%

---

# [!DNL Marketo Measure] Objetos do Salesforce {#marketo-measure-salesforce-objects}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

When [!DNL Marketo Measure] está instalado no [!DNL Salesforce] (SFDC), vários [!DNL Marketo Measure] Objetos são adicionados. Este artigo fornece uma explicação de vários desses [!DNL Marketo Measure] Objetos. Alguns objetos que [!DNL Marketo Measure] adiciona a [!DNL Salesforce] são:

* [Ponto de contato do comprador](#touchpoint)
* [Ponto de contato da atribuição do comprador](#attribution)
* [[!DNL Marketo Measure] Pessoa](#person)
* [[!DNL Marketo Measure] Teste A/B](#ab)
* [[!DNL Marketo Measure] Eventos](#events)

Os pontos de contato capturados pelos itens que deseja rastrear serão gravados nos objetos personalizados criados pela instalação do [!DNL Bizible Salesforce] pacote.

[!DNL Marketo Measure] Os objetos estão relacionados a padrões específicos [!DNL Salesforce] Objetos. Isso permite criar relatórios sobre [!DNL Marketo Measure] e [!DNL Salesforce] Objetos juntos. A tabela abaixo mostra qual [!DNL Salesforce] O objeto [!DNL Marketo Measure] O objeto está relacionado a.

![](assets/1-1.png)

## Ponto de contato do comprador {#buyer-touchpoint}

O [!UICONTROL Ponto de contato do comprador] (BT) Object conta a história de marketing de um indivíduo. Ele abriga todos os dados relacionados aos pontos de contato de marketing gerados por Leads e Contatos. O BT mostra informações como de que canal de marketing o ponto de contato veio, ou de qual Campanha de publicidade trouxe esse lead/contato específico para o seu site.

O objeto BT é visível nas páginas de Clientes Potenciais e Contatos como um **Lista Relacionada** (veja a imagem abaixo).

![](assets/2-1.png)

A Lista relacionada a BT exibe todos os pontos de contato que pertencem ao Cliente Potencial ou Contato. Na lista são personalizadas [!DNL Marketo Measure] Campos que fornecem mais detalhes sobre cada ponto de contato. Clicar no número da ID do ponto de contato do comprador direcionará você para a página Detalhes do ponto de contato do comprador, que fornece ainda mais detalhes sobre o ponto de contato, como a primeira página da Web que o Cliente potencial/Contato visitou durante a sessão da Web (**página de aterrissagem**).

## Ponto de contato da atribuição do comprador {#buyer-attribution-touchpoint}

O [!UICONTROL Ponto de contato da atribuição do comprador] Object conta a história das interações de marketing de seus contatos relacionadas a uma oportunidade. Ele exibe a variável *atribuição* dados relacionados aos pontos de contato de marketing. Este objeto permite ver quanta receita é atribuída a cada ponto de contato de marketing. O tipo de modelo de atribuição que você está usando determinará a porcentagem da receita atribuída aos pontos de contato.

Os Pontos de Contato de Atribuição de Comprador (BATs) só são criados depois que uma Oportunidade é criada, que se relaciona aos contatos que têm dados de Ponto de Contato de Comprador (BT). As MTD não serão criadas sem uma Oportunidade. Após a criação da Oportunidade, o objeto BAT utilizará a variável [!DNL Salesforce] *Valor* no campo Oportunidade para entender quanta receita será atribuída aos pontos de contato.

A **workflow** deve ser criada se você usar um [campo Valor personalizado](/help/advanced-marketo-measure-features/custom-revenue-amount/using-a-custom-revenue-amount-field.md) para mostrar a receita no Objeto da Oportunidade. [!DNL Marketo Measure] O não pode ler as informações encontradas nos campos Quantia personalizada e, consequentemente, não pode preencher os dados de atribuição de receita nos pontos de contato. Esse workflow usará o **[!DNL Marketo Measure]Valor da Oportunidade** Campo, um dos [!DNL Marketo Measure] campos personalizados, para mapear o valor da receita do campo Quantia personalizada para o campo Quantia da Oportunidade .

![](assets/3-1.png)

O objeto BAT é visível na variável [!UICONTROL Oportunidade], [!UICONTROL Contato]e [!UICONTROL Conta] Objeto como uma Lista Relacionada. Essa lista exibe todos os pontos de contato com os dados de atribuição pertencentes a uma Oportunidade. Clicar na ID do ponto de contato da atribuição do comprador direcionará você para a página Detalhes do ponto de contato da atribuição do comprador. Aqui você poderá ver dados de atribuição mais específicos e informações sobre de onde veio o ponto de contato (semelhantes ao que é fornecido pelo Objeto de ponto de contato do comprador).

## [!DNL Marketo Measure] Pessoa {#marketo-measure-person}

O [!DNL Marketo Measure] Objeto Pessoa relaciona os objetos Lead e Contact. Pronto para uso, o Salesforce não oferece a opção de criar relatórios usando o objeto de lead e contato no mesmo relatório. Ao se relacionar ao Objeto de Cliente Potencial e Contato, a variável [!DNL Marketo Measure] Pessoa permite criar relatórios sobre ambos os objetos no mesmo relatório. Isso é especialmente útil quando um lead é convertido em um contato. Em um [!DNL Marketo Measure] Registro de pessoa você verá uma pesquisa para o registro de informação privilegiada e/ou contato correspondente, uma lista relacionada dos pontos de contato vinculados à pessoa e a ID de pessoa (que é sempre o endereço de e-mail do cliente potencial/contato). Como a variável [!DNL Marketo Measure] A pessoa se relaciona ao Objeto de Cliente Potencial e Contato, nunca haverá um [!DNL Marketo Measure] Registro de pessoa vinculado a um ponto de contato de atribuição do comprador. Abaixo está um exemplo de um [!DNL Marketo Measure] Registro de pessoa no Salesforce:

![](assets/4.png)

## [!DNL Marketo Measure] Teste A/B {#marketo-measure-a-b-test}

Se você estiver executando testes A/B por meio de [!DNL Optimizely] ou VWO (Visual Web Otimizer), você pode conectar essas contas ao seu [!DNL Marketo Measure] para exibir dados de teste A/B no Salesforce. O [!DNL Marketo Measure] O objeto de teste A/B basicamente permite obter dados de teste A/B do Otimizely/VWO e vincular os dados aos Leads e Contatos.

![](assets/5.png)

O [!DNL Marketo Measure] O Objeto de Teste A/B é exibido como uma Lista Relacionada no [!UICONTROL Clientes potenciais], [!UICONTROL Contatos] e [!UICONTROL Oportunidade] páginas. A lista exibe todos os experimentos e variações que você está executando Otimizamente ou VWO, e permite que você veja os experimentos/variações conforme elas se relacionam a Clientes Potenciais e Contatos específicos.

## [!DNL Marketo Measure] Eventos {#marketo-measure-events}

O [!DNL Marketo Measure] O objeto Eventos permite que você rastreie eventos específicos que ocorrem em seu site. Para rastrear eventos específicos que ocorrem em seu site, o código personalizado deve ser adicionado às suas páginas, além do [!DNL Marketo Measure] Javascript. As informações capturadas serão exibidas no [!DNL Marketo Measure] Lista Relacionada a Objetos, que pode ser encontrada na [!UICONTROL Clientes potenciais], [!UICONTROL Contatos] e [!UICONTROL Oportunidade] páginas. O [!DNL Marketo Measure] Objeto de Eventos *não* vincular aos dados de atribuição. A finalidade deste Objeto é ver se as pessoas estão realizando ações específicas em seu site.

## [!DNL Marketo Measure] Campos {#marketo-measure-fields}

Dados capturados pela [!DNL Marketo Measure] O JavaScript será enviado para o [!DNL Marketo Measure] Campos dentro de nossa [!DNL Marketo Measure] Objetos. Certos campos só estarão presentes em determinados objetos. Para um glossário de todas as [!DNL Marketo Measure] campos, por favor [clique aqui](/help/introduction-to-marketo-measure/overview-resources/glossary-of-marketo-measure-fields.md). Para uma visualização do qual [!DNL Marketo Measure] Cada objeto [!DNL Marketo Measure] Campo relacionado a, por favor [clique aqui](/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-object-and-field-taxonomy.md).

## [!DNL Marketo Measure] Relatórios e painéis {#marketo-measure-reports-and-dashboards}

O [!DNL Marketo Measure] Relatórios e painéis que são adicionados a seus [!DNL Salesforce] O fornece recursos de relatórios e visualização de dados prontos para uso. Elas são básicas [!DNL Marketo Measure] relatórios para permitir que você organize, analise e entenda rapidamente os dados do ponto de contato.
