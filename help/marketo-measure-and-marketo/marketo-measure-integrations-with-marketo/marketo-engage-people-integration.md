---
unique-page-id: 37356395
description: "[!DNL Marketo Engage] Integração de pessoas - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Engage] Integração de pessoas"
exl-id: 51930e84-4ff8-4e35-9d44-ea017c24b051
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '878'
ht-degree: 1%

---

# [!DNL Marketo Engage] Integração de pessoas {#marketo-engage-people-integration}

A integração de pessoas do Marketo permite [!DNL Marketo Measure] para começar a baixar pessoas do Marketo e começar a vincular suas sessões rastreadas ao indivíduo e mapear pontos de contato para seus compromissos. Historicamente, [!DNL Marketo Measure] O só era capaz de mapear pontos de contato para uma pessoa do CRM, portanto, isso ajuda os profissionais de marketing a medir seus esforços de marketing antes de aguardar um estágio ou acionador para sincronizá-lo ao CRM.

## Requisitos {#requirements}

* Instância do Production Marketo
* Produção [!DNL Salesforce] ou [!DNL Microsoft Dynamics] instância
* Qualquer pagamento [!DNL Marketo Measure] assinatura
* SOLR habilitado (entre em contato com o [Suporte Marketo](https://nation.marketo.com/t5/Support/ct-p/Support) para ativá-lo)

## Como funciona {#how-it-works}

Como cliente atual, [!DNL Marketo Measure] O já está baixando pessoas do seu CRM. O processo padrão é que [!DNL Marketo Measure] baixa as pessoas e mapeia o endereço de email para uma sessão da Web que rastreamos via bizible.js.

Com a introdução do download de pessoas do Marketo, [!DNL Marketo Measure] Agora o pode mapear sessões da Web para um pool maior de indivíduos, aqueles que não foram sincronizados com o CRM. Normalmente, vemos isso devido a processos internos que aguardam até que as pessoas atinjam um determinado status antes de serem enviadas para o CRM.

When [!DNL Marketo Measure] mapeia com sucesso a pessoa do Marketo para uma sessão da Web. nosso processamento gerará quaisquer pontos de contato relevantes para ela, que são, em última análise, relatáveis em [!DNL Marketo Measure Discover]. Se essa pessoa do Marketo for enviada para o CRM, [!DNL Marketo Measure] O ligará o cenário duplicado e recriaremos o ponto de contato da pessoa do CRM e marcaremos o conjunto inicial como &quot;duplicado&quot;.

Para detectar essas duplicatas, verifique se [!DNL Marketo-Salesforce] ou [!DNL Marketo-Dynamics] A sincronização está preenchendo as IDs de lead e contato na pessoa do Marketo. Se a ID estiver sendo sincronizada corretamente, você poderá ver a ID do CRM no registro de Pessoa, desta forma:

![](assets/5a.png)

![](assets/5b.png)

Os clientes têm a opção de relatar o conjunto completo de pessoas do Marketo e de pessoas do CRM dentro do [!DNL Marketo Measure] Descubra. Se você estiver interessado em criar relatórios somente sobre pessoas do CRM, recomendamos criar um Segmento para filtrá-las.

## [!DNL Marketo Measure Discover] {#marketo-measure-discover}

Ao relatar sobre leads (pessoas) em [!DNL Marketo Measure Discover], você verá o total dos leads do Marketo e do CRM. Para criar relatórios somente sobre pessoas do Marketo ou somente leads de CRM, é necessário criar uma Categoria de segmento para a fonte e, em seguida, criar regras de segmento para Marketo e CRM usando o campo &quot;Sistema de origem&quot; para definir a regra. Depois que os segmentos forem criados, você verá a categoria Fonte disponível para filtrar no [!DNL Marketo Measure Discover] painéis.

![](assets/bizible-discover-1.png)

![](assets/bizible-discover-2.png)

## Mapeamento de campos {#field-mappings}

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th><p><strong>biz_leads</strong></p></th> 
   <th><p><strong>Marketo</strong></p></th> 
  </tr> 
  <tr> 
   <td><p>ID</p></td> 
   <td><p>ID</p></td> 
  </tr> 
  <tr> 
   <td><p>MODIFIED_DATE</p></td> 
   <td><p>updateAt<strong>*</strong></p></td> 
  </tr> 
  <tr> 
   <td><p>CREATED_DATE</p></td> 
   <td><p>createdAt</p></td> 
  </tr> 
  <tr> 
   <td><p>EMAIL</p></td> 
   <td><p>e-mail</p></td> 
  </tr> 
  <tr> 
   <td><p>WEB_SITE</p></td> 
   <td><p>site</p></td> 
  </tr> 
  <tr> 
   <td><p>EMPRESA</p></td> 
   <td><p>empresa</p></td> 
  </tr> 
  <tr> 
   <td><p>IS_CONVERTED</p></td> 
   <td><p>n/d</p></td> 
  </tr> 
  <tr> 
   <td><p>ACCOUNT_ID</p></td> 
   <td><p>ID da conta (L2A)</p></td> 
  </tr> 
  <tr> 
   <td><p>BIZIBLE_STAGE</p></td> 
   <td><p>Status</p></td> 
  </tr> 
  <tr> 
   <td><p>IS_DELETED</p></td> 
   <td><p>true/false</p></td> 
  </tr> 
 </tbody> 
</table>

*Há um problema de comportamento conhecido em que os campos da entidade Empresa do Marketo não afetam o valor atualizadoAt da Pessoa, portanto, se campos relevantes como Site ou Empresa forem atualizados, [!DNL Marketo Measure] O não saberá que esses valores são modificados porque o valor de data/hora de updateAt não é atualizado. Isso afeta o recurso ABM, onde não teríamos novos dados para resolver a Conta do cliente potencial. De momento, não existe qualquer solução, mas há planos para abordar esta questão no futuro.

## Perguntas frequentes {#faq}

**Por que minhas contagens de lead diferem entre meu CRM e [!DNL Marketo Measure Discover]?**

Como essa integração nos permite criar pontos de contato para leads que importamos diretamente do Marketo, pode haver leads que não foram sincronizados com o CRM, portanto, a contagem no Discover pode ser maior do que o CRM, pois os pontos de contato são apenas enviados para os Leads de CRM.

**Como isso substitui meus dados?**

Essa integração realmente mescla os conjuntos de dados no seu [!DNL Marketo Measure] portanto, nada está sendo substituído. O que esperaríamos de seus Leads de CRM atuais é que, ao baixarmos os 2 anos de Marketo Leads, simplesmente atualizaríamos esse registro de Lead para mostrar que também havia uma correspondência com um Marketo Lead. Que tudo acontece no back-end e espera-se que os pontos de contato permaneçam os mesmos. Também esperaríamos ver mais pontos de contato por causa dos leads qualificados da Marketo. Se conseguirmos encontrar sessões da Web correspondentes a essas pessoas do Marketo, começaremos a ver os pontos de contato contados em [!DNL Marketo Measure].

**Só posso fazer com que minhas pessoas baixem do Marketo e cortem a conexão do CRM?**

Neste momento, não. Teremos essa opção no futuro, mas precisamos criar outras fases dessa integração do Marketo para que possamos conectar os programas, oportunidades e ofertas do Marketo ao [!DNL Marketo Measure].

**Você importa todo o meu pessoal de Marketo?**

No momento, o mais cedo que vamos importar pessoas é de 1/1/2018 para que tenhamos um mínimo de 2 anos de dados, que é o mesmo comportamento que implementamos a partir de downloads de CRM. Implementaremos um comportamento aprimorado para baixar uma janela contínua de 2 anos após a conexão com o Marketo ter sido estabelecida.

Também não filtramos por nenhum tipo de pessoa, então todas as pessoas dentro da janela de dois anos serão importadas e estarão qualificadas para pontos de contato.

**O que é o SOLR e por que é necessário ativá-lo para usar esse recurso?**

Habilitar o SOLR para sua instância do Marketo é uma etapa trivial que abre espaço de hardware no Marketo para que sua assinatura possa utilizar o [!DNL Marketo Measure] integração. Sem o SOLR habilitado, não temos acesso a determinadas chamadas que, de outra forma, permitiriam baixar as pessoas apropriadas da sua instância do Marketo.
