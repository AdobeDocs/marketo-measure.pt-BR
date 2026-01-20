---
unique-page-id: 37356395
description: '[!DNL Marketo Engage] Integração de pessoas - [!DNL Marketo Measure]'
title: Integração de pessoas do [!DNL Marketo Engage]
exl-id: 51930e84-4ff8-4e35-9d44-ea017c24b051
feature: Integration
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '868'
ht-degree: 2%

---

# Integração de pessoas do [!DNL Marketo Engage] {#marketo-engage-people-integration}

A integração de pessoas do Marketo permite que [!DNL Marketo Measure] comece a baixar pessoas do Marketo e comece a vincular suas sessões rastreadas ao indivíduo e mapear pontos de contato para seus compromissos. Historicamente, o [!DNL Marketo Measure] só conseguiu mapear pontos de contato para uma pessoa do CRM, portanto, isso ajuda os profissionais de marketing a medir seus esforços de marketing antes de esperar um estágio ou acionador para sincronizá-lo ao CRM.

## Requisitos {#requirements}

* Instância do Marketo de produção
* Instância de produção [!DNL Salesforce] ou [!DNL Microsoft Dynamics]
* Qualquer assinatura paga de [!DNL Marketo Measure]
* SOLR habilitada (contate o [Suporte da Marketo](https://nation.marketo.com/t5/Support/ct-p/Support){target="_blank"} para habilitar)

## Como funciona {#how-it-works}

Como cliente atual, [!DNL Marketo Measure] já está baixando pessoas do seu CRM. O processo padrão é que o [!DNL Marketo Measure] baixe as pessoas e mapeie o endereço de email para uma sessão da Web que rastreamos via bizible.js.

Com a introdução do download de pessoas do Marketo, [!DNL Marketo Measure] agora pode mapear sessões da Web para um pool maior de indivíduos que não foram sincronizados com o CRM. Geralmente, vemos isso devido a processos internos que esperam até que as pessoas atinjam um determinado status antes de serem enviadas para o CRM.

Quando o [!DNL Marketo Measure] mapeia com êxito a pessoa do Marketo para uma sessão da Web, nosso processamento gerará todos os pontos de contato relevantes para ele, que podem ser reportados no [!DNL Marketo Measure Discover]. Se essa pessoa do Marketo for enviada para o CRM, [!DNL Marketo Measure] tratará do cenário duplicado e recriaremos o ponto de contato para a pessoa do CRM e marcaremos o conjunto inicial como &quot;duplicado&quot;.

Para que possamos detectar essas duplicatas, verifique se a sincronização do [!DNL Marketo-Salesforce] ou do [!DNL Marketo-Dynamics] está preenchendo as Ids de Cliente Potencial e de Contato na Pessoa do Marketo. Se a ID estiver sincronizando corretamente, você poderá ver a ID do CRM no registro de Pessoa, desta forma:

![](assets/5a.png)

![](assets/5b.png)

Os clientes têm a opção de relatar o conjunto completo de pessoas do Marketo e do CRM dentro do [!DNL Marketo Measure] Discover. Se você estiver interessado em relatórios somente sobre pessoas do CRM, recomendamos criar um Segmento para filtrá-las.

## [!DNL Marketo Measure Discover] {#marketo-measure-discover}

Ao relatar clientes potenciais (pessoas) em [!DNL Marketo Measure Discover], você verá o total de seus clientes potenciais do Marketo e do CRM. Para criar relatórios somente sobre pessoas do Marketo ou somente clientes potenciais do CRM, será necessário criar uma Categoria do segmento para sua origem e, em seguida, criar Regras de segmento para o Marketo e o CRM usando o campo &quot;Sistema Source&quot; para definir a regra. Depois que os segmentos forem criados, você verá a categoria do Source disponível para filtrar pelos painéis do [!DNL Marketo Measure Discover].

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

*Há um problema de comportamento conhecido em que os campos da entidade Empresa da Marketo não afetam o valor updatedAt da Pessoa. Portanto, se campos relevantes, como Site ou Empresa, forem atualizados, [!DNL Marketo Measure] não saberá que esses valores são modificados porque o valor date/time updatedAt não é atualizado. Isso afeta o recurso ABM, no qual não teríamos dados novos para resolver a Conta do lead. Não há solução alternativa no momento, mas há planos para abordar isso no futuro.

## Perguntas frequentes {#faq}

**Por que minhas contagens de clientes potenciais diferem entre meu CRM e o [!DNL Marketo Measure Discover]?**

Como essa integração nos permite criar pontos de contato para clientes potenciais que importamos diretamente da Marketo, pode haver clientes potenciais que não foram sincronizados com o CRM, portanto, a contagem no Discover pode ser maior que o CRM, já que os pontos de contato são enviados apenas para os clientes potenciais do CRM.

**Como isso substitui meus dados?**

Na verdade, essa integração mescla os conjuntos de dados na instância atual do [!DNL Marketo Measure]. Portanto, nada será substituído. O que esperaríamos de seus clientes potenciais de CRM atuais é que, ao baixar os 2 anos de clientes potenciais da Marketo, simplesmente atualizaríamos esse registro de cliente potencial para mostrar que também houve uma correspondência com um cliente potencial da Marketo. Isso tudo acontece no back-end e os pontos de contato devem permanecer os mesmos. Também gostaríamos de ver mais pontos de contato por causa dos clientes potenciais qualificados do Marketo. Se conseguirmos encontrar sessões da Web correspondentes a essas pessoas do Marketo, começaremos a ver os pontos de contato contados em [!DNL Marketo Measure].

**É possível baixar somente minha equipe do Marketo e cortar a conexão do CRM?**

Neste momento, não. Teremos essa opção no futuro, mas precisamos compilar outras fases dessa integração do Marketo para que possamos conectar os programas, oportunidades e ofertas da Marketo ao [!DNL Marketo Measure].

**Importar TODOS os meus funcionários da Marketo?**

No momento, a data mais próxima para importar pessoas é 1º/1/2018, para que tenhamos um mínimo de 2 anos de dados, que é o mesmo comportamento que aplicamos aos downloads do CRM. Implementaremos um comportamento aprimorado para baixar uma janela contínua de 2 anos depois que a conexão do Marketo for estabelecida.

Também não filtramos por nenhum tipo de pessoa, portanto, todas as pessoas na janela de dois anos serão importadas e estarão qualificadas para pontos de contato.

**O que é SOLR e por que preciso habilitá-lo para usar este recurso?**

Habilitar a SOLR para sua instância do Marketo é uma etapa trivial que abre espaço de hardware no Marketo para que sua assinatura possa utilizar a integração do [!DNL Marketo Measure]. Sem a SOLR ativada, não temos acesso a determinadas chamadas que, de outra forma, permitiriam baixar as pessoas apropriadas da sua instância do Marketo.
