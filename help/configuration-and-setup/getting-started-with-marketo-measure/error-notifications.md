---
description: Notificações de Erro - [!DNL Marketo Measure]
title: Notificações de erro
feature: Fundamentals
exl-id: ed07eed6-ddeb-4856-a1ac-ea3d571283f6
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '1704'
ht-degree: 29%

---


# Notificações de erro {#error-notifications}

Veja abaixo uma lista de erros que você pode receber por notificação no aplicativo ou email. Se você receber alguma dessas notificações, siga as respectivas etapas de solução de problemas. Se essas etapas não resolverem o problema, entre em contato com o [Suporte do Marketo](https://nation.marketo.com/t5/support/ct-p/Support).

Para ver a mensagem de notificação completa em [!DNL Marketo Measure], clique em **Exibir tudo** na parte inferior da guia Notificações.

![Painel de notificações no Marketo Measure mostrando a lista de erros e o link Exibir tudo](assets/error-notifications-1.png)

<table>
  <tbody>
    <tr>
      <th style="width:31%">Código do erro</th>
      <th style="width:23%">Exemplo de notificação</th>
      <th style="width:23%">Descrição</th>
      <th style="width:23%">Etapas da solução de problemas</th>
    </tr>
    <tr>
      <td>API_DISABLED</td>
      <td>Erro durante a Importação do CRM: API_DISABLED: as chamadas de API foram desabilitadas para este usuário</td>
      <td>A permissão da API foi desativada para o usuário do Marketo Measure.</td>
      <td>Consulte a seguinte documentação do Salesforce em <a href="https://help.salesforce.com/s/articleView?language=en_US&amp;id=sf.branded_apps_commun_api_permset.htm&amp;type=5">como habilitar o acesso à API</a>.</td>
    </tr>
    <tr>
      <td>API_LIMIT_EXCEEDED</td>
      <td>Erro durante a Exportação do CRM: PI_LIMIT_EXCEEDED</td>
      <td>O limite da API do CRM foi excedido (24 horas).</td>
      <td>Consulte a seguinte documentação do seu CRM para obter assistência no ajuste das alocações de crédito da API:</p>
          <ul>
            <li><a href="https://learn.microsoft.com/en-us/dynamics365/fin-ops-core/dev-itpro/data-entities/service-protection-monitoring">Dynamics</a>
            </li>
            <li><a href="https://developer.salesforce.com/docs/atlas.en-us.salesforce_app_limits_cheatsheet.meta/salesforce_app_limits_cheatsheet/salesforce_app_limits_platform_api.htm">Salesforce</a>
            </li>
          </ul>
          <p>Você também pode ajustar os créditos de CRM que o Marketo Measure usa seguindo as etapas abaixo:</p>
          <ul>
            <li>Navegue até <b>Configurações</b> &gt; <b>CRM</b> &gt; <b>Geral</b></li>
            <li>Atualizar o limite diário da API do CRM<br/>
              <ul>
                <li><b>Observação: o padrão é 100.000</b></li>
              </ul>
            </li>
          </ul>
          <p>
           <img src="assets/error-notifications-2.png">
          </p>
      </td>
    </tr>
    <tr>
      <td>CANNOT_EXECUTE_FLOW_TRIGGER</td>
      <td>Erro durante a Exportação do Crm: CANNOT_EXECUTE_FLOW_TRIGGER : Tipo de entidade 'Contact' Forneça esses detalhes ao administrador do Salesforce.
Limite excedido
Você ou sua organização excedeu o limite máximo para este recurso. ID do erro: 123456</td>
      <td>O registro não pode ser salvo porque não atende a uma regra de fluxo de acionador configurada na organização da Salesforce.</td>
      <td>Revise os detalhes completos da mensagem de notificação e revise os acionadores de fluxo na organização da Salesforce.
A documentação do Salesforce sobre acionadores de fluxo <a href="https://admin.salesforce.com/blog/2023/what-is-a-record-triggered-flow#:~:text=A%20record%2Dtriggered%20flow%20allows,is%20created%20and%2For%20updated">pode ser encontrada aqui</a>.
      </td>
    </tr>
    <tr>
      <td>CANNOT_INSERT_UPDATE_ATIVATE_ENTITY</td>
      <td>Erro durante a Exportação do Crm: CANNOT_INSERT_UPDATE_ATIVATE_ENTITY : Tipo de entidade 'Lead': Código de Erro do CRM: CANNOT_INSERT_UPDATE_ATIVATE_ENTITY, Mensagem de Erro do CRM: System.LimitException: Limite de tempo do Apex CPU excedido, RecordId: 0123456
      <p>
      Erro durante a Exportação do Crm: CANNOT_INSERT_UPDATE_ATIVATE_ENTITY : Tipo de entidade 'Account': Código de Erro do CRM: CANNOT_INSERT_UPDATE_ATIVATE_ENTITY, Mensagem de Erro do CRM: O tipo de entidade não pode ser atualizado: Account, RecordId: 0123456</td>
      <td>Os acionadores estão impedindo a atualização ou inserção de um objeto.
      <p>
      OR
      <p>
      Permissões ausentes no objeto.</td>
      <td>Revise o código do acionador que causa falha na inserção/atualização. Consulte a documentação do Salesforce a seguir para obter mais detalhes sobre acionadores:
        <ul>
          <li><a href="https://help.salesforce.com/s/articleView?id=sf.code_manage_triggers.htm&amp;type=5">Apex Triggers</a>
          </li>
          <li><a href="https://admin.salesforce.com/blog/2023/what-is-a-record-triggered-flow#:~:text=A%20record%2Dtriggered%20flow%20allows,is%20created%20and%2For%20updated">Acionadores de fluxo</a>
          </li>
        </ul>
        <p>
        Forneça todas as permissões necessárias ao <a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">usuário do Marketo Measure</a>.
      </td>
    </tr>
    <tr>
      <td>DUPLICATES_DETECTED</td>
      <td>Erro durante a Exportação do Crm: DUPLICATES_DETECTED : Tipo de entidade 'Contato': Código de Erro do CRM: DUPLICATES_DETECTED, Mensagem de Erro do CRM: Você está criando um registro duplicado. Recomendamos que você use um registro existente., RecordId: 0123456</td>
      <td>O registro que está sendo importado para a Organização Salesforce já existe.</td>
      <td><a href="https://help.salesforce.com/s/articleView?id=000390009&amp;type=1">Desabilite a configuração "Regra Duplicada"</a> para permitir duplicatas.
          <p>
          Exclua o usuário dedicado Marketo Measure das <a href="https://trailhead.salesforce.com/content/learn/modules/validation-rules/bypass-your-validation-rules">regras de validação personalizadas</a>.</td>
    </tr>
    <tr>
      <td>DUPLICATE_VALUE</td>
      <td>Erro durante a Exportação do Crm: DUPLICATE_VALUE : Tipo de entidade 'Lead': Código de Erro do CRM: DUPLICATE_VALUE, Mensagem de Erro do CRM: valor duplicado encontrado: Email_Unique__c duplica o valor no registro com id: 123, RecordId: 456</td>
      <td>O campo que está sendo importado para a Organização do Salesforce não permite valores duplicados.</td>
      <td>Desmarque a <a href="https://help.salesforce.com/s/articleView?id=000390009&amp;type=1">"Caixa de seleção exclusiva"</a> no Salesforce.
          <p>
          Exclua o usuário dedicado Marketo Measure das <a href="https://trailhead.salesforce.com/content/learn/modules/validation-rules/bypass-your-validation-rules">regras de validação personalizadas</a>.</td>
    </tr>
    <tr>
      <td>ENTITY_IS_LOCKED</td>
      <td>Erro durante a Exportação do Crm: ENTITY_IS_LOCKED : Tipo de entidade 'Account': Código de Erro do CRM: ENTITY_IS_LOCKED, Mensagem de Erro do CRM: Este registro está bloqueado. Se precisar editá-lo, entre em contato com o administrador., RecordId: 0123456</td>
      <td>Quando um registro está em um processo de aprovação e um usuário que não é o aprovador atual ou o administrador do sistema tenta editar o registro.</td>
      <td>
        <ul>
          <li>Resolva o processo de aprovação pendente desse registro na organização da Salesforce.</li>
          <li>Exclua o usuário dedicado Marketo Measure das <a href="https://trailhead.salesforce.com/content/learn/modules/validation-rules/bypass-your-validation-rules">regras de validação personalizadas</a>.
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>FIELD_FILTER_VALIDATION_EXCEPTION</td>
      <td>Erro durante a Exportação do Crm: FIELD_FILTER_VALIDATION_EXCEPTION : Tipo de entidade 'Lead': Código de Erro do CRM: FIELD_FILTER_VALIDATION_EXCEPTION, Campos: User_C, Mensagem de Erro do CRM: O valor não existe ou não corresponde aos critérios de filtro. Selecione um usuário com a função "Executivo de contas, Vendas internas"; RecordId: 0123456</td>
      <td>O registro modificado não satisfaz mais aos filtros de pesquisa definidos no objeto.</td>
      <td>Verifique se há filtros no objeto que o Marketo Measure está tentando modificar. Consulte <a href="https://help.salesforce.com/s/articleView?id=000384756&amp;type=1">este artigo do Salesforce</a> para saber como verificar se há filtros em um objeto.</td>
    </tr>
    <tr>
      <td>FIELD_INTEGRITY_EXCEPTION</td>
      <td>Erro durante a Exportação do Crm: FIELD_INTEGRITY_EXCEPTION : Tipo de entidade 'Lead': Código de Erro do CRM: FIELD_INTEGRITY_EXCEPTION, Campos: País, Mensagem de Erro do CRM: Há um problema com este país, mesmo que pareça correto. Selecione um país/território na lista de países válidos.: País, RecordId: 0123456</td>
      <td>O tipo esperado do registro não corresponde.</td>
      <td>O caso mais comum disso é não seguir os padrões de nomenclatura de Estado/País definidos na Organização da Salesforce, pois os campos Estado/País foram padronizados para aceitar apenas determinados valores de lista de separação. Para resolver esse problema, você pode:
        <ul>
          <li>Atualize o registro para seguir os valores aceitos da organização para esse campo. Entre em contato com o administrador do SFDC para obter a lista de valores aceitos.</li>
          <li><a href="https://help.salesforce.com/s/articleView?id=sf.admin_state_country_picklist_enable.htm&amp;type=5">Desabilitar as listas de opções Estado/País</a>.
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>INATIVE_OWNER_OR_USER</td>
      <td>Erro durante a Exportação do Crm: INATIVE_OWNER_OR_USER : Tipo de entidade 'Contato': Código de Erro do CRM: INATIVE_OWNER_OR_USER, Mensagem de Erro do CRM: operação executada com o usuário inativo [1234] como proprietário do contato, RecordId: 0123456</td>
      <td>A Marketo Measure não tem a permissão "Atualizar registros com proprietários inativos".</td>
      <td>Conceda à Marketo Measure a permissão "<a href="https://help.salesforce.com/s/articleView?id=000386699&amp;type=1">Atualizar registros com proprietários inativos</a>".</td>
    </tr>
    <tr>
      <td>INSUFFICIENT_ACCESS_OR_READONLY</td>
      <td>Erro durante a Exportação do Crm: INSUFFICIENT_ACCESS_OR_READONLY : Tipo de entidade 'Account': CRM ErrorCode: INSUFFICIENT_ACCESS_OR_READONLY, CRM ErrorMessage: direitos de acesso insuficientes na ID do objeto: [123], RecordId: 456</td>
      <td>O Marketo Measure não tem permissões em um objeto/campo ou o objeto é somente leitura.</td>
      <td>Consulte o seguinte <a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">artigo do Experience League</a> para obter orientação sobre as permissões exigidas pelo Marketo Measure.</td>
    </tr>
    <tr>
      <td>INVALID_ADOBE_ANALYTICS_CONFIGURATION</td>
      <td>Erro durante a exportação do Adobe Analytics: INVALID_ADOBE_ANALYTICS_CONFIGURATION : Erro: upload não permitido. Confirme o esquema de fonte de dados antes de fazer upload. ID da Fonte de dados: 1234</td>
      <td>A integração do Adobe Analytics não está configurada corretamente.</td>
      <td>Consulte os seguintes artigos de ajuda para garantir a configuração correta:
        <ul>
          <li>
            <a href="/help/marketo-measure-and-adobe/marketo-measure-integrations-with-adobe-analytics.md">Integrações do Marketo Measure com o Adobe Analytics</a>
          </li>
          <li>
            <a href="https://experienceleague.adobe.com/docs/core-services/interface/services/customer-attributes/t-crs-usecase.html?lang=pt-BR">Crie uma fonte de atributos do cliente e faça o upload do arquivo de dados</a>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>INVALID_CURRENCY_ISO_CODE</td>
      <td>Erro durante a importação do Anúncio: INVALID_CURRENCY_ISO_CODE: a moeda XXX não é compatível com o Marketo Measure.
      <p>
      Erro durante a importação do Anúncio: INVALID_CURRENCY_ISO_CODE : a moeda XXX na conta para 1234 não é compatível com o Marketo Measure.</td>
      <td>Uma moeda incompatível foi encontrada.</td>
      <td>No sistema de origem indicado na notificação (Ad, Crm, Marketo), garante-se que a moeda associada ao registro tenha uma moeda compatível e válida. As moedas compatíveis são derivadas dos padrões de moeda ISO.</td>
    </tr>
    <tr>
      <td>AUSENTE_BIZIBLE_CUSTOM_FIELDS_PERMISSIONS</td>
      <td>Erro durante a Exportação do Crm: MISSING_BIZIBLE_CUSTOM_FIELDS_PERMISSIONS : Tipo de entidade 'Campaign': CRM ErrorCode: INVALID_FIELD_FOR_INSERT_UPDATE, Campos: bizible2_UniqueId__c, Mensagem de Erro do CRM: Não é possível criar/atualizar campos: bizible2_UniqueId__c. Verifique as configurações de segurança deste campo e se ele é de leitura/gravação para seu perfil ou conjunto de permissões.</td>
      <td>O Marketo Measure não tem permissões em campos bizíveis.</td>
      <td>Exigimos permissões de leitura e gravação em todos os campos com o prefixo "bizible2__". Uma lista completa desses campos pode ser encontrada <a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">neste artigo</a>.</td>
    </tr>
    <tr>
      <td>MISSING_CONVERTED_LEAD_PERMISSION</td>
      <td>Erro durante a exportação do CRM: MISSING_CONVERTED_LEAD_PERMISSION</td>
      <td>O Marketo Measure não tem a permissão Exibir/Editar leads convertidos</td>
      <td>Consulte o seguinte documento da Experience League para obter assistência com a ativação dessa permissão em seu CRM<br/>
          <a href="/help/marketo-measure-salesforce-reporting/additional-functionality/enabling-the-permission-to-edit-converted-leads.md">Ativação da permissão para Editar leads convertidos</a></td>
    </tr>
    <tr>
      <td>MISSING_FIELD_READ_PERMISSION</td>
      <td>Erro durante a Importação do CRM: MISSING_FIELD_READ_PERMISSION : Tipo de entidade “Evento”: INVALID_FIELD:<br/>
    SystemModstamp,IsDeleted,WhoId,bizible2__Bizible_Touchpoint_Date__c</td>
      <td>O Marketo Measure não tem permissões de leitura em um campo obrigatório.</td>
      <td>Consulte os seguintes artigos de ajuda para obter orientação sobre as permissões exigidas pelo Marketo Measure:
        <ul>
          <li><a href="/help/marketo-measure-and-dynamics/marketo-measure-dynamics-schema.md">Dynamics</a>
          </li>
          <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">Salesforce</a>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>MISSING_ISREPLICATEABLE_PERMISSION</td>
      <td>Erro durante a Importação do CRM: MISSING_ISREPLICATEABLE_PERMISSION : Falta a permissão IsReplicateable no Campaign</td>
      <td>Essa permissão é necessária em objetos do Salesforce para mantermos o Marketo Measure e o Salesforce sincronizados.</td>
      <td>Entre em contato com o suporte do Salesforce para obter assistência na configuração da permissão replicável em objetos.</td>
    </tr>
    <tr>
      <td>MISSING_OBJECT_READ_PERMISSION</td>
      <td>Erro durante a Importação do CRM: MISSING_OBJECT_READ_PERMISSION : Tipo de entidade Campaign': CRM ErrorCode: MISSING_PERMISSION</td>
      <td>O Marketo Measure não tem permissões de leitura para um objeto obrigatório.</td>
      <td rowspan="2">Consulte os seguintes artigos de ajuda para obter orientação sobre as permissões exigidas pelo Marketo Measure:
          <ul>
            <li><a href="/help/marketo-measure-and-dynamics/marketo-measure-dynamics-schema.md">Dynamics</a>
            </li>
            <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">Salesforce</a>
            </li>
          </ul>
      </td>
    </tr>
    <tr>
      <td>MISSING_OBJECT_WRITE_PERMISSION</td>
      <td>Erro durante a exportação do CRM: MISSING_OBJECT_WRITE_PERMISSION : Tipo de entidade 'bizible2_Bizible_Attribution_Touchpoint': CRM ErrorCode: MISSING_PERMISSION</td>
      <td>O Marketo Measure não tem permissões de gravação em um objeto obrigatório.</td>
    </tr>
    <tr>
      <td>MISSING_RECORD_OBJECT_PERMISSIONS</td>
      <td>Erro durante a Exportação do Crm: MISSING_RECORD_OBJECT_PERMISSIONS : Tipo de entidade 'bizible2_Bizible_Touchpoint_c': Código de Erro do CRM: INSUFFICIENT_ACCESS_ON_CROSS_REFERENCE_ENTITY, Campos: Account, CRM ErrorMessage: direitos de acesso insuficientes na ID de referência cruzada: 0123456</td>
      <td>O Marketo Measure não tem permissões.</td>
      <td>Há vários motivos para esse erro específicos à organização da Salesforce. Abaixo estão algumas etapas comuns de solução de problemas que podem resolver o problema:
        <ul>
          <li>Revise todas as permissões necessárias para cada <a href="/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md">objeto e campo</a>.</li>
          <li>Exclua o usuário dedicado Marketo Measure das <a href="https://trailhead.salesforce.com/content/learn/modules/validation-rules/bypass-your-validation-rules">regras de validação personalizadas</a>.</li>
          <li>Conceder permissões "<a href="https://developer.salesforce.com/docs/atlas.en-us.securityImplGuide.meta/securityImplGuide/users_profiles_view_all_mod_all.htm">Modificar Tudo</a>" ao Marketo Measure.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>NULL_EMPTY_CURRENCY_ISO_CODE</td>
      <td>
        <p>
          Erro durante a Importação do CRM: NULL_EMPTY_CURRENCY_ISO_CODE: o código ISO da moeda está NULO ou Vazio quando MultiCurrency está habilitado para RecordId 1234
      </td>
      <td>A moeda deve estar em um código de moeda ISO compatível.</td>
      <td>No sistema de origem indicado na notificação (Ad, Crm, Marketo), garante-se que a moeda associada ao registro tenha uma moeda compatível e válida. As moedas compatíveis são derivadas dos padrões de moeda ISO.</td>
    </tr>
    <tr>
      <td>OPERATION_TOO_LARGE</td>
      <td>Erro durante a Importação do CRM: OPERATION_TOO_LARGE : É necessária a permissão “Exibir todos os dados” para consultar com sucesso atividades.</td>
      <td>As configurações do CRM não estão permitindo que o Marketo Measure consulte um conjunto de dados grande o suficiente</td>
      <td>Conceda permissões de “Exibir todos os dados” do Marketo Measure no objeto designado.
      <p>
      Mais informações sobre a permissão “Exibir todos os dados” <a href="https://developer.salesforce.com/docs/atlas.en-us.securityImplGuide.meta/securityImplGuide/users_profiles_view_all_mod_all.htm">podem ser encontradas aqui</a>.</td>
    </tr>
    <tr>
      <td>RECORD_NONCOMPLIANT_WITH_VALIDATION_RULES</td>
      <td>Erro durante a Exportação do Crm: RECORD_NONCOMPLIANT_WITH_VALIDATION_RULES : Tipo de entidade 'Lead': Código de Erro do CRM: FIELD_CUSTOM_VALIDATION_EXCEPTION, Campos: Lead_Status_Reason__c, Mensagem de Erro do CRM: Você deve selecionar o Motivo do Status do Cliente Potencial, RecordId: 0123456</td>
      <td>O registro que está sendo atualizado não atende a um conjunto de regras de validação na organização da Salesforce.</td>
      <td>Exclua o usuário dedicado Marketo Measure das <a href="https://trailhead.salesforce.com/content/learn/modules/validation-rules/bypass-your-validation-rules">regras de validação personalizadas</a>.
      <p>
      Atualize suas <a href="https://help.salesforce.com/s/articleView?id=sf.fields_about_field_validation.htm&amp;type=5">regras de validação</a>.</td>
    </tr>
    <tr>
      <td>RESTRICT_PICKLIST_VALUES_ENABLED</td>
      <td>Erro durante a Exportação do Crm: RESTRICT_PICKLIST_VALUES_ENABLED : Tipo de entidade 'Campaign': CRM ErrorCode: INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST, Campo(s): Areas_of_Interest_C, Mensagem de Erro do CRM: valor incorreto para o campo de lista de opções restrita: Desconhecido</td>
      <td>Quando 'Restringir a lista de opções aos valores definidos no conjunto de valores' estiver habilitado na configuração do campo da lista de opções ou o valor que está sendo inserido no campo não estiver disponível no tipo de registro do objeto.</td>
      <td>Desative a configuração restringir lista de opções na Organização Salesforce.
          <p>
          Exclua o usuário dedicado Marketo Measure das <a href="https://trailhead.salesforce.com/content/learn/modules/validation-rules/bypass-your-validation-rules">regras de validação personalizadas</a>.
      </td>
    </tr>
    <tr>
      <td>CAMPO_OBRIGATÓRIO_AUSENTE</td>
      <td>Erro durante a Exportação do Crm: MISSING_REQUIRED_FIELD : Tipo de entidade 'Lead': Código de Erro do CRM: REQUIRED_FIELD_MISSING, Campos: Product_Type_c, Mensagem de Erro do CRM: Campos obrigatórios ausentes: [Product_Type_c], RecordId: 0123456</td>
      <td>Quando uma regra de validação especifica campos obrigatórios em objetos.</td>
      <td>Exclua o usuário dedicado Marketo Measure das <a href="https://trailhead.salesforce.com/content/learn/modules/validation-rules/bypass-your-validation-rules">regras de validação personalizadas</a>.
      </td>
    </tr>
    <tr>
      <td>EXCEÇÃO_DESCONHECIDA</td>
      <td>Erro durante a Exportação do Crm: UNKNOWN_EXCEPTION : Tipo de entidade 'Contato': Código de Erro do CRM: UNKNOWN_EXCEPTION, Mensagem de Erro do CRM: os usuários do portal não podem ter contas de parceiros, RecordId: 0123456</td>
      <td>Ocorreu uma exceção sem tratamento no Salesforce.</td>
      <td>Se o problema persistir, registre um caso no Salesforce e copie os valores numéricos na mensagem de erro.</td>
    </tr>
    <tr>
      <td>UNSUPPORTED_CRM_PACKAGE_VERSION</td>
      <td>Erro durante a Importação do Crm: UNSUPPORTED_CRM_PACKAGE_VERSION : atualize o pacote do crm</td>
      <td>Não há mais suporte para o pacote atual detectado.</td>
      <td>Atualize seu pacote para a versão mais recente:
        <ul>
          <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/best-practices-for-marketo-measure-crm-package.md">Práticas recomendadas</a>
          </li>
          <li><a href="/help/marketo-measure-and-dynamics/microsoft-dynamics-crm-installation-guide.md">Dynamics</a>
          </li>
          <li><a href="/help/configuration-and-setup/marketo-measure-and-salesforce/install-set-up.md">Salesforce</a>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
