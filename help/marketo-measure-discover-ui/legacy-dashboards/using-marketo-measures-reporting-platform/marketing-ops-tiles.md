---
unique-page-id: 34406495
description: Blocos de Operações de Marketing - [!DNL Marketo Measure]
title: Blocos de operações de marketing
exl-id: e7978a79-6f6e-4bfd-9962-b35b7d46a9ac
feature: Reporting
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '766'
ht-degree: 4%

---

# Blocos de operações de marketing {#marketing-ops-tiles}

As Operações de marketing permitem validar e diagnosticar [!DNL Marketo Measure] dados com total visibilidade em pontos de contato individuais por clientes potenciais, contatos, contas, campanhas e oportunidades.

<table> 
 <colgroup> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <td><br></td> 
   <td><p><strong>ID da Conta</strong></p></td> 
   <td><p><strong>Nome da conta</strong></p></td> 
   <td><p><strong>ID do Opp</strong></p></td> 
   <td><p><strong>Nome do Opp</strong></p></td> 
   <td><p><strong>ID do Lead ou Contato</strong></p></td> 
   <td><p><strong>Email do Lead ou Contato</strong></p></td> 
   <td><p><strong>ID da campanha</strong></p></td> 
   <td><p><strong>Oportunidade Ganha</strong></p></td> 
   <td><p><strong>Data de criação do aplicativo</strong></p></td> 
   <td><p><strong>Data de Fechamento do Opp</strong></p></td> 
   <td><p><strong>Data do touchpoint</strong></p></td> 
   <td><p><strong>Modelo de atribuição</strong></p></td> 
  </tr> 
  <tr> 
   <td><p><strong>Contas</strong></p></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><br></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
  </tr> 
  <tr> 
   <td><p><strong>Oportunidade</strong></p></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><br></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
  </tr> 
  <tr> 
   <td><p><strong>Contatos</strong></p></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
  </tr> 
  <tr> 
   <td><p><strong>Leads</strong></p></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X*</strong></td> 
   <td><strong>X*</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X*</strong></td> 
   <td><strong>X*</strong></td> 
   <td><strong>X*</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
  </tr> 
  <tr> 
   <td><p><strong>Campanhas</strong></p></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><br></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
   <td><strong>X</strong></td> 
  </tr> 
 </tbody> 
</table>

## Mosaico da conta {#account-tile}

![](assets/one-1.png)

Exibe os seguintes dados relacionados à(s) conta(s) especificada(s).

**As contas devem ter dados de Touchpoint (aplicável somente se o ABM estiver ativado)**

-ID da conta: ID da conta no CRM

-Nome da conta: nome da conta no CRM

Data de criação: data de criação da conta no CRM

* Drill-down: Consulte Data de Criação por Hora, Minuto, Tempo

-Site: valor encontrado no campo Site na Conta

-Classificação de engajamento: Pontuação preditiva de engajamento (PES) preenchida por [!DNL Marketo Measure]^1

-Oportunidades: Número de Oportunidades vinculadas à conta

* Detalhamento: consulte os detalhes da(s) oportunidade(s) associada(s)

-Contacts: Número de Contatos listados nesta conta

* Drill-down: Ver detalhes dos contatos associados

-Clientes potenciais: número de clientes potenciais mapeados para esta conta por meio do mapeamento de cliente potencial para conta^1

* Detalhamento: veja detalhes para os clientes potenciais que foram mapeados para a conta

-Pontos de contato de atribuição: número de pontos de contato de atribuição do comprador para a conta

* Detalhamento: consulte os detalhes do ponto de contato de atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing, modelo de atribuição)

-Pontos de contato: Número de pontos de contato que os contatos desta conta têm^2

* Detalhamento: consulte os Pontos de contato na conta Detalhes do ponto de contato (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing)

>[!NOTE]
>
>Se você tiver um ABM, ele mostrará Pontos de contato relacionados aos clientes potenciais que foram mapeados por meio do mapeamento de cliente potencial para conta.

## Mosaico de oportunidade {#opportunity-tile}

![](assets/two-1.png)

Exibe os seguintes dados relacionados às Oportunidades especificadas.

-ID da oportunidade: ID da oportunidade no CRM

-Nome da oportunidade: nome da oportunidade no CRM

-Nome da conta: nome da conta associado à oportunidade

Data de criação: data de criação da oportunidade no CRM

Drill-down: Consulte Data de Criação por Hora, Minuto, Tempo

Data de fechamento: data de fechamento da oportunidade no CRM

Drill-down: Consulte Data de Fechamento por Hora, Minuto, Hora

-Quantia: A quantia total da Oportunidade

-Contatos: Número de Contatos associados à Oportunidade

Drill-down: Ver detalhes dos contatos associados

-Pontos de contato de atribuição: número de pontos de contato de atribuição do comprador relacionados

Detalhamento: consulte os detalhes do ponto de contato de atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing, modelo de atribuição)

## Mosaico de contatos {#contacts-tile}

![](assets/three-1.png)

Exibe os seguintes dados relacionados ao(s) Contato(s) especificado(s).

-ID de contato: ID de contato no CRM

-Email: endereço de email do registro de contato

Data de criação: data de criação do contato no CRM

* Drill-down: Consulte Data de Criação por Hora, Minuto, Tempo

-Nome da conta: nome da conta associado ao contato

-Pontos de contato de atribuição: número de pontos de contato de atribuição do comprador para o contato

* Detalhamento: consulte os detalhes do ponto de contato de atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing, modelo de atribuição)

-Pontos de contato: Número de pontos de contato do comprador para o contato

* Detalhamento: consulte os Contatos na conta Detalhes do ponto de contato (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing)

## Mosaico de clientes potenciais {#leads-tile}

![](assets/four-1.png)

Exibe os seguintes dados relacionados aos clientes em potencial especificados.

-ID do lead: ID do lead no CRM

-Email: endereço de email do registro do lead

Data de criação: quando o lead foi criado no CRM

* Drill-down: Consulte Data de Criação por Hora, Minuto, Tempo

-Empresa (do cliente potencial): a empresa listada no registro no CRM preenchido pelo cliente

-Nome da conta: o nome da conta [!DNL Marketo Measure] é preenchido com base no mapeamento de lead para conta

-Pontos de contato: o número de pontos de contato associados ao lead (s)

* Detalhamento: consulte os Contatos na conta Detalhes do ponto de contato (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing)

## Mosaico de campanhas {#campaigns-tile}

![](assets/five-1.png)

Exibe os seguintes dados relacionados às Campanhas especificadas.

-ID da campanha: ID da campanha no CRM

-Nome da campanha: Nome da campanha no CRM

-Gasto com a campanha: o gasto [!DNL Marketo Measure] gravou associado à campanha

-Modelo de atribuição: mostrará a atribuição apropriada com base no modelo selecionado

-Pontos de contato de atribuição: a quantidade de pontos de contato de atribuição do comprador associados à(s) campanha(s)

* Detalhamento: consulte os detalhes do ponto de contato de atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing, modelo de atribuição)

-Pontos de contato: o número de pontos de contato associados às campanhas

* Detalhamento: consulte os Contatos na conta Detalhes do ponto de contato (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de contato de marketing)
