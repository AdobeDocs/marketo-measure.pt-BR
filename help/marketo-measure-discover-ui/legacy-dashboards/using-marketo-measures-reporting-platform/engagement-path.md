---
unique-page-id: 35586105
description: Caminho de engajamento - [!DNL Marketo Measure] - Documentação do produto
title: Caminho de engajamento
exl-id: 104d803f-9f40-4ab6-872d-6432f8c087e9
feature: Reporting
source-git-commit: e24e01a03218252c06c9a776e0519afbddbe2b8c
workflow-type: tm+mt
source-wordcount: '874'
ht-degree: 9%

---

# Caminho de engajamento {#engagement-path}

O Caminho de compromisso permite que você veja uma visão completa dos compromissos de cliente potencial, contato, conta e oportunidade desde o primeiro contato até o fechamento.

![](assets/one-2.png)

## Descrição do mosaico {#tile-description}

**Tipo de evento:** O tipo de ponto de contato (sessão, campanha de CRM, evento de CRM, tarefa de CRM, impressão)

**Posição do ponto de contato do comprador:** Posição do ponto de contato do lead/contato

**Posição do ponto de contato de atribuição do comprador:** Posição do ponto de contato da atribuição do comprador da oportunidade

**Data do ponto de contato:** Para fontes online: data e hora em que o engajamento ocorreu. Para eventos offline: data e hora definidas na campanha do Salesforce. Para atividades, ponto de contato: o campo de data do ponto de contato é referenciado na configuração de atividades

**Email:** O email associado ao compromisso

**Tipo de contato de marketing:** Tipo de envolvimento (Visita na Web, Formulário da Web, Chat na Web, CRM, Tipos de atividade)

**Canal:** Canal de marketing que impulsionou o engajamento

**Média:** Meio do engajamento

* Se o envolvimento vier de uma mídia de plataforma conectada à API (Adwords/BingAds) será CPC
* Se a página de aterrissagem do engajamento contiver utm_medium, analisaremos
* Se o envolvimento vier da campanha CRM, a mídia vier do campo &quot;Tipo&quot; da campanha CRM

**Origem na Web:** Essa coluna exibirá a origem do compromisso

* Se o envolvimento vier de uma plataforma conectada à API, a fonte da Web exibirá o nome da plataforma de anúncio
* Se o touchpoint veio de uma pesquisa orgânica, esse campo exibirá o nome do mecanismo de pesquisa
* Se não for #1 ou #2, e o valor utm_source estiver presente no URL da landing page do touchpoint, esse valor será exibido aqui
* Se não for #1 ou #2 e não houver um valor utm_source, o domínio raiz do URL de referência será exibido aqui.
* Se nenhuma das opções acima for exibida, isso exibirá Web Direct ou Web

**Primeira interação com a pessoa:** Essa coluna exibirá Sim ou Não se esse ponto de contato tiver sido a primeira interação dos indivíduos

**Receita atribuída:** Essa coluna exibirá a receita atribuída a esse ponto de contato com base no modelo de atribuição selecionado

## Filtrar descrição {#filter-description}

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
   <td><p>Permite vários valores adicionando filtros por meio do sinal de mais "+" à direita. Vários valores de filtro terão uma relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p></td> 
  </tr> 
  <tr> 
   <td><p>Nome/ID da oportunidade</p></td> 
   <td><p>Permite vários valores adicionando filtros por meio do sinal de mais "+" à direita. Vários valores de filtro terão uma relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p></td> 
  </tr> 
  <tr> 
   <td><p>E-mail/ID do lead</p></td> 
   <td><p>Permite vários valores adicionando filtros por meio do sinal de mais "+" à direita. Vários valores de filtro terão uma relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p></td> 
  </tr> 
  <tr> 
   <td><p>E-mail/ID do contato</p></td> 
   <td><p>Permite vários valores adicionando filtros por meio do sinal de mais "+" à direita. Vários valores de filtro terão uma relação "ou", o que significa que o bloco mostrará resultados para ambos os valores de filtro. Se qualquer um dos valores de filtro não for válido, o painel não produzirá resultados para o valor inválido, mas ainda filtrará para os valores de filtro válidos. Não diferencia maiúsculas de minúsculas.</p><p>Nome/ID da conta, ID do cliente potencial/Email, ID do contato/filtro de email são uma relação "ou", o que significa que se o filtro de cliente potencial e o filtro de contato tiverem valor, ele mostrará todos os registros para qualquer uma das IDs.</p></td> 
  </tr> 
  <tr> 
   <td><p>Modelo de atribuição</p></td> 
   <td><p>Especificar em qual modelo a receita atribuída deve ser calculada. Valores permitidos: "Atribuição de caminho completo", "Atribuição de primeiro contato", "Atribuição de modelo personalizado", "Atribuição de criação de leads", "Atribuição em forma de U", "Atribuição em forma de W".</p></td> 
  </tr> 
  <tr> 
   <td><p>Tipo de evento</p></td> 
   <td><p>Filtrar a jornada por tipo de evento no qual o ponto de contato do usuário se baseia. Permite vários valores adicionando filtros por meio do sinal de mais "+" à direita. Valores permitidos: "Session", "CRM Campaign", "CRM Event", "CRM Task", "Impression".</p></td> 
  </tr> 
  <tr> 
   <td><p>Estágios de leads</p></td> 
   <td><p>Filtrar a jornada por estágio de lead no qual o ponto de contato do usuário se baseia. Permite vários valores adicionando filtros por meio do sinal de mais "+" à direita. O filtro padrão para "é igual a" mostrará sugestões para escolher, mas recomenda-se usar "contém" como critério de filtro para vários filtros em estágios.</p></td> 
  </tr> 
  <tr> 
   <td><p>Estágios de Oportunidade</p></td> 
   <td><p>Filtrar a jornada por estágio de oportunidade no qual o ponto de contato do usuário se baseia. Permite vários valores adicionando filtros por meio do sinal de mais "+" à direita. O filtro padrão para "é igual a" mostrará sugestões para escolher, mas recomenda-se usar "contém" como critério de filtro para vários filtros em estágios.</p></td> 
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
   <td><p>Filtrar jornada por tipo de toque de marketing.</p></td> 
  </tr> 
  <tr> 
   <td><p>Canal</p></td> 
   <td><p>Filtrar jornada por canal.</p></td> 
  </tr> 
  <tr> 
   <td><p>Meio</p></td> 
   <td><p>Filtrar jornada por mídia.</p></td> 
  </tr> 
  <tr> 
   <td><p>Fonte da Web</p></td> 
   <td><p>Filtrar jornada por origem na Web.</p></td> 
  </tr> 
  <tr> 
   <td><p>Primeira interação com a pessoa</p></td> 
   <td><p>Filtre a jornada pela coluna "É o primeiro contato" na tabela de pontos de contato do usuário.</p></td> 
  </tr> 
  <tr> 
   <td><p>Receita atribuída</p></td> 
   <td><p>Filtre a jornada pelo valor de receita atribuído.</p></td> 
  </tr> 
 </tbody> 
</table>
