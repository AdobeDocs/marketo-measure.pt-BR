---
unique-page-id: 18874574
description: "[!DNL Marketo Measure] Campos no Standard [!DNL Salesforce] Objetos - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Campos no Standard [!DNL Salesforce] Objetos"
exl-id: c9d5254f-06bd-4813-bb29-1a4955b37041
source-git-commit: b910e5aedb9e178058f7af9a6907a1039458ce7a
workflow-type: tm+mt
source-wordcount: '1285'
ht-degree: 0%

---

# [!DNL Marketo Measure] Campos no Standard [!DNL Salesforce] Objetos {#marketo-measure-fields-on-standard-salesforce-objects}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

Saiba mais sobre as várias [!DNL Marketo Measure] campos adicionados a [!DNL Salesforce] objetos padrão.

## Conta {#account}

Pontuação preditiva de engajamento: Este campo é usado com nosso recurso ABM para fornecer uma pontuação relacionada ao nível de participação da Conta e levar em consideração muitos fatores, como a recenticidade das exibições de página, quantos contatos estão associados à conta, há uma opção fechada etc.

## Caso {#case}

Adicionamos campos ao objeto Caso relacionado aos marcos de primeiro contato e de Criação de leads. Isso é para clientes que usam o objeto Caso no lugar do Cliente Potencial ou Contato e também serve a finalidade de outra maneira de visualizar os dados caso um cliente não queira que criemos registros de Ponto de Contato.

Fonte do ponto de contato (FT): Essa é a fonte da interação de primeiro toque.

Fonte do ponto de contato (LC): Essa é a fonte da interação de toque de criação de lead.

Canal de marketing (FT): Este é o canal de marketing da interação de primeiro toque.

Canal de Marketing (LC): Este é o canal de marketing da interação de toque de criação de leads.

Nome da campanha de publicidade (FT): Essa é a campanha da UTM, a campanha de anúncios das redes de anúncios ou [!DNL Salesforce] Campanha da interação de primeiro toque.

Nome da campanha de publicidade (LC): Essa é a campanha da UTM, a campanha de anúncios das redes de anúncios ou [!DNL Salesforce] Campanha do [!UICONTROL criação de leads] interação com toque.

Página de aterrissagem (FT): Esta é a página inicial da interação de primeiro toque.

Página de aterrissagem (LC): Esta é a página de aterrissagem do [!UICONTROL criação de leads] interação com toque.

Data do ponto de contato (FT): Esta é a data da interação de primeiro toque.

Data do ponto de contato (LC): Esta é a data da interação de toque de criação de lead.

## Campanha {#campaign}

Há apenas 4 campos adicionados, 1 botão e 1 regra de validação.

UniqueID: Esse campo é usado internamente para rastrear as diferentes Campanhas sincronizadas com o [!DNL Marketo Measure].

Ativar pontos de contato do comprador: Este campo é para a sincronização real de Campanhas para inclusão de atribuição offline e dados históricos.

Data de início do ponto de contato: Este campo é usado para definir uma data de início da aplicação de pontos de contato a campanhas históricas.

Data final do ponto de contato: Este campo é usado para definir uma data final para aplicar pontos de contato a campanhas históricas. Um exemplo comum seria a inclusão de campanhas digitais[!DNL Marketo Measure] e, em seguida, definir a data de término como o dia em que o script foi aplicado.

Data do ponto de contato de atualização em massa (botão): Esse botão é usado para gerenciar a data do ponto de contato dos membros da campanha quando a campanha é sincronizada, pois referenciaremos a data da associação da campanha ou a primeira data da resposta pronta para uso. Caso esses campos de data não sejam uma representação precisa da data do ponto de contato real, usaríamos esse botão para definir a data do ponto de contato.

Atualizar [!DNL Marketo Measure] Atribuição (Regra de validação): Essa regra é obsoleta após a versão 6.0 do pacote.

## Membro de campanha {#campaign-member}

Há 5 campos e 1 Acionador de Apex adicionado com o pacote.

Status do ponto de contato (lead): Este é um campo de diagnóstico relacionado a um recurso que não está ativado imediatamente. Usamos isso para entender se um ponto de contato foi criado em relação ao registro de lead relacionado ou, se não, por quê.

Status do ponto de contato (Contato): Este é um campo de diagnóstico relacionado a um recurso que não está ativado imediatamente. Usamos isso para entender se um ponto de contato foi criado em relação ao registro de contato relacionado ou, em caso negativo, por quê.

Status do ponto de contato (Oportunidade): Este é um campo de diagnóstico relacionado a um recurso que não está ativado imediatamente. Usamos isso para entender se um ponto de contato foi criado em relação ao registro de Oportunidade relacionado ou, em caso negativo, por quê.

Data do status do ponto de contato: Esta é a data em que os campos de diagnóstico foram preenchidos.

Data do ponto de contato do comprador: Isso está relacionado ao [!UICONTROL Data do ponto de contato de atualização em massa] no objeto Campaign. Quando isso é usado, aplicamos a data do ponto de contato definida ao Membro da campanha.

OnCampaignMemberDelete: Pronto para uso, [!DNL Salesforce] não aparece quando os membros da campanha são excluídos, o que pode causar problemas com relatórios de atribuição precisos. Quando um Membro da campanha é excluído, isso é acionado para informar [!DNL Marketo Measure] para remover pontos de contato relacionados a esse membro de campanha inexistente.

## Contato {#contact}

Adicionamos campos ao objeto Contato relacionados aos marcos de toque Primeiro contato e Criação de lead . Isso é para clientes que preferem ter a atribuição relatada diretamente aos campos em vez de criar registros de ponto de contato. A maioria de nossos clientes segue a rota de registro do ponto de contato, mas também usa esses campos em sua plataforma de automação.

Fonte do ponto de contato (FT): Essa é a fonte da interação de primeiro toque.

Fonte do ponto de contato (LC): Essa é a fonte da interação de toque de criação de lead.

Canal de marketing (FT): Este é o canal de marketing da interação de primeiro toque.

Canal de Marketing (LC): Este é o canal de marketing da interação de toque de criação de leads.

Nome da campanha de publicidade (FT): Essa é a campanha da UTM, a campanha de anúncios das redes de anúncios ou [!DNL Salesforce] Campanha da interação de primeiro toque.

Nome da campanha de publicidade (LC): Essa é a campanha da UTM, a campanha de anúncios das redes de anúncios ou [!DNL Salesforce] Campanha do [!UICONTROL criação de leads] interação com toque.

Página de aterrissagem (FT): Esta é a página inicial da interação de primeiro toque.

Página de aterrissagem (LC): Esta é a página de aterrissagem do [!UICONTROL criação de leads] interação com toque.

Data do ponto de contato (FT): Esta é a data da interação de primeiro toque.

Data do ponto de contato (LC): Esta é a data da interação de toque de criação de lead.

BizibleID: Isso é usado em relação à atribuição de atividades e à integração calltrackingmetrics para Associação de contato com o ponto de contato.

## Lead {#lead}

Adicionamos campos ao objeto Lead relacionado aos marcos de primeiro contato e de Criação de leads. Isso é para clientes que preferem ter a atribuição relatada diretamente aos campos em vez de criar registros de ponto de contato. A maioria de nossos clientes segue a rota de registro do ponto de contato, mas também usa esses campos em sua plataforma de automação.

Fonte do ponto de contato (FT): Essa é a fonte da interação de primeiro toque.

Fonte do ponto de contato (LC): Essa é a fonte da interação de toque de criação de lead.

Canal de marketing (FT): Este é o canal de marketing da interação de primeiro toque.

Canal de Marketing (LC): Este é o canal de marketing da interação de toque de criação de leads.

Nome da campanha de publicidade (FT): Essa é a campanha da UTM, a campanha de anúncios das redes de anúncios ou [!DNL Salesforce] Campanha da interação de primeiro toque.

Nome da campanha de publicidade (LC): Essa é a campanha da UTM, a campanha de anúncios das redes de anúncios ou [!DNL Salesforce] Campanha da interação de toque de criação de cliente potencial.

Página de aterrissagem (FT): Esta é a página inicial da interação de primeiro toque.

Página de aterrissagem (LC): Esta é a página inicial da interação de toque de criação de lead.

Data do ponto de contato (FT): Esta é a data da interação de primeiro toque.

Data do ponto de contato (LC): Esta é a data da interação de toque de criação de lead.

BizibleID: Isso é usado em relação à atribuição de atividades e à integração calltrackingmetrics para associação de cliente potencial ao ponto de contato.

## Conta {#account-1}

Isso é usado para nosso mapeamento de lead para a conta para nosso recurso de ABM. Preenchemos esse campo para criar a relação de pesquisa entre os dois objetos.

## Oportunidade {#opportunity}

[!DNL Marketo Measure] Valor da Oportunidade: Esse campo é usado na situação em que um campo de valor personalizado é aproveitado na Oportunidade. Mapeamos esse valor de campo personalizado para [!DNL Marketo Measure] Quantia da Oportunidade usando um fluxo de trabalho e, em seguida, leia este campo para os campos de atribuição Receita no objeto Ponto de Contato da Atribuição do Comprador.

## Atividade {#activity}

BizibleID: Isso é para nós relacionar um ponto de contato com atividades para nossa atribuição de atividade e integração de métricas de rastreamento de chamada.

Data do ponto de contato do comprador: Este é um campo que pode ser preenchido por meio de um workflow para usar como a data da atribuição das atividades e será preenchido para nossa integração calltrackingmetrics saber quando a interação ocorreu.
