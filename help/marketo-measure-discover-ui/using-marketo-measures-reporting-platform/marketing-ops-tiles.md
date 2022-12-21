---
unique-page-id: 34406495
description: Blocos de Operações de Marketing - [!DNL Marketo Measure] - Documentação do produto
title: Blocos de Operações de Marketing
exl-id: e7978a79-6f6e-4bfd-9962-b35b7d46a9ac
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '767'
ht-degree: 3%

---

# Blocos de Operações de Marketing {#marketing-ops-tiles}

As Ops de marketing permitem validar e diagnosticar [!DNL Marketo Measure] dados com visibilidade completa em pontos de contato individuais por clientes potenciais, contatos, contas, campanhas e oportunidades.

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
   <td><p><strong>ID da conta</strong></p></td> 
   <td><p><strong>Nome da conta</strong></p></td> 
   <td><p><strong>ID de opção</strong></p></td> 
   <td><p><strong>Nome da opção</strong></p></td> 
   <td><p><strong>ID do Lead ou Contato</strong></p></td> 
   <td><p><strong>Email do Lead ou Contato</strong></p></td> 
   <td><p><strong>ID da campanha</strong></p></td> 
   <td><p><strong>Oportunidade Ganha</strong></p></td> 
   <td><p><strong>Data de criação da opção</strong></p></td> 
   <td><p><strong>Data de Fechamento do Opt</strong></p></td> 
   <td><p><strong>Data do Touchpoint</strong></p></td> 
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

## Bloco de contas {#account-tile}

![](assets/one-1.png)

Exibe os seguintes dados relacionados a Conta(s) especificada(s).

**As contas devem ter dados de ponto de contato (aplicável somente se você tiver o ABM ativado)**

-ID da conta: ID da conta no CRM

-Nome da conta: Nome da conta no CRM

-Data de criação: Data de criação da conta no CRM

* Detalhamento: Consulte Data de criação por hora, minuto, hora

-Web Site: Valor encontrado no campo Site na Conta

-Classificação de envolvimento: Pontuação preditiva de engajamento (PES) preenchida por [!DNL Marketo Measure]^1

-Oportunidades: Número de Oportunidades conectadas à conta

* Detalhamento: Veja os detalhes da(s) Oportunidade(ões) associada(s)

-Contatos: Número de Contatos listados nesta conta

* Detalhamento: Veja os detalhes dos contatos associados

-Clientes potenciais: Número de clientes potenciais mapeados para esta conta através do mapeamento de conta de cliente potencial^1

* Detalhamento: Veja os detalhes dos clientes potenciais que foram mapeados para a conta

-Pontos de contato da atribuição: Número de pontos de contato da atribuição do comprador para a conta

* Detalhamento: Consulte Detalhes do ponto de contato da atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de toque de marketing, modelo de atribuição)

-Pontos de contato: Número de pontos de contato que os contatos desta conta têm^2

* Detalhamento: Consulte Pontos de contato na conta Detalhes do ponto de contato (ID, Email, Data do ponto de contato, Nome da conta, Campanha, Canal, Subcanal, Tipo de contato de marketing)

>[!NOTE]
>
>Se você tiver o ABM, ele mostrará pontos de contato relacionados aos leads que foram mapeados por meio do Mapeamento de conta de cliente potencial.

## Bloco de Oportunidades {#opportunity-tile}

![](assets/two-1.png)

Exibe os seguintes dados relacionados às Oportunidades especificadas.

-ID da oportunidade: ID da oportunidade no CRM

-Nome da Oportunidade: Nome da oportunidade no CRM

-Nome da conta: Nome da conta associada à oportunidade

-Data de criação: Data de criação da Oportunidade no CRM

Detalhamento: Consulte Data de criação por hora, minuto, hora

-Data de Fechamento: Data de fechamento da Oportunidade no CRM

Detalhamento: Consulte Fechar data por hora, minuto, hora

-Montante: O valor total da Oportunidade

-Contatos: Número de Contatos associados à Oportunidade

Detalhamento: Veja os detalhes dos contatos associados

-Pontos de contato da atribuição: Número de pontos de contato de atribuição de comprador relacionados

Detalhamento: Consulte Detalhes do ponto de contato da atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de toque de marketing, modelo de atribuição)

## Mosaico de contatos {#contacts-tile}

![](assets/three-1.png)

Exibe os seguintes dados relacionados ao(s) Contato(s) especificado(s).

-ID de contato: ID de contato no CRM

-Email: Endereço de email do registro de contato

-Data de criação: Data de criação do contato no CRM

* Detalhamento: Consulte Data de criação por hora, minuto, hora

-Nome da conta: Nome da conta associado ao contato

-Pontos de contato da atribuição: Número de pontos de contato de atribuição do comprador para o contato

* Detalhamento: Consulte Detalhes do ponto de contato da atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de toque de marketing, modelo de atribuição)

-Pontos de contato: Número de pontos de contato do comprador para o contato

* Detalhamento: Consulte Contatos na conta Detalhes do ponto de contato (ID, Email, Data do ponto de contato, Nome da conta, Campanha, Canal, Subcanal, Tipo de contato de marketing)

## Bloco de leads {#leads-tile}

![](assets/four-1.png)

Exibe os seguintes dados relacionados ao(s) lead(s) especificado(s).

-ID de cliente potencial: ID de cliente potencial no CRM

-Email: Endereço de email do registro de cliente potencial

-Data de criação: Quando o lead foi criado no CRM

* Detalhamento: Consulte Data de criação por hora, minuto, hora

-Empresa (de cliente potencial): A empresa listada no registro no CRM preenchido pelo cliente

-Nome da conta: O nome da conta [!DNL Marketo Measure] preenche com base em nosso lead para o mapeamento da conta

-Pontos de contato: O número de pontos de contato associados ao lead (s)

* Detalhamento: Consulte Contatos na conta Detalhes do ponto de contato (ID, Email, Data do ponto de contato, Nome da conta, Campanha, Canal, Subcanal, Tipo de contato de marketing)

## Bloco de campanhas {#campaigns-tile}

![](assets/five-1.png)

Exibe os seguintes dados relacionados às Campanhas especificadas.

-ID da campanha: ID da campanha no CRM

-Nome da campanha: Nome da campanha no CRM

-Gasto da campanha: O gasto [!DNL Marketo Measure] gravou associado à campanha

-Modelo de atribuição: Isso mostrará a atribuição apropriada com base no modelo selecionado

-Pontos de contato da atribuição: O número de pontos de contato de atribuição do comprador associados à campanha

* Detalhamento: Consulte Detalhes do ponto de contato da atribuição do comprador (ID, email, data do ponto de contato, nome da conta, campanha, canal, subcanal, tipo de toque de marketing, modelo de atribuição)

-Pontos de contato: O número de pontos de contato associados à(s) campanha(s)

* Detalhamento: Consulte Contatos na conta Detalhes do ponto de contato (ID, Email, Data do ponto de contato, Nome da conta, Campanha, Canal, Subcanal, Tipo de contato de marketing)
