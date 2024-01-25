---
description: Notificações de erro - [!DNL Marketo Measure] - Documentação do produto
title: Notificações de erro
hide: true
hidefromtoc: true
feature: Fundamentals
source-git-commit: b4fadc6519761975736ce7a0e4f99a30c589c9af
workflow-type: tm+mt
source-wordcount: '612'
ht-degree: 0%

---

# Notificações de erro {#error-notifications}

Veja abaixo uma lista de erros que você pode receber por notificação no aplicativo ou email. Se você receber alguma dessas mensagens, siga as respectivas etapas de solução de problemas. Se essas etapas não resolverem o problema, entre em contato com [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support).

<table>
  <tbody>
    <tr>
      <th style="width:31%">Código do erro</th>
      <th style="width:23%">Exemplo de notificação</th>
      <th style="width:23%">Descrição</th>
      <th style="width:23%">Etapas de solução de problemas</th>
    </tr>
    <tr>
      <td>API_DISABLED</td>
      <td>Erro durante a Importação do Crm: API_DISABLED: as chamadas de API foram desabilitadas para este usuário</td>
      <td>A permissão da API foi desativada para o usuário do Marketo Measure.</td>
      <td>Consulte a seguinte documentação do Salesforce em <a href="https://help.salesforce.com/s/articleView?id=sf.branded_apps_commun_api_permset.htm&amp;type=5">como habilitar o acesso à API</a>.</td>
    </tr>
    <tr>
      <td>API_LIMIT_EXCEEDED</td>
      <td>Erro durante a Exportação do Crm: PI_LIMIT_EXCEEDED</td>
      <td>O limite da API do CRM foi excedido (24 horas).</td>
      <td>Consulte a seguinte documentação do seu CRM para obter assistência no ajuste das alocações de crédito da API:</p>
          <ul>
            <li><a href="https://learn.microsoft.com/en-us/dynamics365/fin-ops-core/dev-itpro/data-entities/service-protection-monitoring">Dynamics</a>
            </li>
            <li><a href="https://developer.salesforce.com/docs/atlas.en-us.salesforce_app_limits_cheatsheet.meta/salesforce_app_limits_cheatsheet/salesforce_app_limits_platform_api.htm">Salesforce</a>
            </li>
          </ul>
          <p>Você também pode ajustar os créditos de CRM que a Marketo Measure usa seguindo as etapas abaixo:</p>
          <ul>
            <li>Navegue até <b>Configurações</b> &gt; <b>CRM</b> &gt; <b>Geral</b></li>
            <li>Atualizar o limite diário da API do CRM<br/>
              <ul>
                <li><b>Observação: o padrão é 100.000</b></li>
              </ul>
            </li>
          </ul>
          <p>
           <img src="assets/error-notifications-1.png">
          </p>
      </td>
    </tr>
    <tr>
      <td>INVALID_ADOBE_ANALYTICS_CONFIGURATION</td>
      <td>Erro durante a exportação do Adobe Analytics: INVALID_ADOBE_ANALYTICS_CONFIGURATION : Erro: upload não permitido. Confirme o esquema de fonte de dados antes de fazer upload. Id Da Fonte De Dados:1234</td>
      <td>A integração do Adobe Analytics não está configurada corretamente.</td>
      <td>Consulte os seguintes artigos de ajuda para garantir a configuração correta:
        <ul>
          <li>
            <a href="/help/marketo-measure-and-adobe/marketo-measure-integrations-with-adobe-analytics.md">Integrações do Marketo Measure com o Adobe Analytics</a>
          </li>
          <li>
            <a href="https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/t-crs-usecase.html">Crie uma fonte de atributo do cliente e faça upload do arquivo de dados</a>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>INVALID_CURRENCY_ISO_CODE</td>
      <td>Erro durante a importação do anúncio: INVALID_CURRENCY_ISO_CODE: a moeda XXX não é compatível com o Marketo Measure.
      <p>
      Erro durante a Importação do Anúncio: INVALID_CURRENCY_ISO_CODE : a moeda XXX na conta para 1234 não é compatível com o Marketo Measure.</td>
      <td>Uma moeda sem suporte foi encontrada.</td>
      <td>No sistema de origem indicado na notificação (Ad, Crm, Marketo), verifique se a moeda associada ao registro tem uma moeda compatível e válida. As moedas suportadas são derivadas dos padrões de moeda ISO.</td>
    </tr>
    <tr>
      <td>PERMISSÃO_DE_LEAD_CONVERTIDO_AUSENTE</td>
      <td>Erro durante a Exportação do Crm: MISSING_CONVERTED_LEAD_PERMISSION</td>
      <td>A Marketo Measure não tem a permissão Exibir/Editar clientes em potencial convertidos</td>
      <td>Consulte o seguinte documento do Experience League para obter assistência com a habilitação dessa permissão em seu CRM<br/>
          <a href="/help/marketo-measure-salesforce-reporting/additional-functionality/enabling-the-permission-to-edit-converted-leads.md">Ativação da permissão para editar clientes em potencial convertidos</a></td>
    </tr>
    <tr>
      <td>MISSING_FIELD_READ_PERMISSION</td>
      <td>Erro durante a Importação do Crm: MISSING_FIELD_READ_PERMISSION : Tipo de entidade 'Event': INVALID_FIELD:<br/>
    SystemModstamp,IsDeleted,WhoId,bizible2_Bizible_Touchpoint_Date__c</td>
      <td>O Marketo Measure não tem permissões de leitura em um campo obrigatório.</td>
      <td>Consulte os seguintes artigos de ajuda para obter orientação sobre as permissões exigidas pela Marketo Measure:
        <ul>
          <li><a href="/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/marketo-measure-dynamics-schema.md">Dynamics</a>
          </li>
          <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">Salesforce</a>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>MISSING_ISREPLICATEABLE_PERMISSION</td>
      <td>Erro durante a Importação do Crm: MISSING_ISREPLICATEABLE_PERMISSION : Falta a permissão IsReplicateable no Campaign</td>
      <td>Essa permissão é necessária em objetos do Salesforce para que mantenhamos sua Marketo Measure e Salesforce em sincronia.</td>
      <td>Entre em contato com o suporte do Salesforce para obter assistência na configuração da permissão replicável em objetos.</td>
    </tr>
    <tr>
      <td>AUSENTE_OBJETO_LEITURA_PERMISSÃO</td>
      <td>Erro durante a Importação do Crm: MISSING_OBJECT_READ_PERMISSION : Tipo de entidade Campaign': CRM ErrorCode: MISSING_PERMISSION</td>
      <td>O Marketo Measure não tem permissões de leitura para um objeto obrigatório.</td>
      <td rowspan="2">Consulte os seguintes artigos de ajuda para obter orientação sobre as permissões exigidas pela Marketo Measure:
          <ul>
            <li><a href="/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/marketo-measure-dynamics-schema.md">Dynamics</a>
            </li>
            <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">Salesforce</a>
            </li>
          </ul>
      </td>
    </tr>
    <tr>
      <td>MISSING_OBJECT_WRITE_PERMISSION</td>
      <td>Erro durante a Exportação do Crm: MISSING_OBJECT_WRITE_PERMISSION : Tipo de entidade 'bizible2_Bizible_Attribution_Touchpoint': Código de Erro do CRM: MISSING_PERMISSION</td>
      <td>O Marketo Measure não tem permissões de gravação em um objeto obrigatório.</td>
    </tr>
    <tr>
      <td>NULL_EMPTY_CURRENCY_ISO_CODE</td>
      <td>
        <p>
          Erro durante a Importação do Crm: NULL_EMPTY_CURRENCY_ISO_CODE: o código ISO da moeda é NULL ou está vazio quando o MultiCurrency está habilitado para RecordId 1234
      </td>
      <td>A moeda deve ser um código de moeda ISO compatível.</td>
      <td>No sistema de origem indicado na notificação (Ad, Crm, Marketo), verifique se a moeda associada ao registro tem uma moeda compatível e válida. As moedas suportadas são derivadas dos padrões de moeda ISO.</td>
    </tr>
    <tr>
      <td>OPERATION_TOO_LARGE</td>
      <td>Erro durante a Importação do Crm: OPERATION_TOO_LARGE : Exigimos a permissão 'Exibir Todos os Dados' para consultar atividades com êxito.</td>
      <td>As configurações do CRM não estão permitindo que o Marketo Measure consulte um conjunto de dados grande o suficiente</td>
      <td>Conceda permissões de "Exibir todos os dados" do Marketo Measure no objeto designado.
      <p>
      Mais informações sobre a permissão 'Exibir todos os dados' <a href="https://developer.salesforce.com/docs/atlas.en-us.securityImplGuide.meta/securityImplGuide/users_profiles_view_all_mod_all.htm">pode ser encontrado aqui</a>.</td>
    </tr>
    <tr>
      <td>UNSUPPORTED_CRM_PACKAGE_VERSION</td>
      <td>Erro durante a Importação do Crm: UNSUPPORTED_CRM_PACKAGE_VERSION : atualize o pacote do CRM</td>
      <td>Não há mais suporte para o pacote atual detectado.</td>
      <td>Atualize seu pacote para a versão mais recente:
        <ul>
          <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/best-practices-for-marketo-measure-crm-package.md">Práticas recomendadas</a>
          </li>
          <li><a href="/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/microsoft-dynamics-crm-installation-guide.md">Dynamics</a>
          </li>
          <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/marketo-measure-salesforce-package-installation-and-set-up.md">Salesforce</a>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
