---
unique-page-id: 18874574
description: “Campos do [!DNL Marketo Measure] em objetos padrão do  [!DNL Salesforce]  -  [!DNL Marketo Measure]”
title: “Campos do [!DNL Marketo Measure] em objetos padrão do  [!DNL Salesforce] ”
exl-id: c9d5254f-06bd-4813-bb29-1a4955b37041
feature: Salesforce
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: ht
source-wordcount: '1292'
ht-degree: 100%

---

# Campos do [!DNL Marketo Measure] em objetos padrão do [!DNL Salesforce] {#marketo-measure-fields-on-standard-salesforce-objects}

>[!NOTE]
>
>Você pode ver instruções específicas para o “[!DNL Marketo Measure]” na documentação, mas ainda notar o termo “Bizible” no CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

Saiba mais sobre a adição de vários campos do [!DNL Marketo Measure] aos objetos padrão do [!DNL Salesforce].

## Conta {#account}

Pontuação preditiva de engajamento: esse campo é usado com o recurso de ABM para fornecer uma pontuação relacionada ao grau de engajamento da conta e leva em consideração vários fatores, como a recenticidade das exibições de página, quantos contatos estão associados à conta, se há uma oportunidade fechada etc.

## Caso {#case}

Adicionamos campos ao objeto Caso relacionado aos marcos de contato “Primeiro contato” e “Geração de leads”. Essa opção é para clientes que usam o objeto Caso no lugar de Lead ou Contato, e também proporciona outra maneira de visualizar os dados caso o(a) cliente opte por não criar registros de ponto de contato.

Origem do ponto de contato (FT): esta é a origem da interação do primeiro contato.

Origem do ponto de contato (LC): esta é a origem da interação do contato de geração de leads.

Canal de marketing (FT): é o canal de marketing da interação de primeiro contato.

Canal de marketing (LC): este é o canal de marketing da interação de contato de geração de leads.

Nome da campanha publicitária (FT): é a campanha de UTM, a campanha publicitária das redes de publicidade ou a campanha do [!DNL Salesforce] da interação de primeiro contato.

Nome da campanha publicitária (LC): é a campanha de UTM, a campanha publicitária das redes de publicidade ou a campanha do [!DNL Salesforce] da interação do contato de [!UICONTROL geração de leads].

Página de destino (FT): esta é a página de destino da interação de primeiro contato.

Página de destino (LC): é a página de destino da interação de contato de [!UICONTROL geração de leads].

Data do ponto de contato (FT): esta é a data da interação de primeiro contato.

Data do ponto de contato (LC): esta é a data da interação do contato de geração de leads.

## Campanha {#campaign}

Utiliza-se apenas 4 campos, 1 botão e 1 regra de validação.

UniqueID: esse campo é usado internamente para rastrear as diferentes campanhas sincronizadas com o [!DNL Marketo Measure].

Habilitar Buyer Touchpoints: esse campo é destinado à sincronização real de campanhas para a inclusão de atribuição offline e dados históricos.

Data de início do ponto de contato: esse campo é usado para definir uma data inicial de aplicação de pontos de contato a campanhas históricas.

Data final do ponto de contato: esse campo é usado para definir uma data final de aplicação de pontos de contato a campanhas históricas. Um exemplo comum seria a inclusão de campanhas digitais anteriores ao [!DNL Marketo Measure] e, em seguida, a definição da data final como o dia da aplicação do script.

Atualizar em massa a data do ponto de contato (botão): esse botão é usado para gerenciar a data do ponto de contato de membros da campanha quando ela é sincronizada, pois, inicialmente, usamos como referência a data de associação da campanha ou a data da primeira resposta. Caso esses campos de data não sejam uma representação precisa da data real do ponto de contato, utilize esse botão para definir a data do ponto de contato.

Atualizar atribuição do [!DNL Marketo Measure] (regra de validação): essa regra se tornou obsoleta após a versão 6.0 do pacote.

## Membro de campanha {#campaign-member}

O pacote conta com 5 campos e 1 acionador Apex.

Status do ponto de contato (Lead): é um campo de diagnóstico relacionado a um recurso que não é ativado por padrão. Use esse campo para entender se um ponto de contato foi criado com base no registro de lead relacionado ou, se não foi, compreender o motivo por trás disso.

Status do ponto de contato (Contato): é um campo de diagnóstico relacionado a um recurso que não é ativado por padrão. Use esse campo para entender se um ponto de contato foi criado com base no registro de contato relacionado ou, se não foi, compreender o motivo por trás disso.

Status do ponto de contato (Oportunidade): é um campo de diagnóstico relacionado a um recurso que não é ativado por padrão. Use esse campo para entender se um ponto de contato foi criado com base no registro de oportunidade relacionado ou, se não foi, compreender o motivo por trás disso.

Data do status do ponto de contato: é a data de preenchimento dos campos de diagnóstico.

Data do Buyer Touchpoint: está relacionada ao botão [!UICONTROL Atualizar em massa a data do ponto de contato] no objeto Campanha. Use essa opção para aplicar a data do ponto de contato definida a membros da campanha.

OnCampaignMemberDelete: por padrão, o [!DNL Salesforce] não aparece quando há a exclusão de membros da campanha, o que pode causar problemas em relatórios de atribuição precisos. Quando ocorre a exclusão de membros da campanha, essa opção é acionada e orienta o [!DNL Marketo Measure] a remover pontos de contato relacionados a tais membros de campanha não existentes.

## Contato {#contact}

Adicionamos campos ao objeto Contato relacionado aos marcos de contato de “Primeiro contato” e “Geração de leads”. Isso é destinado a clientes que preferem relatar a atribuição diretamente nos campos em vez de criar registros de ponto de contato. A maioria de nossos clientes segue a rota de registro de touchpoint, mas também usa esses campos em sua plataforma de automação.

Origem do ponto de contato (FT): esta é a origem da interação do primeiro contato.


Origem do ponto de contato (LC): esta é a origem da interação do contato de geração de leads.

Canal de marketing (FT): é o canal de marketing da interação de primeiro contato.

Canal de marketing (LC): este é o canal de marketing da interação de contato de geração de leads.

Nome da campanha publicitária (FT): é a campanha UTM, a campanha publicitária das redes de publicidade ou a campanha da interação de primeiro contato do [!DNL Salesforce].

Nome da campanha publicitária (LC): é a campanha UTM, a campanha publicitária das redes de publicidade ou a campanha de [!UICONTROL geração de leads] da interação de contato do [!DNL Salesforce].

Página de destino (FT): esta é a página de destino da interação de primeiro contato.

Página de destino (LC): esta é a página de destino da interação de contato de [!UICONTROL geração de leads].

Data do ponto de contato (FT): esta é a data da interação de primeiro contato.

Data do ponto de contato (LC): esta é a data da interação do contato de geração de leads.

BizibleID: usada em relação às atribuições de atividades e à integração de métricas de rastreamento de chamada para associação do contato ao ponto de contato.

## Lead {#lead}

Adicionamos campos ao objeto Lead relacionado aos marcos de contato “Primeiro contato” e “Geração de leads”. Isso é destinado a clientes que preferem relatar a atribuição diretamente nos campos em vez de criar registros de ponto de contato. A maioria de nossos clientes segue a rota de registro de touchpoint, mas também usa esses campos em sua plataforma de automação.

Origem do ponto de contato (FT): esta é a origem da interação do primeiro contato.


Origem do ponto de contato (LC): esta é a origem da interação do contato de geração de leads.

Canal de marketing (FT): é o canal de marketing da interação de primeiro contato.

Canal de marketing (LC): este é o canal de marketing da interação de contato de geração de leads.

Nome da campanha publicitária (FT): esta é a campanha UTM, a campanha publicitária das redes de publicidade ou a campanha da interação de primeiro contato do [!DNL Salesforce].

Nome da campanha publicitária (LC): esta é a campanha UTM, a campanha publicitária das redes de publicidade ou a campanha da interação de contato de geração de leads do [!DNL Salesforce].

Página de destino (FT): esta é a página de destino da interação de primeiro contato.

Página de destino (LC): esta é a página de destino da interação de contato de geração de leads.

Data do ponto de contato (FT): esta é a data da interação de primeiro contato.

Data do ponto de contato (LC): esta é a data da interação do contato de geração de leads.

BizibleID: usada em relação às atribuições de atividades e à integração de métricas de rastreamento de chamada para associação do lead ao ponto de contato.

## Conta {#account-1}

Isso é usado para o mapeamento de “Lead” para “Conta” do recurso ABM. Preencha esse campo para criar a relação de pesquisa entre os dois objetos.

## Oportunidade {#opportunity}

Valor da oportunidade do [!DNL Marketo Measure]: esse campo é usado quando um campo personalizado de quantidade é utilizado na oportunidade. Mapeie o valor desse campo personalizado para a quantidade de oportunidades do [!DNL Marketo Measure] usando um fluxo de trabalho e leia este campo para os campos Atribuição de receita no objeto Buyer Attribution Touchpoint.

## Atividade {#activity}

BizibleID: permite relacionar um ponto de contato a atividades de atribuição e à integração de métricas de rastreamento de chamada.

Data do Buyer Touchpoint: é um campo que pode ser preenchido por meio de um fluxo de trabalho para ser usado como a data de atribuição de atividades e é preenchido para que a integração de métricas de rastreamento de chamada saiba quando a interação ocorreu.
