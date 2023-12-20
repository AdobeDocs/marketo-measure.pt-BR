---
description: Visão geral das permissões de integração - [!DNL Marketo Measure] - Documentação do produto
title: Visão geral das permissões de integração
hide: true
hidefromtoc: true
feature: APIs, Integration
source-git-commit: 9196877384140d60a22012b43ea960017528f4d5
workflow-type: tm+mt
source-wordcount: '239'
ht-degree: 4%

---

# Visão geral das permissões de integração {#integration-permissions-overview}

Este guia descreve as permissões necessárias para uma integração perfeita com o Marketo Measure, garantindo que cada integração funcione de maneira eficaz e sem problemas.

<table>
<thead>
  <tr>
    <th style="width:10%">Integração</th>
    <th style="width:20%">Tipo de dados
    <li>Dados de interação na Web</li>
    <li>Dados do sistema B2B</li>
    <li>Dados da plataforma de publicidade</li></th>
    <th style="width:30%">O que rastreamos</th>
    <th style="width:40%">Requisitos de permissão</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Salesforce</td>
    <td>Dados do sistema B2B    
</td>
    <td>O Marketo Measure está rastreando:
    <br>
    <li>Conta</li>
<li>Campanha</li>
<li>CampaignMember</li>
<li>Contato</li>
<li>CurrencyConversionRange</li>
<li>CurrencyStatus</li>
<li>Eventos</li>
<li>Histórico do campo (lead, contato e oportunidade)</li>
<li>Lead</li>
<li>Oportunidade</li>
<li>OpportunityContactRole</li>
<li>OpportunityHistory</li>
<li>Tarefas</li>
<br>
Os pontos de contato criados e outros dados são gravados em campos bizíveis personalizados em Conta, Campanha, Membro da campanha, Caso, Contato, Cliente potencial e Oportunidade.</td>
    <td><b>Permissões de usuário conectado do Salesforce (obrigatório)</b>
    <br>
    <b>Conjunto De Permissões De Administrador Do Marketo Measure Para Usuário Dedicado:</b> Permitir que o administrador do SFDC execute operações CRUD no marketing para medir objetos.
    <br>
    <b>Exibir e editar o conjunto de permissões de clientes em potencial convertidos:</b> Isso permite que o Marketo Measure decore leads depois de serem convertidos em contatos.
    <br>
    <b>Caixa de seleção do usuário de marketing do Salesforce:</b> A caixa de seleção Marketing User permite que os usuários criem campanhas e usem os Assistentes de importação do Campaign.
    <br>
    <b>Usuário padrão do Marketo Measure:</b> Oferece ao usuário a capacidade de ler registros de objetos do Marketo Measure.
    <p>
    <b>Permissões de campo padrão do Salesforce</b>
    <a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">Objetos e acesso padrão do Salesforce</a>
    <p>
    <b>Permissões de campo personalizado do Salesforce</b>
    <br>
    Fornecemos configurações de recursos para manter campos personalizados do Salesforce que os clientes podem usar. Se essas configurações de recurso forem definidas, precisaremos de acesso de LEITURA a cada um dos campos do Salesforce salvos na configuração de recurso (por exemplo, se o valor da configuração CustomLeadSourceField for igual a "LeadSource_c", será necessário acesso de LEITURA a esse campo).
    </td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>
