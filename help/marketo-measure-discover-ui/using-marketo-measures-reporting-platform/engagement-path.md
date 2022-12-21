---
unique-page-id: 35586105
description: Caminho do envolvimento - [!DNL Marketo Measure] - Documentação do produto
title: Caminho de envolvimento
exl-id: 104d803f-9f40-4ab6-872d-6432f8c087e9
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '874'
ht-degree: 4%

---

# Caminho de envolvimento {#engagement-path}

O Caminho de envolvimento permite que você veja uma visualização completa dos contratos de lead, contato, conta e oportunidade desde o primeiro contato até o fechamento.

![](assets/one-2.png)

## Descrição do mosaico {#tile-description}

**Tipo de evento:** O tipo de ponto de contato (Sessão, Campanha CRM, Evento CRM, Tarefa CRM, Impressão)

**Posição do ponto de contato do comprador:** Posição do ponto de contato do cliente potencial/contato

**Posição do ponto de contato da atribuição do comprador:** Posição do ponto de contato da atribuição do comprador da oportunidade

**Data do ponto de contato:** Para fontes online: data e hora em que o envolvimento ocorreu. Para eventos offline: data e hora definidas no Salesforce Campaign. Para ponto de contato de atividades: campo de data do ponto de contato que está sendo referenciado na configuração de atividades

**Email:** O email associado ao envolvimento

**Tipo de contato de marketing:** Tipo de envolvimento (Visita à Web, Formulário Web, Bate-papo na Web, CRM, Tipos de atividade)

**Canal:** Canal de marketing que levou ao engajamento

**Médio:** Meio de envolvimento

* Se o engajamento vem de uma plataforma conectada à API (Adwords/BingAds), a mídia será CPC
* Se a landing page do envolvimento contiver utm_medium, analisaremos
* Se o engajamento vem da campanha CRM, a mídia vem do campo &quot;Tipo&quot; da campanha CRM

**Fonte da Web:** Esta coluna exibirá a origem do envolvimento

* Se o envolvimento vir de uma plataforma conectada à API, a fonte da Web exibirá o nome da plataforma de anúncio
* Se o ponto de contato veio de uma pesquisa orgânica, esse campo exibirá o nome do mecanismo de pesquisa
* Se não for #1 ou #2, e o valor utm_source estiver presente no URL da página de aterrissagem do ponto de contato, esse valor será exibido aqui
* Se não for #1 ou #2 e não houver um valor utm_source presente, o domínio raiz do URL de referência será exibido aqui.
* Se nenhuma das opções acima, isso exibirá Web Direct ou Web

**Primeira interação com a pessoa:** Essa coluna exibirá Sim ou Não se esse ponto de contato tiver sido a primeira interação individual

**Receita atribuída:** Essa coluna exibirá a receita atribuída a esse ponto de contato com base no modelo de atribuição selecionado

## Descrição do filtro {#filter-description}

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th>Nome do filtro</th> 
   <th>Descrição</th> 
  </tr> 
  <tr> 
   <td><p>Nome/ID da conta</p></td> 
   <td><p>Permite vários valores ao adicionar filtros através do sinal de mais "+" à direita. Vários valores de filtro terão a relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p></td> 
  </tr> 
  <tr> 
   <td><p>Nome/ID da oportunidade</p></td> 
   <td><p>Permite vários valores ao adicionar filtros através do sinal de mais "+" à direita. Vários valores de filtro terão a relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p></td> 
  </tr> 
  <tr> 
   <td><p>E-mail/ID do lead</p></td> 
   <td><p>Permite vários valores ao adicionar filtros através do sinal de mais "+" à direita. Vários valores de filtro terão a relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p></td> 
  </tr> 
  <tr> 
   <td><p>E-mail/ID do contato</p></td> 
   <td><p>Permite vários valores ao adicionar filtros através do sinal de mais "+" à direita. Vários valores de filtro terão a relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p><p>Nome/ID da conta, ID do cliente potencial/Email, ID do contato/filtro de email são relações "ou", ou seja, se o filtro de cliente potencial e o filtro de contato tiverem valor, ele mostrará todos os registros de qualquer uma das IDs.</p></td> 
  </tr> 
  <tr> 
   <td><p>Modelo de atribuição</p></td> 
   <td><p>Especifique em qual modelo a receita atribuída deve ser calculada. Valores permitidos: "Atribuição De Caminho Completo", "Atribuição De Primeiro Toque", "Atribuição De Modelo Personalizado", "Atribuição De Criação De Lead", "Atribuição De Forma De U", "Atribuição De Forma De W".</p></td> 
  </tr> 
  <tr> 
   <td><p>Tipo de evento</p></td> 
   <td><p>Filtre a jornada por tipo de evento no qual o ponto de contato do usuário se baseia. Permite vários valores ao adicionar filtros através do sinal de mais "+" à direita. Valores permitidos: "Sessão", "Campanha CRM", "Evento CRM", "Tarefa CRM", "Impressão".</p></td> 
  </tr> 
  <tr> 
   <td><p>Estágios de leads</p></td> 
   <td><p>Filtre a jornada por estágio de lead no qual o ponto de contato do usuário se baseia. Permite vários valores ao adicionar filtros através do sinal de mais "+" à direita. O padrão de filtro para "é igual a" mostrará sugestões para escolha, mas recomendará usar "contém" como critérios de filtro para vários filtros em etapas.</p></td> 
  </tr> 
  <tr> 
   <td><p>Estágios de Oportunidade</p></td> 
   <td><p>Filtrar jornada por estágio de oportunidade em que o ponto de contato do usuário se baseia. Permite vários valores ao adicionar filtros através do sinal de mais "+" à direita. O padrão de filtro para "é igual a" mostrará sugestões para escolha, mas recomendará usar "contém" como critérios de filtro para vários filtros em etapas.</p></td> 
  </tr> 
  <tr> 
   <td><p>Data do Touchpoint</p></td> 
   <td><p>Filtre a jornada por data/hora do ponto de contato.</p></td> 
  </tr> 
  <tr> 
   <td><p>Email do Buyer Touchpoint</p></td> 
   <td><p>Filtre a jornada por email no ponto de contato do usuário. Isso permite filtrar emails que não estão associados a um cliente potencial/contato/conta.</p></td> 
  </tr> 
  <tr> 
   <td><p>Tipo de Contato de Marketing</p></td> 
   <td><p>Filtre a jornada por tipo de toque de marketing.</p></td> 
  </tr> 
  <tr> 
   <td><p>Canal</p></td> 
   <td><p>Filtre a jornada por canal.</p></td> 
  </tr> 
  <tr> 
   <td><p>Médio</p></td> 
   <td><p>Filtre a jornada por meio.</p></td> 
  </tr> 
  <tr> 
   <td><p>Fonte da Web</p></td> 
   <td><p>Filtrar jornada por origem da Web.</p></td> 
  </tr> 
  <tr> 
   <td><p>Primeira interação com a pessoa</p></td> 
   <td><p>Filtre a jornada por coluna "É primeiro toque" na tabela de pontos de contato do usuário.</p></td> 
  </tr> 
  <tr> 
   <td><p>Receita atribuída</p></td> 
   <td><p>Filtre a jornada por valor de receita atribuído.</p></td> 
  </tr> 
 </tbody> 
</table>
