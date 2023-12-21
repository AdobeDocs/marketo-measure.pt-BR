---
description: Visão geral das permissões de integração - [!DNL Marketo Measure] - Documentação do produto
title: Visão geral das permissões de integração
hide: true
hidefromtoc: true
feature: APIs, Integration
source-git-commit: d7ded9075f7f5831314d59294327f1e4928baf8a
workflow-type: tm+mt
source-wordcount: '636'
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
    <p>
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
<p>
Os pontos de contato criados e outros dados são gravados em campos bizíveis personalizados em Conta, Campanha, Membro da campanha, Caso, Contato, Cliente potencial e Oportunidade.</td>
    <td><b>Permissões de usuário conectado do Salesforce (obrigatório)</b>
    <p>
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
    <td>Dynamics</td>
    <td>Dados do sistema B2B</td>
    <td>O Marketo Measure está rastreando:
    <p>
    <li>Conta
<li>ActivityParty
<li>ActivityPointer
<li>Campanha
<li>CampaignItem (CampaignList em nosso sistema)
<li>CampaignResponse (CampaignMember em nosso sistema)
<li>Contato
<li>Lead
<li>Lista (MarketingList em nosso sistema)
<li>ListMember (MarketingListMember em nosso sistema)
<li>Oportunidade
<li>Organização
<li>TransactionCurrency (CurrencyConversionRange e CurrencyStatus em nosso sistema)
<li>Compromisso, AtividadeCampanha, Email, Fax, ResoluçãoIncidente, Carta, Telefonema, CompromissoRecorrenteMestre, CompromissoServiço, Tarefa
<li>bizible2_bizible_abtest
<li>bizible2_bizible_attribution_touchpoint
<li>bizible2_bizible_event
<li>bizible2_bizible_history
<li>bizible2_bizible_touchpoint
<p>
Os pontos de contato criados e outros dados são gravados em campos bizible personalizados em Account, Campaign, CampaignResponse, Contact, Lead, List, Opportunity e PhoneCall</td>
    <td><b>Permissões de usuário do Marketo Measure</b>
<p>
Recomendamos criar um Usuário dedicado do Marketo Measure no Dynamics para que possamos exportar e importar dados para evitar problemas com outros usuários no seu CRM. Anote o nome de usuário e a senha, bem como o URL do endpoint, pois eles serão usados ao criar a conta do Marketo Measure.
<p>
<b>Funções de segurança</b>
<p>
Se sua organização usa Funções de Segurança do Dynamics, verifique se o usuário conectado ou o Usuário dedicado do Marketo Measure tem permissões de leitura/gravação suficientes para as entidades necessárias.
<br>
As Funções de Segurança estão localizadas aqui: Configurações &gt; Segurança &gt; Funções de Segurança
<br>
Para entidades personalizadas Marketo Measure, precisaremos de permissões completas em todas as entidades.
<p>
<b>Permissões de campo do Dynamics Standard</b>
<br>
<a href="/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/marketo-measure-dynamics-schema.md">Esquema do Marketo Measure Dynamics</a>
<p>
<b>Permissões de campo personalizado do Dynamics</b>
<br>
Precisamos de acesso de LEITURA para qualquer campo na entidade Cliente potencial ou Contato que o cliente deseje usar para regras personalizadas de Suprimir/Remover Configurações de Pontos de Contato.
<br>
Precisamos de acesso de LEITURA para qualquer campo na entidade de cliente potencial ou de oportunidade que o cliente deseje usar para regras de segmento ou mapeamento de preparo.
<br>
Precisamos de acesso de LEITURA para qualquer campo nas entidades Campaign, CampaignResponse e List que o cliente queira usar para sincronizar membros do Campaign/MarketingList.
</td>
  </tr>
  <tr>
    <td>Facebook</td>
    <td>Dados da plataforma de publicidade</td>
    <td>Integramos com o Facebook para:
<p>
<li>Importar dados de anúncios do cliente</li>
<li>Importar dados de custo de anúncios do cliente</li>
<li>Atualizar anúncios do cliente anexando parâmetros de URL</li>
<p>
O Marketo Measure está rastreando contas, campanhas, grupos de anúncios, anúncios, IDs de filtro e URLs.</td>
    <td><li>A permissão ads_management é necessária para criar campanhas, gerenciar anúncios ou obter métricas de Anúncios.</li>
<li>A permissão de email é necessária para permitir que os usuários façam logon em seus emails do Facebook.</li>
<p>
<b>Escopos</b>
<p>
<a href="https://developers.facebook.com/docs/permissions/reference/ads_management/">ads_management</a>
<br>
<li>Crie campanhas programaticamente, gerencie anúncios e busque métricas.</li>
<li>Crie ferramentas de gerenciamento de anúncios que forneçam soluções inovadoras e valor diferenciado para os anunciantes.</li>
<p>
<a href="https://developers.facebook.com/docs/permissions/reference/email">email</a>
<br>
<li>Comunicar-se com as pessoas e permitir que elas façam logon no aplicativo com o endereço de email associado ao perfil da Facebook.</li></td>
  </tr>
  <tr>
    <td>LinkedIn</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>DoubleClick</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>AdWords</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Bing</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Marketo Engage</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Adobe Analytics</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Javascript Bizible</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>
