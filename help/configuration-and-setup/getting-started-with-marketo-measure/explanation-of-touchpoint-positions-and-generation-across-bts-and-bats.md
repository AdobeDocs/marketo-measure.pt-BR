---
description: Explicação das posições dos pontos de contato e da geração entre BTs e BAT - [!DNL Marketo Measure] - Documentação do produto
title: Explicação das posições dos pontos de contato e da geração entre BTs e [!DNL BATs]
exl-id: 4903f917-a366-4767-a126-5216d2377399
source-git-commit: b910e5aedb9e178058f7af9a6907a1039458ce7a
workflow-type: tm+mt
source-wordcount: '752'
ht-degree: 2%

---

# Explicação das posições dos pontos de contato e da geração entre BTs e [!DNL BATs] {#explanation-of-touchpoint-positions-and-generation-across-bts-and-bats}

**Geração de posições de ponto de contato e fluxo através da Jornada de compradores**

Compreender as posições do ponto de contato do comprador e como elas são acionadas é fundamental para criar relatórios com sucesso com o [!DNL Marketo Measure] dados. Você desejará ter uma compreensão clara do que seus prospetos fizeram enquanto se movimentavam pela jornada do comprador e, por sua vez, como ela será nos dados do ponto de contato. Para obter mais contexto sobre este tópico, recomendamos revisar o [[!UICONTROL Geração e mapeamento de ponto de contato]](/help/configuration-and-setup/getting-started-with-marketo-measure/touchpoint-generation-and-mapping.md) artigo 10. o

[!DNL Marketo Measure] O tem uma variedade de posições de ponto de contato que são acionadas por várias etapas na jornada do comprador. Ao criar relatórios sobre [!DNL Marketo Measure] Há dois conjuntos de dados de pontos de contato, os BTs (Buyer Touchpoints) e os BATs (Buyer Attribution Touchpoints). Você pode notar que esses conjuntos de dados têm posições ligeiramente diferentes, pois estão relacionados a objetos diferentes. Para obter mais contexto sobre este tópico, recomendamos revisar o [Diferença entre os pontos de contato do comprador (BTs) e os pontos de contato de atribuição do comprador (BATs)](/help/configuration-and-setup/getting-started-with-marketo-measure/difference-between-buyer-touchpoints-and-buyer-attribution-touchpoints.md) artigo 10. o

**Pontos de contato do comprador (BTs)**: Esses são os pontos de contato associados a uma pessoa e sua jornada e serão exclusivos para essa pessoa. Os seguintes relatórios prontos para uso são integrados aos dados do ponto de contato do comprador.

* [!DNL Marketo Measure] 101: Informações privilegiadas por ID
* [!DNL Marketo Measure] 101: Clientes Potenciais Por Canal
* [!DNL Marketo Measure] 101: Lead/contato por ID
* [!DNL Marketo Measure] 101: Lead/contato por canal

A seguir, são destacadas as posições do ponto de contato do comprador, que descrevem onde um indivíduo está em sua jornada e quais ações ele tomou para ganhar essa posição.

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
   <td>Preenchimento do formulário <strong>OU</strong> Inclusão de Campanha/Programa</td> 
   <td>O primeiro formulário preenchido por um indivíduo tem (normalmente um envio de formulário, mas também pode ser uma inclusão de Campanha/Programa)</td> 
  </tr>
  <tr>
   <td>Post LC</td> 
   <td>Preenchimento do formulário <strong>OU</strong> Inclusão de Campanha/Programa</td> 
   <td>Qualquer formulário que um indivíduo preencher após sua LC (ou uma inclusão subsequente de Campanha/Programa)</td> 
  </tr>
 </tbody>
</table>

**Pontos de contato da atribuição do comprador (BATS)**: Esses são os pontos de contato associados a uma Oportunidade e sua jornada. Esses pontos de contato serão conectados à receita conforme estiverem conectados à Oportunidade e seus Contatos. Os seguintes relatórios prontos para uso são criados a partir dos dados do ponto de contato da atribuição do comprador.

* [!DNL Marketo Measure] 101: Oportunidades por ID
* [!DNL Marketo Measure] 101: Oportunidades por Canal de ID

<table> 
 <tbody>
  <tr>
   <th>Posição do ponto de contato da atribuição do comprador (BATs)</th> 
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
   <td>Preenchimento do formulário <strong>OU</strong> Inclusão de Campanha/Programa</td> 
   <td>O primeiro formulário de preenchimento de um contato teve (normalmente um envio de formulário, mas também pode ser uma inclusão de Campanha/Programa)</td> 
  </tr>
  <tr>
   <td>Criação da Oportunidade</td> 
   <td>Preenchimento do formulário <strong>OU</strong> Visita à Web <strong>OU</strong> Inclusão de Campanha/Programa</td> 
   <td>A interação de marketing mais próxima de quando a opção é criada</td> 
  </tr> 
  <tr>
   <td>Vencedor/Perdido Fechado</td> 
   <td>Preenchimento do formulário <strong>OU</strong> Visita à Web <strong>OU</strong> Inclusão de Campanha/Programa</td> 
   <td>A interação de marketing mais próxima de quando o Opp é fechado (vencido ou perdido)</td> 
  </tr>
  <tr>
   <td>Contatos intermediários</td> 
   <td>Preenchimento do formulário <strong>OU</strong> Inclusão de Campanha/Programa</td> 
   <td>Quando um contato preenche um formulário online e não coincide com o ponto de contato do marco</td> 
  </tr>
 </tbody>
</table>

[!DNL Marketo Measure] O tem esses dois conjuntos de dados de pontos de contato para criar uma compreensão clara da jornada de uma pessoa individual, bem como das Oportunidades. Esses dois conjuntos de dados de ponto de contato fornecem um mapa claro do que aconteceu de cima do funil até a parte inferior do funil.

O exemplo a seguir mostra o fluxo de dados de Pontos de contato do comprador (BTs) para Pontos de contato de atribuição do comprador (BATs). Neste exemplo, a Pessoa A e a Pessoa B fazem parte da mesma Oportunidade que tem uma Data de criação de 3/7/2020 e uma Data de fechamento de 5/6/2020.

**Pessoa A** Conjunto de dados do ponto de contato do comprador

* FT (First Touch, primeiro contato) - Paid Search.AdWords - 01/09/2019
* Criação de leads (LC) - Pesquisa orgânica.Google - 20/11/2019
* Post LC (formulário fill) - Webinar - 3/4/2020

**Pessoa B** Conjunto de dados do ponto de contato do comprador

* Primeiro contato (FT) - Social.Facebook pago - 26/8/2019
* Criação de leads (LC) - Pesquisa orgânica.Yahoo - 20/2/2020
* Post LC (preenchimento de formulário) - Email - 5/1/2020

**Oportunidades** Os dados do ponto de contato da atribuição do comprador devem ser lidos da seguinte maneira...

* Primeiro contato (FT) - Social.Facebook pago - 26/8/2019
   * de **Pessoa B** porque eles têm o verdadeiro _Primeiro contato_ para a Conta/Opção)
* Criação de leads (LC) - Pesquisa orgânica.Google - 20/11/2019
   * de **Pessoa A** porque eles têm o verdadeiro _Criação de leads_ para a Conta/Opção)
* Criação de Oportunidades (OC) - Webinar - 3/4/2020
   * (o ponto de contato Post LC de **Pessoa A** seria o _Ponto de contato OC_ porque foi a interação mais recente que temos para a Oportunidade ser criada em 7/3/2020)
* Vencedor Fechado - Email - 1/5/2020
   * (o ponto de contato Post LC de **Pessoa B** seria o _Ponto de Contato Won Fechado_ por ter sido a interação mais recente, temos de encerrar a Oportunidade em 6/5/2020)
