---
unique-page-id: 18874648
description: Diferença entre uma Conversão de Google Analytics e um Ponto de Contato do Comprador - [!DNL Marketo Measure]
title: Diferença entre uma conversão do Google Analytics e um Buyer Touchpoint
exl-id: d09d963c-3207-467c-852a-d1edd49511fa
feature: Touchpoints
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '505'
ht-degree: 4%

---

# Diferença entre uma conversão do Google Analytics e um Buyer Touchpoint {#difference-between-a-google-analytics-conversion-and-a-buyer-touchpoint}

Saiba o que é [!DNL Google Analytics (GA)] A meta é e como ela se diferencia de um ponto de contato do comprador.

**O que são conversões de Google Analytics?**

[!UICONTROL Google Analytics] as conversões são completamente determinadas por como um profissional de marketing ou um desenvolvedor da web codifica conclusões de &quot;meta&quot; em um site específico. Metas, de acordo com a Google, podem ser consideradas como &quot;fazer uma compra (para um site de comércio eletrônico), concluir um nível de jogo (para um aplicativo de jogos para dispositivos móveis) ou enviar um formulário de informações de contato (para um site de marketing ou de geração de leads)&quot;. Na maioria das vezes, os profissionais de marketing veem metas/conversões como alguém que preenche um formulário informativo.

No entanto, as metas do não podem ser codificadas para gerenciar comportamentos muito específicos. Em vez disso, há Tipos de metas que um desenvolvedor da Web pode configurar. Abaixo estão alguns desses exemplos:

<table> 
 <colgroup> 
  <col> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <td><strong>Tipo de meta</strong></td> 
   <td><p><strong>Descrição</strong></p></td> 
   <td><strong>Exemplo</strong></td> 
  </tr> 
  <tr> 
   <td><p>Destino</p></td> 
   <td>Um local específico é carregado</td> 
   <td><em>Obrigado por se registrar.</em> página da web ou tela do aplicativo</td> 
  </tr> 
  <tr> 
   <td>Duração</td> 
   <td>Sessões que duram uma quantidade específica de tempo ou mais</td> 
   <td>10 minutos ou mais em um site de suporte</td> 
  </tr> 
  <tr> 
   <td>Páginas/Telas por sessão</td> 
   <td>Um usuário visualiza um número específico de páginas ou telas</td> 
   <td>5 páginas ou telas foram carregadas</td> 
  </tr> 
  <tr> 
   <td>Evento</td> 
   <td>Uma ação definida como um Evento é acionada</td> 
   <td>Recomendação social, reprodução e clique</td> 
  </tr> 
 </tbody> 
</table>

A maioria dos profissionais de marketing configura suas conversões como &quot;Metas de destino&quot;, o que significa que geralmente criam uma página de agradecimento após um formulário para considerar que é uma conversão formal.

Isso significa que o Google considerará as exibições de página de agradecimento como uma conversão. Do ponto de vista de Google Analytics, essa é uma conclusão com a qual a maioria dos profissionais de marketing está de acordo.

No entanto, os Pontos de Contato do Comprador agem de forma muito diferente.

**Qual é a diferença entre os pontos de contato do comprador?**

[!DNL Marketo Measure] O JavaScript rastreia dados de sessão e envios de formulário em todos os formulários de um site específico. Não há necessidade de codificar metas de uma [!DNL Marketo Measure] ponto de vista. Esse processo é automático. Para envios de formulários, [!DNL Marketo Measure] relata o preenchimento de um formulário sempre que um usuário anônimo preenche campos de informações em um formulário específico e também clica no botão envio do formulário. [!DNL Marketo Measure] não precisa de uma página de agradecimento para registrar o envio do formulário.

[!DNL Marketo Measure] criará um ponto de contato de formulário quando:

* Um cliente potencial/contato associado a essas conversões aparece em seu CRM.
* A variável [!DNL Marketo Measure] JS está presente nas páginas da Web que contêm o formulário.
* Um formulário é enviado dentro de uma sessão de 30 minutos.

[!DNL Marketo Measure] O ignorará as conversões do Google Analytics de destino quando:

* Um bot envia formulários em um site (esses bots geralmente não fazem parte do CRM de um cliente).
* Um usuário envia mais formulários após o primeiro envio. [!DNL Marketo Measure] O só enviará a primeira conversão dessa sessão.
* O usuário clica no envio do formulário várias vezes. [!DNL Marketo Measure] O só considerará o primeiro envio de formulário.
* O usuário recarregará a página de agradecimento várias vezes.
* O usuário está usando qualquer ferramenta de Bloqueio de anúncios.

Como você pode ver, há diferenças fundamentais entre o que a DG e [!DNL Marketo Measure] considere uma conversão como. Portanto, é muito provável que o número de conversões e o número de pontos de contato do formulário sejam diferentes.
