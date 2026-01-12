---
description: Visão Geral das Permissões de Integração - [!DNL Marketo Measure]
title: Visão geral das permissões de integração
feature: APIs, Integration
exl-id: c45598fe-0c33-459a-9fde-de7f6906bd0c
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '1286'
ht-degree: 3%

---


# Visão geral das permissões de integração {#integration-permissions-overview}

Este guia descreve as permissões necessárias para uma integração perfeita com o Marketo Measure, garantindo que cada integração funcione de maneira eficaz e sem problemas.

<table>
<thead>
  <tr>
    <th style="width:10%">Integração</th>
    <th style="width:25%">Tipo de dados
    <li>Dados de interação na Web</li>
    <li>Dados do sistema B2B</li>
    <li>Dados da plataforma de publicidade</li></th>
    <th style="width:25%">O que rastreamos</th>
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
    <td><b>Permissões de Usuário Conectado do Salesforce (necessárias)</b>
    <p>
    <b>Conjunto de Permissões de Administrador do Marketo Measure para Usuário Dedicado:</b> Permita que o administrador do SFDC execute operações CRUD em objetos de medida de marketo.
    <br>
    <b>Exibir e Editar o Conjunto de Permissões de Clientes Potenciais Convertidos:</b> Isso permite que a Marketo Measure decore clientes potenciais depois que eles forem convertidos em contatos.
    <br>
    <b>Caixa de seleção do Usuário de marketing do Salesforce:</b> a caixa de seleção Usuário de marketing permite que os usuários criem campanhas e usem os Assistentes de importação do Campaign.
    <br>
    <b>Usuário do Marketo Measure Standard:</b> oferece ao usuário a capacidade de ler registros de objetos do Marketo Measure.
    <p>
    <b>Permissões de campo padrão do Salesforce</b>
    <br>
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
<br>
Recomendamos criar um Usuário dedicado do Marketo Measure no Dynamics para que possamos exportar e importar dados para evitar problemas com outros usuários no seu CRM. Anote o nome de usuário e a senha, bem como o URL do endpoint, pois eles serão usados ao criar a conta do Marketo Measure.
<p>
<b>Funções de Segurança</b>
<br>
Se sua organização usar Funções de Segurança do Dynamics, verifique se o usuário conectado ou o Usuário dedicado do Marketo Measure tem permissões de leitura/gravação suficientes para as entidades necessárias.
<br>
As Funções de Segurança estão localizadas aqui: Configurações &gt; Segurança &gt; Funções de Segurança
<br>
Para entidades personalizadas Marketo Measure, precisaremos de permissões completas em todas as entidades.
<p>
<b>Permissões de campo do Dynamics Standard</b>
<br>
<a href="/help/marketo-measure-and-dynamics/marketo-measure-dynamics-schema.md">Esquema do Marketo Measure Dynamics</a>
<p>
<b>Permissões de Campo Personalizado do Dynamics</b>
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
    <td>Integramos o com o Facebook para:
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
<br>
<a href="https://developers.facebook.com/docs/permissions/reference/ads_management/">gerenciamento_de_anúncios</a>
<br>
<li>Crie campanhas programaticamente, gerencie anúncios e busque métricas.</li>
<li>Crie ferramentas de gerenciamento de anúncios que forneçam soluções inovadoras e valor diferenciado para os anunciantes.</li>
<br>
<br>
<a href="https://developers.facebook.com/docs/permissions/reference/email">email</a>
<br>
<li>Comunicar-se com as pessoas e permitir que elas façam logon no aplicativo com o endereço de email associado ao perfil do Facebook.</li></td>
  </tr>
  <tr>
    <td>LinkedIn</td>
    <td>Dados da plataforma de publicidade
    <p>
    Dados do sistema B2B (dados de formulário de geração de lead, incluindo formulários e envios, que categorizados como atividade de CRM).</td>
    <td>O Marketo Measure está rastreando campanhas de anúncios, criações e dados de custo do LinkedIn, bem como respostas e geração de Forms de líderes. Com base nos dados importados, podemos gerar pontos de contato do LinkedIn e associar respostas de formulário de clientes potenciais a clientes potenciais.</td>
    <td><li>A função de Gerente de campanha ou Gerente de conta é necessária para que a Marketo Measure baixe dados de custo. (Linha de escopo 1)</li>
    <br>
    <li>O Super Admin (Função de administrador da página, Escopos linha 2) ou o Gerente principal do Forms Manager (Função de administrador de mídia paga, Escopos linha 3) é necessário para que o Marketo Measure acesse os dados de formulários da geração de clientes potenciais</li>
    <br>
    <li>O Super Admin (Função de administrador da página, Linha de escopos 2) ou o Pôster de conteúdo patrocinado (Função de administrador de mídia paga, Linha de escopos 3) é necessário para que o Marketo Measure manipule a marcação automática</li>
    <p>
    <b>Escopos</b>
    <br>
    <a href="https://www.linkedin.com/campaignmanager/accounts">Configurar função de usuário no portal (requer logon na conta do LinkedIn)</a> - <a href="https://www.linkedin.com/help/lms/answer/a425731/user-roles-and-functions-in-campaign-manager">Visão geral das funções de usuário</a>: função de usuário, exibir e gerenciar permissões de usuário, atribuir funções como gerente de conta ou gerente de campanha
    <p>
    <a href="https://www.linkedin.com/help/linkedin/answer/a570172/add-or-remove-admins-on-your-showcase-page?lang=en">Configurar a função de administrador da página - <a href="https://www.linkedin.com/help/linkedin/answer/a541981/linkedin-page-admin-roles-overview">Definições da função de administrador da página</a>: função de administrador da página, na página de administrador desejada
    <p>
    <a href="https://www.linkedin.com/help/linkedin/answer/a570172/add-or-remove-admins-on-your-showcase-page?lang=en">Configurar a função de administrador de mídia paga (procure por Administrador de mídia paga) - <a href="https://www.linkedin.com/help/linkedin/answer/a554540">Definições de Administrador de mídia paga</a>: Funções de Administrador de mídia paga</td>
  </tr>
  <tr>
    <td>DoubleClick</td>
    <td>Dados da plataforma de publicidade</td>
    <td>O Marketo Measure rastreia contas, anunciantes, campanhas, páginas de aterrissagem (personalizadas), anúncios, criações, inserções e sites.</td>
    <td><li>O endereço de email da conta principal do usuário do Google é obrigatório</li>
<li>Permissões do Campaign Manager necessárias para acessar a conta do Campaign Manager 360</li>
<ul>
<li>Exibir e gerenciar relatórios de anunciantes do DoubleClick</li>
<li>Exibir e gerenciar campanhas de publicidade exibidas pelos gerentes de campanha do DoubleClick</li>
<p>
    <b>Escopos</b>
    <br>
    <a href="https://www.googleapis.com/auth/userinfo.email">https://www.googleapis.com/auth/userinfo.email</a>: veja seu endereço de email principal da conta Google
    <p>
     <a href="https://www.googleapis.com/auth/dfareporting">https://www.googleapis.com/auth/dfareporting</a>: exibir e gerenciar relatórios do DoubleClick for Advertisers
    <p>
     <a href="https://www.googleapis.com/auth/dfatrafficking">https://www.googleapis.com/auth/dfatrafficking</a>: visualize e gerencie suas campanhas de anúncios de exibição do DoubleClick Campaign Manager's (DCM)</td>
  </tr>
  <tr>
    <td>AdWords</td>
    <td>Dados da plataforma de publicidade</td>
    <td>Integramos com o AdWords para:
<p>
<li>Importar dados de anúncios do cliente</li>
<li>Importar dados de custo de anúncios do cliente</li>
<li>Atualizar anúncios do cliente anexando parâmetros de URL/atualizando modelos de rastreamento de URL</li>
<p>
O Marketo Measure está rastreando Campanhas, Grupos de publicidade, Criativos, Links de site e Palavras-chave.</td>
    <td><li>O endereço de email da conta principal do usuário do Google é obrigatório</li>
<p>
    <b>Escopos</b>
    <br>
    <a href="https://www.googleapis.com/auth/userinfo.email">https://www.googleapis.com/auth/userinfo.email</a>: veja seu endereço de email principal da conta Google</td>
  </tr>
  <tr>
    <td>Bing</td>
    <td>Dados da plataforma de publicidade</td>
    <td>O Marketo Measure está rastreando contas, campanhas, grupos de anúncios, criações e palavras-chave.</td>
    <td><li>O usuário deve conceder "acesso offline" por meio da Conta da Microsoft (que concede acesso Marketo Measure às UserInfo do usuário final mesmo quando não estiver conectado). Consulte a <a href="https://learn.microsoft.com/en-us/deployoffice/overview-extended-offline-access">página da Microsoft</a> sobre como fazer isso.</li>
<p>
    <b>Escopos</b>
    <br>
    <a href="https://learn.microsoft.com/en-us/deployoffice/overview-extended-offline-access">https://learn.microsoft.com/en-us/deployoffice/overview-extended-offline-access</a>: mantenha o acesso aos dados aos quais você concedeu permissão de acesso.</td>
  </tr>
  <tr>
    <td>Marketo Engage</td>
    <td>Dados do sistema B2B</td>
    <td>A integração do Marketo permite que o Marketo Measure colete Atividades, Pessoas, Programas e Associações de programas do Marketo. Além disso, o Marketo Measure rastreia cookies do Marketo (Munchkin IDs) com a finalidade de vincular atividades da Web do Marketo aos pontos de contato principais do Marketo Measure, <a href="/help/marketo-measure-and-marketo/marketo-engage-programs-integration.md#cookie-mapping">conforme descrito aqui</a>:
    <p>
    <i>Como resultado da integração do Marketo Measure com o Marketo, a ID do cookie do Marketo Measure também foi mapeada e sincronizada com a ID do Munchkin do Marketo. Isso ajuda a fechar a lacuna para atribuir o primeiro contato anônimo a uma sessão da Web, em vez de atribuir os toques FT e LC a uma Atividade Marketo.</i>
    </td>
    <td>O cliente deve criar um Usuário da API do Marketo Engage dedicado e fornecer as credenciais ao Marketo Measure. Nenhuma configuração adicional de permissões é necessária. <a href="/help/marketo-measure-and-marketo/set-up-marketo-connection.md#configuring-the-integration">Saiba mais</a>.</td>
  </tr>
  <tr>
    <td>Adobe Analytics</td>
    <td>Dados do sistema B2B</td>
    <td>A integração de atributos do cliente B2B permite que os usuários mútuos do Marketo Measure e do Adobe Analytics enriqueçam seus perfis de usuário do Adobe Analytics com metadados valiosos derivados do mecanismo de atribuição do Marketo Measure e por meio de seu recurso de sincronização com CRMs (Microsoft Dynamics e Salesforce). <a href="/help/marketo-measure-and-adobe/marketo-measure-integrations-with-adobe-analytics.md">Saiba mais</a>.</td>
    <td>O cliente deve fornecer à Marketo Measure uma ID de alias e credenciais do servidor FTP para um local em que os dados serão carregados na instância do Analytics.
    <p>
    Anote as seguintes informações, pois elas serão necessárias para algumas das etapas posteriores do processo:
    <p>
    <li>A ID de alias, que pode ser qualquer valor que você desejar. Recomendamos "marketomeasure_id"</li>
    <li>O nome do host e as credenciais do servidor FTP (nome de usuário e senha)</li>
    <p>
    <a href="/help/marketo-measure-and-adobe/marketo-measure-integrations-with-adobe-analytics.md#configuring-the-integration">Saiba mais</a></td>
  </tr>
  <tr>
    <td>Javascript Bizible</td>
    <td></td>
    <td><a href="/help/marketo-measure-tracking/data-collected-by-javascript.md">Quais dados o bizible.js coleta</a>.</td>
    <td></td>
  </tr>
</tbody>
</table>

>[!MORELIKETHIS]
>[Notificações de erro](/help/configuration-and-setup/getting-started-with-marketo-measure/error-notifications.md){target="_blank"}
