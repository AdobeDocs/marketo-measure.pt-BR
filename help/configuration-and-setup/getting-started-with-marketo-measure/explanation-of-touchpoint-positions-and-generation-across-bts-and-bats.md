---
description: Explicação das Posições e Geração dos Pontos de Contato entre BT e MTD - [!DNL Marketo Measure]
title: Explicação das posições de touchpoint e da geração entre BTs e [!DNL BATs]
exl-id: 4903f917-a366-4767-a126-5216d2377399
feature: Touchpoints
source-git-commit: cd5597a681f388a5b5c743dadd38bf3127811bff
workflow-type: tm+mt
source-wordcount: '764'
ht-degree: 3%

---

# Explicação das Posições e Geração de Pontos de Contato entre BT e [!DNL BATs] {#explanation-of-touchpoint-positions-and-generation-across-bts-and-bats}

**Geração de posições de ponto de contato e fluxo através da Jornada de compradores**

Entender as posições do ponto de contato do comprador e como elas são acionadas é fundamental para gerar relatórios com êxito [!DNL Marketo Measure] dados. Você deseja ter uma compreensão clara do que seus clientes potenciais fizeram enquanto percorriam a jornada do comprador e, por sua vez, como isso será nos dados do Touchpoint. Para obter mais contexto sobre este tópico, recomendamos analisar a [[!UICONTROL Geração e mapeamento de pontos de contato]](/help/configuration-and-setup/getting-started-with-marketo-measure/touchpoint-generation-and-mapping.md) artigo.

[!DNL Marketo Measure] O tem várias posições de Touchpoint acionadas por várias etapas na jornada do comprador. Ao criar relatórios sobre [!DNL Marketo Measure] Existem dois conjuntos de dados de Pontos de contato: Pontos de contato do comprador (BTs) e Pontos de contato de atribuição do comprador (BATs). Você pode notar que esses conjuntos de dados têm posições ligeiramente diferentes, pois se relacionam a objetos diferentes. Para obter mais contexto sobre este tópico, recomendamos analisar a [Diferença entre pontos de contato do comprador (BTs) e pontos de contato de atribuição do comprador (BATs)](/help/configuration-and-setup/getting-started-with-marketo-measure/difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints.md) artigo.

**Pontos de contato do comprador (BTs)**: esses são os pontos de contato associados a uma pessoa e suas jornadas e serão exclusivos desse indivíduo. Os seguintes relatórios prontos para uso são criados a partir dos dados do Ponto de contato do comprador.

* [!DNL Marketo Measure] 101: Clientes Potenciais por ID
* [!DNL Marketo Measure] 101: Clientes Potenciais Por Canal
* [!DNL Marketo Measure] 101: Cliente Potencial/Contato por ID
* [!DNL Marketo Measure] 101: Cliente Potencial/Contato Por Canal

A seguir, há uma descrição das posições do ponto de contato do comprador que descrevem onde um indivíduo está em sua jornada e quais ações ele tomou para conquistar essa posição.

<table> 
 <tbody>
  <tr>
   <th>Posição do ponto de contato do comprador (BTs)</th> 
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

**Pontos de contato de atribuição do comprador (BATS)**: esses são os pontos de contato associados a uma Oportunidade e sua jornada. Esses pontos de contato são conectados à receita à medida que são conectados à Oportunidade e seus Contatos. Os relatórios prontos para uso a seguir são criados a partir dos dados do Ponto de contato de atribuição do comprador.

* [!DNL Marketo Measure] 101: Oportunidades por ID
* [!DNL Marketo Measure] 101: Oportunidades por canal de ID

<table> 
 <tbody>
  <tr>
   <th>Posição do ponto de contato de atribuição do comprador (BATs)</th> 
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
   <td>Preenchimento de formulário <strong>OU</strong> Visita na Web <strong>OU</strong> Inclusão de campanha/programa</td> 
   <td>A interação de marketing mais próxima de quando o Opp é criado</td> 
  </tr> 
  <tr>
   <td>Ganhos/Perdas Fechados</td> 
   <td>Preenchimento de formulário <strong>OU</strong> Visita na Web <strong>OU</strong> Inclusão de campanha/programa</td> 
   <td>A interação de marketing mais próxima de quando o Opp está fechado (Ganhado ou Perdido)</td> 
  </tr>
  <tr>
   <td>Contatos intermediários</td> 
   <td>Preenchimento de formulário <strong>OU</strong> Inclusão de campanha/programa</td> 
   <td>Quando um contato preenche um formulário online e ele não coincide com o ponto de contato de uma etapa</td> 
  </tr>
 </tbody>
</table>

[!DNL Marketo Measure] O tem esses dois conjuntos de dados de Pontos de contato para criar uma compreensão clara da jornada de uma pessoa e das Oportunidades. Esses dois conjuntos de dados do Touchpoint fornecem um mapa claro do que aconteceu de cima do funil para baixo do funil.

O exemplo a seguir mostra o fluxo de dados de BTs (Pontos de contato do comprador) para BATs (Pontos de contato de atribuição do comprador). Neste exemplo, a Pessoa A e a Pessoa B fazem parte da mesma Oportunidade que tem uma Data de criação de 7/3/2020 e uma Data de fechamento de 6/5/2020.

**Pessoa A** Conjunto de dados do ponto de contato do comprador

* Primeiro contato (FT) - Pesquisa paga.AdWords - 1/9/2019
* Criação de leads (LC) - Pesquisa orgânica.Google - 20/11/2019
* Publicar LC (preenchimento de formulário) - Webinário - 4/3/2020

**Pessoa B** Conjunto de dados do ponto de contato do comprador

* Primeiro contato (FT) - Social pago.Facebook - 26/08/2019
* Criação de leads (LC) - Pesquisa orgânica.Yahoo - 20/2/2020
* Publicar LC (preenchimento de formulário) - Email - 01/05/2020

**Oportunidades** Os dados do ponto de contato de atribuição do comprador seriam lidos da seguinte maneira...

* Primeiro contato (FT) - Social pago.Facebook - 26/08/2019
   * (de **Pessoa B** porque eles têm o verdadeiro _Primeiro contato_ para a Conta/Opp)
* Criação de leads (LC) - Pesquisa orgânica.Google - 20/11/2019
   * (de **Pessoa A** porque eles têm o verdadeiro _Criação de clientes potenciais_ para a Conta/Opp)
* Criação de oportunidade (OC) - Webinário - 4/3/2020
   * (o ponto de contato Post LC de **Pessoa A** seria o _Ponto de contato do OC_ porque foi a interação mais recente que temos com a oportunidade que está sendo criada em 7/3/2020)
* Won fechado - Email - 1/5/2020
   * (o ponto de contato Post LC de **Pessoa B** seria o _Ponto de contato conquistado fechado_ porque foi a interação mais recente que temos com a Oportunidade sendo fechada em 6/5/2020)
