---
unique-page-id: 37356395
description: "[!DNL Marketo Engage] Integração de pessoas - [!DNL Marketo Measure]"
title: "[!DNL Marketo Engage] Integração de pessoas"
exl-id: 51930e84-4ff8-4e35-9d44-ea017c24b051
feature: Integration
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '867'
ht-degree: 2%

---

# [!DNL Marketo Engage] Integração de pessoas {#marketo-engage-people-integration}

A integração de pessoas da Marketo permite [!DNL Marketo Measure] para começar a baixar pessoas do Marketo e começar a vincular suas sessões rastreadas ao indivíduo e mapear pontos de contato para seus envolvimentos. Historicamente, [!DNL Marketo Measure] O só conseguiu mapear pontos de contato para uma pessoa do CRM, portanto, isso ajuda os profissionais de marketing a medir seus esforços de marketing antes de esperar um estágio ou acionador para sincronizá-lo ao CRM.

## Requisitos {#requirements}

* Instância do Marketo de produção
* Produção [!DNL Salesforce] ou [!DNL Microsoft Dynamics] instância
* Quaisquer [!DNL Marketo Measure] subscrição
* SOLR habilitada (alcançar até [Suporte ao Marketo](https://nation.marketo.com/t5/Support/ct-p/Support) para habilitar)

## Como funciona {#how-it-works}

Como cliente atual, [!DNL Marketo Measure] O já está baixando pessoas do seu CRM. O processo padrão é que [!DNL Marketo Measure] baixa as pessoas e mapeia o endereço de email para uma sessão da web que rastreamos via bizible.js.

Com a introdução do download de pessoas da Marketo, [!DNL Marketo Measure] Agora é possível mapear sessões da Web para um pool maior de indivíduos, aqueles que não foram sincronizados com o CRM. Geralmente, vemos isso devido a processos internos que esperam até que as pessoas atinjam um determinado status antes de serem enviadas para o CRM.

Quando [!DNL Marketo Measure] mapeia com sucesso a pessoa do Marketo para uma sessão da web, nosso processamento gerará todos os pontos de contato relevantes para ele, que podem ser relatados no [!DNL Marketo Measure Discover]. Se essa pessoa do Marketo for encaminhada para o CRM, [!DNL Marketo Measure] O tratará o cenário de duplicação, recriaremos o ponto de contato para a pessoa do CRM e marcaremos o conjunto inicial como &quot;duplicado&quot;.

Para detectarmos essas duplicatas, verifique se [!DNL Marketo-Salesforce] ou [!DNL Marketo-Dynamics] A sincronização está preenchendo as IDs de cliente potencial e contato na Pessoa da Marketo. Se a ID estiver sincronizando corretamente, você poderá ver a ID do CRM no registro de Pessoa, desta forma:

![](assets/5a.png)

![](assets/5b.png)

Os clientes têm a opção de relatar o conjunto completo de pessoas do Marketo e de pessoas do CRM dentro do [!DNL Marketo Measure] Descubra. Se você estiver interessado em relatórios somente sobre pessoas do CRM, recomendamos criar um Segmento para filtrá-las.

## [!DNL Marketo Measure Discover] {#marketo-measure-discover}

Ao relatar clientes em potencial (pessoas) no [!DNL Marketo Measure Discover], você verá o total de seus clientes potenciais do Marketo e do CRM. Para criar relatórios somente sobre pessoas do Marketo ou somente clientes potenciais do CRM, será necessário criar uma Categoria do segmento para a origem e, em seguida, criar Regras de segmento para o Marketo e o CRM usando o campo &quot;Sistema de origem&quot; para definir a regra. Depois que seus segmentos forem criados, você verá a categoria Origem disponível para filtrar pela [!DNL Marketo Measure Discover] painéis.

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
   <td><p>updatedAt<strong>*</strong></p></td> 
  </tr> 
  <tr> 
   <td><p>CREATED_DATE</p></td> 
   <td><p>createdAt</p></td> 
  </tr> 
  <tr> 
   <td><p>EMAIL</p></td> 
   <td><p>email</p></td> 
  </tr> 
  <tr> 
   <td><p>WEB_SITE</p></td> 
   <td><p>site</p></td> 
  </tr> 
  <tr> 
   <td><p>COMPANY</p></td> 
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
   <td><p>verdadeiro/falso</p></td> 
  </tr> 
 </tbody> 
</table>

*Há um problema comportamental conhecido em que os campos da entidade da Marketo Company não afetam o valor updatedAt da pessoa, portanto, se campos relevantes, como Site ou Empresa, forem atualizados, [!DNL Marketo Measure] O não saberá que esses valores foram modificados porque o valor date/time updatedAt não foi atualizado. Isso afeta o recurso ABM, no qual não teríamos dados novos para resolver a Conta do lead. Não há solução alternativa no momento, mas há planos para abordar isso no futuro.

## Perguntas frequentes {#faq}

**Por que minhas contagens de clientes potenciais diferem entre meu CRM e [!DNL Marketo Measure Discover]?**

Como essa integração nos permite criar pontos de contato para clientes potenciais que importamos diretamente da Marketo, pode haver clientes potenciais que não foram sincronizados com o CRM, portanto, a contagem no Discover pode ser maior que o CRM, já que os pontos de contato são enviados apenas para os clientes potenciais do CRM.

**Como isso substitui meus dados?**

Na verdade, essa integração mescla os conjuntos de dados no [!DNL Marketo Measure] instância, portanto, nada está sendo substituído. O que esperaríamos de seus clientes potenciais de CRM atuais é que, ao baixar os 2 anos de clientes potenciais da Marketo, simplesmente atualizaríamos esse registro de cliente potencial para mostrar que também houve uma correspondência com um cliente potencial da Marketo. Isso tudo acontece no back-end e os pontos de contato devem permanecer os mesmos. Também gostaríamos de ver mais pontos de contato por causa dos clientes potenciais qualificados do Marketo. Se conseguirmos encontrar sessões da Web correspondentes às pessoas do Marketo, começaremos a ver os pontos de contato contados em [!DNL Marketo Measure].

**É possível baixar somente meus funcionários do Marketo e cortar a conexão do CRM?**

Neste momento, não. Teremos essa opção no futuro, mas precisamos criar outras fases dessa integração do Marketo para que possamos conectar os programas, oportunidades e ofertas da Marketo ao [!DNL Marketo Measure].

**Você importa TODOS os meus funcionários da Marketo?**

No momento, a data mais próxima para importar pessoas é 1º/1/2018, para que tenhamos um mínimo de 2 anos de dados, que é o mesmo comportamento que aplicamos aos downloads do CRM. Implementaremos um comportamento aprimorado para baixar uma janela contínua de 2 anos depois que a conexão do Marketo for estabelecida.

Também não filtramos por nenhum tipo de pessoa, portanto, todas as pessoas na janela de dois anos serão importadas e estarão qualificadas para pontos de contato.

**O que é SOLR e por que preciso habilitá-lo para usar este recurso?**

Habilitar o SOLR para sua instância do Marketo é uma etapa trivial que abre espaço de hardware no Marketo para que sua assinatura possa utilizar o [!DNL Marketo Measure] integração. Sem a SOLR ativada, não temos acesso a determinadas chamadas que, de outra forma, permitiriam baixar as pessoas apropriadas da sua instância do Marketo.
