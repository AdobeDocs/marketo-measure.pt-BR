---
unique-page-id: 18874648
description: Diferença entre uma Conversão do Google Analytics e uma Buyer Touchpoint - [!DNL Marketo Measure]
title: Diferença entre uma conversão do Google Analytics e um Buyer Touchpoint
exl-id: d09d963c-3207-467c-852a-d1edd49511fa
feature: Touchpoints
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '495'
ht-degree: 5%

---

# Diferença entre uma conversão do Google Analytics e um Buyer Touchpoint {#difference-between-a-google-analytics-conversion-and-a-buyer-touchpoint}

Saiba o que é uma meta do [!DNL Google Analytics (GA)] e como ela se diferencia de uma Buyer Touchpoint.

**O que são Conversões do Google Analytics?**

As conversões de [!UICONTROL Google Analytics] são determinadas pela maneira como um profissional de marketing ou um desenvolvedor da Web codifica conclusões de &quot;meta&quot; em um site específico. As metas, de acordo com a Google, podem ser consideradas como &quot;fazer uma compra (para um site de comércio eletrônico), concluir um nível de jogo (para um aplicativo de jogos para dispositivos móveis) ou enviar um formulário de informações de contato (para um site de marketing ou de geração de leads)&quot;. Na maioria das vezes, os profissionais de marketing veem metas/conversões como alguém que preenche um formulário informativo.

No entanto, as metas não podem ser codificadas para gerenciar comportamentos específicos. Em vez disso, há Tipos de metas que um desenvolvedor da Web pode configurar. Abaixo estão alguns desses exemplos:

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
   <td><em>Obrigado por se registrar!Página da Web ou tela do aplicativo </em></td> 
  </tr> 
  <tr> 
   <td>Duração</td> 
   <td>Sessões que duram uma quantidade específica de tempo ou mais</td> 
   <td>10 minutos ou mais em um site de suporte</td> 
  </tr> 
  <tr> 
   <td>Páginas/Screens por sessão</td> 
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

Isso significa que a Google considera as exibições da página de agradecimento como uma conversão. Do ponto de vista do Google Analytics, essa é uma conclusão com a qual a maioria dos profissionais de marketing está de acordo.

No entanto, os Pontos de Contato do Comprador agem de forma diferente.

**Qual a diferença entre os Pontos de Contato do Comprador?**

[!DNL Marketo Measure] O JavaScript rastreia dados de sessão e envios de formulários em todos os formulários de um site específico. Não há necessidade de codificar metas do ponto de vista de [!DNL Marketo Measure]. Esse processo é automático. Para envios de formulários, o [!DNL Marketo Measure] relata o preenchimento de um formulário toda vez que um usuário anônimo preenche campos de informações em um formulário específico e também clica no botão envio do formulário. [!DNL Marketo Measure] não precisa de uma página de agradecimento para gravar o envio do formulário.

[!DNL Marketo Measure] cria um ponto de contato de formulário quando:

* Um cliente potencial/contato associado a essas conversões aparece em seu CRM.
* O JS [!DNL Marketo Measure] está presente nas páginas da Web que contêm o formulário.
* Um formulário é enviado dentro de uma sessão de 30 minutos.

[!DNL Marketo Measure] ignora conversões do Google Analytics de destino quando:

* Um bot envia formulários em um site (esses bots geralmente não fazem parte do CRM de um cliente).
* Um usuário envia mais formulários após o primeiro envio. [!DNL Marketo Measure] somente enviará a primeira conversão dessa sessão.
* O usuário clica no envio do formulário várias vezes. [!DNL Marketo Measure] só considerará o primeiro envio de formulário.
* O usuário recarrega a página de agradecimento várias vezes.
* O usuário está usando qualquer ferramenta de Bloqueio de anúncios.

Como você pode ver, há diferenças fundamentais entre o que o GA e o [!DNL Marketo Measure] consideram uma conversão como sendo. Portanto, é provável que o número de conversões e o número de pontos de contato de formulários sejam diferentes.
