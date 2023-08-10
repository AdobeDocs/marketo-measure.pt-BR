---
unique-page-id: 18874574
description: "[!DNL Marketo Measure] Campos no Padrão [!DNL Salesforce] Objetos - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Campos no Padrão [!DNL Salesforce] Objetos"
exl-id: c9d5254f-06bd-4813-bb29-1a4955b37041
feature: Salesforce
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '1285'
ht-degree: 1%

---

# Objetos [!DNL Marketo Measure] Campos no padrão[!DNL Salesforce] {#marketo-measure-fields-on-standard-salesforce-objects}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Saiba mais sobre os vários [!DNL Marketo Measure] campos que são adicionados a [!DNL Salesforce] objetos padrão.

## Conta {#account}

Pontuação preditiva de engajamento: esse campo é usado com nosso recurso ABM para fornecer uma pontuação relacionada ao grau de engajamento da conta e leva em consideração vários fatores, como a recenticidade das exibições de página, quantos contatos estão associados à conta, se há uma operação fechada, etc.

## Caso {#case}

Adicionamos campos ao objeto Caso relacionado aos marcos de toque de Primeiro contato e Criação de lead. Isso é para clientes que usam o objeto Caso no lugar do cliente potencial ou contato e também serve à finalidade de outra maneira de visualizar os dados, caso um cliente não queira que criemos registros de Touchpoint.

Fonte do ponto de contato (FT): é a fonte da interação do primeiro contato.

Fonte do ponto de contato (LC): é a fonte da interação de toque da criação do lead.

Canal de marketing (FT): é o canal de marketing da interação de primeiro contato.

Canal de marketing (LC): este é o canal de marketing da interação de toque de criação de leads.

Nome da campanha de publicidade (FT): é a campanha UTM, a campanha de publicidade das redes de publicidade ou [!DNL Salesforce] Campanha da interação de primeiro contato.

Nome da campanha de publicidade (LC): esta é a campanha UTM, a campanha de publicidade das redes de publicidade ou [!DNL Salesforce] Campanha do [!UICONTROL criação de clientes potenciais] interação com toque.

Página de aterrissagem (FT): esta é a página de aterrissagem da interação de primeiro contato.

Landing Page (LC): esta é a landing page do [!UICONTROL criação de clientes potenciais] interação com toque.

Data do ponto de contato (FT): é a data da interação do primeiro contato.

Data do ponto de contato (LC): é a data da interação de toque de criação do lead.

## Campanha {#campaign}

Há apenas quatro campos adicionados, um botão e uma regra de validação.

UniqueID: esse campo é usado internamente para rastrear as diferentes Campanhas sincronizadas com o [!DNL Marketo Measure].

Ativar pontos de contato do comprador: esse campo é para a sincronização real de Campanhas para inclusão de atribuição offline e dados históricos.

Data de início do ponto de contato: esse campo é usado para definir uma data de início da aplicação de pontos de contato a campanhas históricas.

Data final do ponto de contato: esse campo é usado para definir uma data final para aplicar pontos de contato a campanhas históricas. Um exemplo comum seria a inclusão de campanhas digitais[!DNL Marketo Measure] e, em seguida, definir a data final como o dia em que o script foi aplicado.

Atualização em massa da data do ponto de contato (botão): esse botão é usado para gerenciar a data do ponto de contato dos membros da campanha quando a campanha é sincronizada, pois referenciaremos a data de associação da campanha ou a primeira data de resposta pronta para uso. Caso esses campos de data não sejam uma representação precisa da data real do ponto de contato, usaríamos esse botão para definir a data do ponto de contato.

Atualizar [!DNL Marketo Measure] Atribuição (regra de validação): essa regra se tornou obsoleta após a versão do pacote 6.0.

## Membro de campanha {#campaign-member}

Há 5 campos e 1 acionador de apex adicionado com o pacote.

Status do ponto de contato (lead): é um campo de diagnóstico relacionado a um recurso que não está ativado imediatamente. Usamos isso para entender se um ponto de contato foi criado em relação ao registro de lead relacionado ou, se não foi, por quê.

Status do ponto de contato (Contato): é um campo de diagnóstico relacionado a um recurso que não está ativado imediatamente. Usamos isso para entender se um ponto de contato foi criado em relação ao registro de contato relacionado ou, se não, por quê.

Status do ponto de contato (oportunidade): é um campo de diagnóstico relacionado a um recurso que não está ativado imediatamente. Usamos isso para entender se um ponto de contato foi criado em relação ao registro de Oportunidade relacionado ou, se não, por quê.

Data do Status do Ponto de Contato: é a data em que os campos de diagnóstico foram preenchidos.

Data do ponto de contato do comprador: está relacionada à [!UICONTROL Atualização em massa Data do ponto de contato] no objeto Campaign. Quando isso é usado, aplicamos a data do ponto de contato definida ao membro da campanha.

OnCampaignMemberDelete: pronto para uso, [!DNL Salesforce] O não aparece quando os Membros da campanha são excluídos, o que pode causar problemas com relatórios de atribuição precisos. Quando um membro da campanha é excluído, isso é acionado para informar [!DNL Marketo Measure] para remover Touchpoints relacionados a esse Membro inexistente do Campaign.

## Contato {#contact}

Adicionamos campos ao objeto de Contato relacionado aos marcos de toque do Primeiro contato e da Criação de clientes potenciais. Isso é para clientes que prefeririam ter a atribuição relatada diretamente nos campos em vez de criar registros de Touchpoint. A maioria de nossos clientes segue a rota de registro do Touchpoint, mas também usa esses campos em sua plataforma de automação.

Fonte do ponto de contato (FT): é a fonte da interação do primeiro contato.

Fonte do ponto de contato (LC): é a fonte da interação de toque da criação do lead.

Canal de marketing (FT): é o canal de marketing da interação de primeiro contato.

Canal de marketing (LC): este é o canal de marketing da interação de toque de criação de leads.

Nome da campanha de publicidade (FT): é a campanha UTM, a campanha de publicidade das redes de publicidade ou [!DNL Salesforce] Campanha da interação de primeiro contato.

Nome da campanha de publicidade (LC): esta é a campanha UTM, a campanha de publicidade das redes de publicidade ou [!DNL Salesforce] Campanha do [!UICONTROL criação de clientes potenciais] interação com toque.

Página de aterrissagem (FT): esta é a página de aterrissagem da interação de primeiro contato.

Landing Page (LC): esta é a landing page do [!UICONTROL criação de clientes potenciais] interação com toque.

Data do ponto de contato (FT): é a data da interação do primeiro contato.

Data do ponto de contato (LC): é a data da interação de toque de criação do lead.

BizibleID: usada em relação à integração de atribuição e calltrackingmetrics das nossas atividades para associação de Contato ao ponto de contato.

## Lead {#lead}

Adicionamos campos ao objeto de cliente potencial relacionado aos marcos de contato de Primeiro contato e Criação de cliente potencial. Isso é para clientes que prefeririam ter a atribuição relatada diretamente nos campos em vez de criar registros de Touchpoint. A maioria de nossos clientes segue a rota de registro do Touchpoint, mas também usa esses campos em sua plataforma de automação.

Fonte do ponto de contato (FT): é a fonte da interação do primeiro contato.

Fonte do ponto de contato (LC): é a fonte da interação de toque da criação do lead.

Canal de marketing (FT): é o canal de marketing da interação de primeiro contato.

Canal de marketing (LC): este é o canal de marketing da interação de toque de criação de leads.

Nome da campanha de publicidade (FT): é a campanha UTM, a campanha de publicidade das redes de publicidade ou [!DNL Salesforce] Campanha da interação de primeiro contato.

Nome da campanha de publicidade (LC): esta é a campanha UTM, a campanha de publicidade das redes de publicidade ou [!DNL Salesforce] Campanha da interação de toque de criação de lead.

Página de aterrissagem (FT): esta é a página de aterrissagem da interação de primeiro contato.

Página inicial (LC): esta é a página inicial da interação de toque de criação de leads.

Data do ponto de contato (FT): é a data da interação do primeiro contato.

Data do ponto de contato (LC): é a data da interação de toque de criação do lead.

BizibleID: usada em relação à integração de atribuição e calltrackingmetrics das nossas atividades para associação de Lead ao ponto de contato.

## Conta {#account-1}

Isso é usado para o mapeamento de lead para conta do recurso ABM. Preenchemos esse campo para criar a relação de pesquisa entre os dois objetos.

## Oportunidade {#opportunity}

[!DNL Marketo Measure] Valor da oportunidade: esse campo é usado no cenário em que um campo de valor personalizado é aproveitado na oportunidade. Mapeamos esse valor de campo personalizado para [!DNL Marketo Measure] Valor da oportunidade usando um fluxo de trabalho e, em seguida, leia este campo para os campos de atribuição de Receita no objeto de ponto de contato Atribuição do comprador.

## Atividade {#activity}

BizibleID: isso permite relacionar um ponto de contato a atividades para nossa integração de atribuição de atividade e métricas de rastreamento de chamada.

Data do ponto de contato do comprador: é um campo que pode ser preenchido por meio de um fluxo de trabalho para ser usado como a data de atribuição das atividades e será preenchido para que nossa integração de métricas de rastreamento de chamada saiba quando a interação ocorreu.
