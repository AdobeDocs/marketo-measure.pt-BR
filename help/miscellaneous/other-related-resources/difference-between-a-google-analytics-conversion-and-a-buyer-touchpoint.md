---
unique-page-id: 18874648
description: Diferença entre uma conversão de Google Analytics e um ponto de contato do comprador - [!DNL Marketo Measure] - Documentação do produto
title: Diferença entre uma Conversão do Google Analytics e um Ponto de Contato do Comprador
exl-id: d09d963c-3207-467c-852a-d1edd49511fa
source-git-commit: 09ffdbb0b1baeed870a3145268997e63a3707c97
workflow-type: tm+mt
source-wordcount: '505'
ht-degree: 0%

---

# Diferença entre uma Conversão do Google Analytics e um Ponto de Contato do Comprador {#difference-between-a-google-analytics-conversion-and-a-buyer-touchpoint}

Saiba o que [!DNL Google Analytics (GA)] O objetivo é e como ele se diferencia de um ponto de contato do comprador.

**O que são Conversões do Google Analytics?**

[!UICONTROL Google Analytics] as conversões são completamente determinadas pela forma como um profissional de marketing ou um desenvolvedor da Web codifica as conclusões de &quot;meta&quot; em um determinado site. As metas, de acordo com a Google, podem ser consideradas como &quot;realizando uma compra (para um site de comércio eletrônico), concluindo um nível de jogo (para um aplicativo de jogos para dispositivos móveis) ou enviando um formulário de informações de contato (para um site de marketing ou geração de leads)&quot;. Na maioria das vezes, os profissionais de marketing veem metas/conversões como alguém preenchendo um formulário informativo.

No entanto, as metas não podem ser codificadas para gerenciar comportamentos muito específicos. Em vez disso, existem Tipos de metas que um desenvolvedor da Web pode configurar. Veja abaixo alguns desses exemplos:

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
   <td>Um local específico carrega</td> 
   <td><em>Obrigado por se registrar!</em> página da Web ou tela do aplicativo</td> 
  </tr> 
  <tr> 
   <td>Duração</td> 
   <td>Sessões que duram um período específico ou mais</td> 
   <td>10 minutos ou mais em um site de suporte</td> 
  </tr> 
  <tr> 
   <td>Páginas/telas por sessão</td> 
   <td>Um usuário exibe um número específico de páginas ou telas</td> 
   <td>5 páginas ou telas foram carregadas</td> 
  </tr> 
  <tr> 
   <td>Evento</td> 
   <td>Uma ação definida como Evento é acionada</td> 
   <td>Recomendação social, reprodução de vídeo e clique em</td> 
  </tr> 
 </tbody> 
</table>

A maioria dos profissionais de marketing configura suas conversões como &quot;Metas de destino&quot;, o que significa que eles geralmente criam uma página de agradecimento após um formulário para considerar essa uma conversão formal.

O que isso significa é que a Google considerará as exibições de página de Agradecimentos como uma conversão. Do ponto de vista do Google Analytics, essa é a realização com a qual a maioria dos profissionais de marketing está bem.

No entanto, os pontos de contato do comprador agem de forma muito diferente.

**Qual é a diferença entre os pontos de contato do comprador?**

[!DNL Marketo Measure] O JavaScript rastreia os dados da sessão e os envios de formulário em todas as formas de um site específico. Não há necessidade de codificar metas de uma [!DNL Marketo Measure] ponto de vista. Esse processo é automático. Para envios de formulários, [!DNL Marketo Measure] informa o preenchimento de um formulário sempre que um usuário anônimo preenche campos de informação em um formulário específico e também clica no botão de envio do formulário. [!DNL Marketo Measure] não precisa de uma página de agradecimento para registrar o envio do formulário.

[!DNL Marketo Measure] criará um ponto de contato de formulário quando:

* Um cliente potencial/contato associado a essas conversões é exibido em seu CRM.
* O [!DNL Marketo Measure] O JS está presente nas páginas da Web que contêm o formulário.
* Um formulário é enviado em uma sessão de 30 minutos.

[!DNL Marketo Measure] O ignorará as conversões de destino do Google Analytics quando:

* Um bot envia formulários em um site (esses bots geralmente não o fazem no CRM de um cliente).
* Um usuário envia mais formulários após o envio do primeiro formulário. [!DNL Marketo Measure] somente impulsionará a primeira conversão dessa sessão.
* O usuário clica no envio do formulário várias vezes. [!DNL Marketo Measure] O considerará somente o envio do primeiro formulário.
* O usuário recarrega a página de agradecimento várias vezes.
* O usuário está usando qualquer ferramenta de bloqueio de anúncios.

Como podem ver, existem diferenças fundamentais entre o que a DG e o [!DNL Marketo Measure] considere uma conversão. Portanto, é muito provável que o número de conversões e o número de pontos de contato do formulário sejam diferentes.
