---
description: Explicação das Posições do Ponto de Contato e Geração entre BTs e BATs - [!DNL Marketo Measure]
title: Explicação das posições de touchpoint e da geração entre BTs e [!DNL BATs]
exl-id: 4903f917-a366-4767-a126-5216d2377399
feature: Touchpoints
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '764'
ht-degree: 3%

---

# Explicação das Posições do Ponto de Contato e Geração entre BTs e [!DNL BATs] {#explanation-of-touchpoint-positions-and-generation-across-bts-and-bats}

**Geração de Posições de Pontos de Contato e Fluxo através da Jornada de Compradores**

Entender as posições do Buyer Touchpoint e como elas são acionadas é crucial para um relatório bem-sucedido com dados do [!DNL Marketo Measure]. Você deseja ter uma compreensão clara do que seus clientes potenciais fizeram enquanto percorriam a jornada do comprador e, por sua vez, como isso será nos dados do Touchpoint. Para obter mais contexto sobre este tópico, recomendamos analisar o artigo [[!UICONTROL Geração e mapeamento de pontos de contato]](/help/configuration-and-setup/getting-started-with-marketo-measure/touchpoint-generation-and-mapping.md).

[!DNL Marketo Measure] tem diversas posições de Touchpoint que são acionadas por várias etapas na jornada do comprador. Ao criar relatórios sobre dados do [!DNL Marketo Measure], há dois conjuntos de dados de Pontos de contato, Pontos de contato do comprador (BTs) e Pontos de contato de atribuição do comprador (BATs). Você pode notar que esses conjuntos de dados têm posições ligeiramente diferentes, pois se relacionam a objetos diferentes. Para obter mais contexto sobre este tópico, recomendamos analisar o artigo [Diferença entre Pontos de Contato do Comprador (BTs) e Pontos de Contato de Atribuição do Comprador (BATs)](/help/configuration-and-setup/getting-started-with-marketo-measure/difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints.md).

**Pontos de contato do comprador (BTs)**: são os pontos de contato associados a uma pessoa e suas jornadas e serão exclusivos desse indivíduo. Os seguintes relatórios prontos para uso são criados a partir dos dados do Buyer Touchpoint.

* [!DNL Marketo Measure] 101: Clientes Potenciais por ID
* [!DNL Marketo Measure] 101: Clientes Potenciais Por Canal
* [!DNL Marketo Measure] 101: Cliente Potencial/Contato por ID
* [!DNL Marketo Measure] 101: Cliente Potencial/Contato Por Canal

A seguir, há uma descrição das posições da Buyer Touchpoint que descrevem onde um indivíduo está em sua jornada e quais ações ele tomou para conquistar essa posição.

<table> 
 <tbody>
  <tr>
   <th>Posição da Buyer Touchpoint (BTs)</th> 
   <th>Tipo de ponto de contato (ação que pode acionar o ponto de contato)</th> 
   <th>Descrição do ponto de contato</th> 
  </tr>
  <tr>
   <td>Primeiro toque (PT)</td> 
   <td>Visita à Web</td> 
   <td>A primeira interação de marketing que um indivíduo tem com sua marca</td> 
  </tr>
  <tr>
   <td>Criação de leads (LC)</td> 
   <td>Preenchimento de formulário <strong>OU</strong> Inclusão de campanha/programa</td> 
   <td>O primeiro formulário preenche um indivíduo (normalmente um envio de formulário, mas também pode ser uma inclusão de Campanha/Programa)</td> 
  </tr>
  <tr>
   <td>Publicar LC</td> 
   <td>Preenchimento de formulário <strong>OU</strong> Inclusão de campanha/programa</td> 
   <td>Qualquer formulário que um indivíduo complete após sua LC (ou uma inclusão de Campanha/Programa subsequente)</td> 
  </tr>
 </tbody>
</table>

**Pontos de Contato de Atribuição do Comprador (BATS)**: são os pontos de contato associados a uma Oportunidade e sua jornada. Esses pontos de contato são conectados à receita à medida que são conectados à Oportunidade e seus Contatos. Os seguintes relatórios prontos para uso são criados a partir dos dados do Buyer Attribution Touchpoint.

* [!DNL Marketo Measure] 101: Oportunidades por ID
* [!DNL Marketo Measure] 101: Oportunidades por canal de ID

<table> 
 <tbody>
  <tr>
   <th>Posição da Buyer Attribution Touchpoint (BATs)</th> 
   <th>Tipo de ponto de contato (ação que pode acionar o ponto de contato)</th> 
   <th>Descrição do ponto de contato</th> 
  </tr>
  <tr>
   <td>Primeiro toque (PT)</td> 
   <td>Visita à Web</td> 
   <td>A primeira interação de marketing que um contato teve com sua marca</td> 
  </tr>
  <tr>
   <td>Criação de leads (LC)</td> 
   <td>Preenchimento de formulário <strong>OU</strong> Inclusão de campanha/programa</td> 
   <td>O primeiro preenchimento de formulário que um contato tinha (normalmente um envio de formulário, mas também poderia ser uma inclusão de Campanha/Programa)</td> 
  </tr>
  <tr>
   <td>Criação da oportunidade</td> 
   <td>Preenchimento de Formulário <strong>OR</strong> Visita na Web <strong>OR</strong> Inclusão de Campanha/Programa</td> 
   <td>A interação de marketing mais próxima de quando o Opp é criado</td> 
  </tr> 
  <tr>
   <td>Ganhos/Perdas Fechados</td> 
   <td>Preenchimento de Formulário <strong>OR</strong> Visita na Web <strong>OR</strong> Inclusão de Campanha/Programa</td> 
   <td>A interação de marketing mais próxima de quando o Opp está fechado (Ganhado ou Perdido)</td> 
  </tr>
  <tr>
   <td>Contatos intermediários</td> 
   <td>Preenchimento de formulário <strong>OU</strong> Inclusão de campanha/programa</td> 
   <td>Quando um contato preenche um formulário online e ele não coincide com o ponto de contato de uma etapa</td> 
  </tr>
 </tbody>
</table>

[!DNL Marketo Measure] tem esses dois conjuntos de dados de Touchpoint para criar uma compreensão clara da jornada e das Oportunidades de uma pessoa. Esses dois conjuntos de dados do Touchpoint fornecem um mapa claro do que aconteceu de cima para baixo do funnel funnel.

O exemplo a seguir mostra o fluxo de dados de BTs (Pontos de contato do comprador) para BATs (Pontos de contato de atribuição do comprador). Neste exemplo, a Pessoa A e a Pessoa B fazem parte da mesma Oportunidade que tem uma Data de criação de 7/3/2020 e uma Data de fechamento de 6/5/2020.

**Pessoa A** Conjunto de dados do Buyer Touchpoint

* Primeiro contato (FT) - Pesquisa paga.AdWords - 1/9/2019
* Criação de leads (LC) - Pesquisa orgânica.Google - 20/11/2019
* Publicar LC (preenchimento de formulário) - Webinário - 4/3/2020

**Pessoa B** Conjunto de dados do Buyer Touchpoint

* Primeiro contato (FT) - Pago Social.Facebook - 26/08/2019
* Criação de leads (LC) - Pesquisa orgânica.Yahoo - 20/2/2020
* Publicar LC (preenchimento de formulário) - Email - 01/05/2020

**Oportunidades** Os dados do Buyer Attribution Touchpoint seriam lidos da seguinte maneira...

* Primeiro contato (FT) - Pago Social.Facebook - 26/08/2019
   * (da **Pessoa B** porque ela tem o verdadeiro _Primeiro contato_ para a Conta/Opp)
* Criação de leads (LC) - Pesquisa orgânica.Google - 20/11/2019
   * (da **Pessoa A** porque ela tem a verdadeira _Criação de Clientes Potenciais_ para a Conta/Opp)
* Criação de oportunidade (OC) - Webinário - 4/3/2020
   * (o ponto de contato Pós-LC da **Pessoa A** seria o _ponto de contato OC_ porque foi a interação mais recente que temos com a Oportunidade que está sendo criada em 7/3/2020)
* Won fechado - Email - 1/5/2020
   * (o ponto de contato Pós-LC da **Pessoa B** seria o _Ponto de contato Ganho Fechado_ porque foi a interação mais recente que temos com a Oportunidade sendo fechada em 6/5/2020)
