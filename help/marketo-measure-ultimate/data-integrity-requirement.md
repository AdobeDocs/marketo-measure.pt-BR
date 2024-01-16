---
description: “Requisito de integridade de dados do [!DNL Marketo Measure] Ultimate —  [!DNL Marketo Measure]  — Documentação do produto”
title: “Requisito de integridade de dados do [!DNL Marketo Measure] Ultimate”
feature: Integration, Tracking, Attribution
exl-id: 8ad001d0-e9fe-46f5-b808-d6203a55a229
source-git-commit: e1c401ae41b5aeedf0c3c8b75a82f680a0dcbefb
workflow-type: tm+mt
source-wordcount: '1493'
ht-degree: 100%

---

# Requisito de integridade de dados do [!DNL Marketo Measure] Ultimate {#marketo-measure-ultimate-data-integrity-requirement}

O [!DNL Marketo Measure] valida os conjuntos de dados da AEP recebidos para garantir que os dados sejam suficientes e coerentes para fins de atribuição. O não cumprimento do requisito de integridade de dados fará com que o conjunto de dados seja rejeitado pelo sistema do [!DNL Marketo Measure]. Este documento detalha o requisito de integridade de dados, fornece exemplos de consulta para inspeção de dados e recomenda uma solução para campos obrigatórios com um valor nulo.

## Objeto Entidade {#entity-object}

<table style="table-layout:auto">
  <tr>
    <th>Classe XDM</th>
    <th>Grupo de campos XDM</th>
    <th>Caminho XDM</th>
    <th>Tipo XDM</th>
    <th>Campo de fonte de dados</th>
    <th>Obrigatório?</th>
    <th>Observações</th>
  </tr>
  <tbody>
    <tr>
      <td colspan="7"><strong>Conta</strong> (Conta para o Salesforce, Empresa e/ou Conta nomeada para o Marketo)</td>
    </tr>
    <tr>
      <td rowspan="6">Conta empresarial XDM</td>
      <td></td>
      <td>accountKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 123@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>accountKey.sourceID</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>Ex: 123</td>
    </tr>
    <tr>
      <td></td>
      <td>accountKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>accountKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.createdDate</td>
      <td>data e hora</td>
      <td>CreatedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.lastUpdatedDate</td>
      <td>data e hora</td>
      <td>ModifiedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>Detalhes da conta empresarial XDM</td>
      <td>accountName</td>
      <td>string</td>
      <td>Nome</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td colspan="7"><strong>Campanha</strong> (Campanha para o Salesforce, Programa para o Marketo)</td>
    </tr>
    <tr>
      <td rowspan="8">Campanha empresarial XDM</td>
      <td></td>
      <td>campaignKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 55555@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignKey.sourceID</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>Ex: 55555</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.createdDate</td>
      <td>data e hora</td>
      <td>CreatedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.lastUpdatedDate</td>
      <td>data e hora</td>
      <td>ModifiedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>campaignName</td>
      <td>string</td>
      <td>Nome</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>campaignType</td>
      <td>string</td>
      <td>CampaignType</td>
      <td>Não</td>
      <td>Para mapeamento de canal</td>
    </tr>
    <tr>
      <td></td>
      <td rowspan="5">Detalhes da campanha empresarial XDM</td>
      <td>channelName</td>
      <td>string</td>
      <td>ChannelName</td>
      <td>Não</td>
      <td>Para mapeamento de canal</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignStartDate</td>
      <td>data e hora</td>
      <td>StartDate</td>
      <td>Não</td>
      <td>Para custo de campanha</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignEndDate</td>
      <td>data e hora</td>
      <td>EndDate</td>
      <td>Não</td>
      <td>Para custo de campanha</td>
    </tr>
    <tr>
      <td></td>
      <td>actualCost.amount</td>
      <td>número</td>
      <td>Custo</td>
      <td>Não</td>
      <td>Para custo de campanha</td>
    </tr>
    <tr>
      <td></td>
      <td>actualCost.currencyCode</td>
      <td>
        <p>string</p>
        <p>^[A-Z]{3}$</p>
      </td>
      <td>CurrencyIsoCode</td>
      <td>Não</td>
      <td>Para custo de campanha</td>
    </tr>
    <tr>
      <td colspan="7"><strong>Membro da campanha</strong> (Membro da campanha para o Salesforce, Associações do programa para o Marketo)</td>
    </tr>
    <tr>
      <td rowspan="14">Membros da campanha empresarial XDM</td>
      <td></td>
      <td>campaignMemberKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 987654321@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignMemberKey.sourceID</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>Ex: 987654321</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignMemberKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignMemberKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.createdDate</td>
      <td>data e hora</td>
      <td>CreatedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.lastUpdatedDate</td>
      <td>data e hora</td>
      <td>ModifiedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>personKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 333@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>personKey.sourceID</td>
      <td>string</td>
      <td>ID do lead ou ID do contato</td>
      <td>Sim</td>
      <td>
        <p>Ex: 333, dependendo da tabela de fonte de dados, é a ID do lead ou a ID do contato.</p>
        <p>Chave estrangeira para o lead ou o contato</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>personKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>personKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 55555@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignKey.sourceID</td>
      <td>string</td>
      <td>ID da campanha</td>
      <td>Sim</td>
      <td>
        <p>Ex: 55555.</p>
        <p>Chave estrangeira para a campanha</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>campaignKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>campaignKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td rowspan="4">Detalhes do membro da campanha empresarial XDM</td>
      <td>b2b.personType</td>
      <td>string</td>
      <td>“Lead” ou “Contato”</td>
      <td>Sim</td>
      <td>Dependendo da tabela de fonte de dados, isso deve ser definido como “Lead” ou “Contato”. É recomendável configurá-lo como “Contato” para a maioria dos casos de uso</td>
    </tr>
    <tr>
      <td></td>
      <td>memberStatus</td>
      <td>string</td>
      <td>Status</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>hasResponded</td>
      <td>booleano</td>
      <td>HasResponded</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>firstRespondedDate</td>
      <td>data e hora</td>
      <td>FirstRespondedDate</td>
      <td>Não</td>
      <td></td>
    </tr>
    <tr>
      <td colspan="7"><strong>Pessoa</strong> (Contato ou Lead para o Salesforce, Pessoas para o Marketo)</td>
    </tr>
    <tr>
      <td>Perfil individual XDM</td>
      <td rowspan="11">Detalhes da pessoa de negócios XDM</td>
      <td>b2b.personKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>ex: 333@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>b2b.personKey.sourceID</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>ex: 333, dependendo da tabela de fonte de dados, é a ID do lead ou a ID do contato</td>
    </tr>
    <tr>
      <td></td>
      <td>b2b.personKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>b2b.personKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>workEmail.address</td>
      <td>
        <p>string</p>
        <p>email</p>
      </td>
      <td>Email</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>b2b.personStatus</td>
      <td>string</td>
      <td>Status</td>
      <td><font color="red">Sim somente para personType lead</font></td>
      <td>Necessário somente se b2b.personType for “Lead”</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.createdDate</td>
      <td>data e hora</td>
      <td>CreatedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.lastUpdatedDate</td>
      <td>data e hora</td>
      <td>ModifiedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>b2b.isConverted</td>
      <td>booleano</td>
      <td>IsConverted</td>
      <td><font color="red">Sim somente para personType lead</font></td>
      <td>Necessário somente se b2b.personType for “Lead”</td>
    </tr>
    <tr>
      <td></td>
      <td>b2b.personType</td>
      <td>string</td>
      <td>“Lead” ou “Contato”</td>
      <td>Sim</td>
      <td>Dependendo da tabela de fonte de dados, isso deve ser definido como “Lead” ou “Contato”. É recomendável configurá-lo como “Contato” para a maioria dos casos de uso</td>
    </tr>
    <tr>
      <td></td>
      <td>extendedWorkDetails.jobTitle</td>
      <td>string</td>
      <td></td>
      <td>Não</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td rowspan="4">Componentes de pessoa de negócios XDM</td>
      <td>personComponents.sourceAccountKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Não</td>
      <td>
        <p>Ex: 123@999-abc-888.Marketo.</p>
        <p>O conjunto de campos sourceAccountKey é “obrigatório” apenas para registros de contato verdadeiros, definidos como registros de pessoa vinculados à conta. Se estiver ausente, não fará com que o conjunto de dados seja rejeitado, mas os resultados da atribuição estarão desativados.</p>
        <p>personComponents é uma matriz, mas o Marketo Measure só pega o primeiro elemento personComponents[0]</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>personComponents.sourceAccountKey.sourceID</td>
      <td>string</td>
      <td>ID da Conta</td>
      <td>Não</td>
      <td>
        <p>Ex: 123.</p>
        <p>Chave estrangeira para a conta</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>personComponents.sourceAccountKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Não</td>
      <td>ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>personComponents.sourceAccountKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Não</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td colspan="7"><strong>Oportunidade</strong> (Oportunidade para o Salesforce, Oportunidades para o Marketo)</td>
    </tr>
    <tr>
      <td rowspan="13">Oportunidade de negócios XDM</td>
      <td></td>
      <td>opportunityKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>ex: 77777@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityKey.sourceID</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>Ex: 77777</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.createdDate</td>
      <td>data e hora</td>
      <td>CreatedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.lastUpdatedDate</td>
      <td>data e hora</td>
      <td>ModifiedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>accountKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>ex: 123@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>accountKey.sourceID</td>
      <td>string</td>
      <td>ID da Conta</td>
      <td>Sim</td>
      <td>
        <p>Ex: 123.</p>
        <p>Chave estrangeira para a conta</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>accountKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>accountKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityName</td>
      <td>string</td>
      <td>Nome</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityStage</td>
      <td>string</td>
      <td>Estágio</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityType</td>
      <td>string</td>
      <td></td>
      <td>Não</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td rowspan="5">Detalhes da oportunidade de negócios XDM</td>
      <td>IsWon</td>
      <td>booleano</td>
      <td>IsWon</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>IsClosed</td>
      <td>booleano</td>
      <td>IsClosed</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>expectedCloseDate</td>
      <td>data</td>
      <td>CloseDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityAmount.amount</td>
      <td>número</td>
      <td>Valor</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityAmount.currencyCode</td>
      <td>
        <p>string</p>
        <p>^[A-Z]{3}$</p>
      </td>
      <td>CurrencyIsoCode</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td colspan="7"><strong>Função de contato da oportunidade (Necessária somente se planejar usar a Função de contato da oportunidade como grupo de compras para atribuição)</strong></td>
    </tr>
    <tr>
      <td rowspan="16">Relação da pessoa da oportunidade de negócios XDM</td>
      <td></td>
      <td>personKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>ex: 333@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>personKey.sourceID</td>
      <td>string</td>
      <td>ID do contato</td>
      <td>Sim</td>
      <td>
        <p>Ex: 333</p>
        <p>Chave estrangeira para contato</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>personKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>personKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>isPrimary</td>
      <td>booleano</td>
      <td>IsPrimary</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>ex: 77777@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityKey.sourceID</td>
      <td>string</td>
      <td>ID da oportunidade</td>
      <td>Sim</td>
      <td>
        <p>ex: 77777.</p>
        <p>Chave estrangeira para a oportunidade</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityPersonKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>ex: 222222@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityPersonKey.sourceID</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>ex: 222222</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityPersonKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td>opportunityPersonKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>personRole</td>
      <td>string</td>
      <td>Função</td>
      <td>Não</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.createdDate</td>
      <td>data e hora</td>
      <td>CreatedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.lastUpdatedDate</td>
      <td>data e hora</td>
      <td>ModifiedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td colspan="7"><strong>Taxa de conversão (necessária somente se usar várias moedas, somente um conjunto de dados de taxa de conversão pode ser ativado para o Marketo Measure)</strong></td>
    </tr>
    <tr>
      <td rowspan="7">Conversão</td>
      <td></td>
      <td>extSourceSystemAudit.externalKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 8888@0x012345.Salesforce</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.externalKey.sourceId</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>ex: 8888</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.externalKey.sourceInstanceId</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 0x012345</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.externalKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Salesforce</td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.createdDate</td>
      <td>data e hora</td>
      <td>CreatedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>extSourceSystemAudit.lastUpdatedDate</td>
      <td>data e hora</td>
      <td>ModifiedDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>isDeleted</td>
      <td>booleano</td>
      <td></td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td rowspan="5">Detalhes da taxa de conversão monetária</td>
      <td>conversionRate</td>
      <td>número</td>
      <td>ConversionRate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>endDate</td>
      <td>data</td>
      <td>NextStartDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>startDate</td>
      <td>data</td>
      <td>StartDate</td>
      <td>Sim</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>sourceISOCode</td>
      <td>string</td>
      <td>ISOCode</td>
      <td>Sim</td>
      <td>Ex: EUR</td>
    </tr>
    <tr>
      <td></td>
      <td>targetISOCode</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>O código de moeda padrão definido no Marketo Measure, por exemplo, USD</td>
    </tr>
  </tbody>
</table>

## ExperienceEvent {#experienceevent}

<table style="table-layout:auto">
  <tr>
    <th>Classe XDM</th>
    <th>Grupo de campos XDM</th>
    <th>Caminho XDM</th>
    <th>Tipo XDM</th>
    <th>Campo de fonte de dados</th>
    <th>Obrigatório?</th>
    <th>Observações</th>
  </tr>
  <tbody>
    <tr>
      <td colspan="7"><strong>Atividade</strong></td>
    </tr>
    <tr>
      <td rowspan="3">ExperienceEvent XDM</td>
      <td></td>
      <td>_ID</td>
      <td>string</td>
      <td>ID</td>
      <td>Sim</td>
      <td>Sim</td>
    </tr>
    <tr>
      <td></td>
      <td>eventType</td>
      <td>string</td>
      <td>ActivityType</td>
      <td>Sim</td>
      <td>Sim</td>
    </tr>
    <tr>
      <td></td>
      <td>carimbo de data e hora</td>
      <td>data e hora</td>
      <td>Data da atividade</td>
      <td>Sim</td>
      <td>Sim</td>
    </tr>
    <tr>
      <td></td>
      <td>Identificador de pessoa</td>
      <td>personKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 333@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>personKey.sourceID</td>
      <td>string</td>
      <td>ID do lead ou ID do contato</td>
      <td>Sim</td>
      <td>
        <p>Ex: 333, dependendo da tabela de fonte de dados, é a ID do lead ou a ID do contato.</p>
        <p>Chave estrangeira para o lead ou o contato</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>personKey.sourceInstanceID</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>personKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>Adicionar à campanha</td>
      <td>leadOperation.addToCampaign.campaignKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim somente para o tipo leadOperation.addToCampaign</td>
      <td>Ex: 55555@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>leadOperation.addToCampaign.campaignKey.sourceId</td>
      <td>string</td>
      <td>ID da campanha</td>
      <td>Sim somente para o tipo leadOperation.addToCampaign</td>
      <td>
        <p>Ex: 55555.</p>
        <p>Chave estrangeira para a campanha</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>leadOperation.addToCampaign.campaignKey.sourceInstanceId</td>
      <td>string</td>
      <td></td>
      <td>Sim somente para o tipo leadOperation.addToCampaign</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>leadOperation.addToCampaign.campaignKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim somente para o tipo leadOperation.addToCampaign</td>
      <td>Ex: Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td>Status na progressão da campanha alterado</td>
      <td>leadOperation.campaignProgression.campaignKey.sourceKey</td>
      <td>string</td>
      <td></td>
      <td>Sim somente para o tipo leadOperation.campaignProgression</td>
      <td>Ex: 55555@999-abc-888.Marketo</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>leadOperation.campaignProgression.campaignKey.sourceId</td>
      <td>string</td>
      <td>ID da campanha</td>
      <td>Sim somente para o tipo leadOperation.campaignProgression</td>
      <td>
        <p>Ex: 55555.</p>
        <p>Chave estrangeira para a campanha</p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>leadOperation.campaignProgression.campaignKey.sourceInstanceId</td>
      <td>string</td>
      <td></td>
      <td>Sim somente para o tipo leadOperation.campaignProgression</td>
      <td>Ex: 999-abc-888</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>leadOperation.campaignProgression.campaignKey.sourceType</td>
      <td>string</td>
      <td></td>
      <td>Sim somente para o tipo leadOperation.campaignProgression</td>
      <td>Ex: Marketo</td>
    </tr>
  </tbody>
</table>

## Tipo de ExperienceEvent compatível {#experienceevent-type-supported}

<table style="table-layout:auto">
  <tr>
    <th>Tipo de evento</th>
    <th>Tipo de evento XDM</th>
    <th>Descrição</th>
  </tr>
  <tbody>
    <tr>
      <td>Novo lead</td>
      <td>leadOperation.newLead</td>
      <td>Use para registrar a criação e os detalhes de um novo lead de marketing</td>
    </tr>
    <tr>
      <td>Conversão de lead</td>
      <td>leadOperation.convertLead</td>
      <td>Use quando um lead de marketing for convertido em um contato qualificado de vendas atribuído a um(a) usuário(a) de vendas</td>
    </tr>
    <tr>
      <td>Momento interessante</td>
      <td>leadOperation.interestingMoment</td>
      <td>Use para rastrear atividades de alto valor de clientes em potencial</td>
    </tr>
    <tr>
      <td>Preenchimento de formulário</td>
      <td>web.formFilledOut</td>
      <td>Use para registrar detalhes quando uma pessoa preenche um formulário em uma página da Web</td>
    </tr>
    <tr>
      <td>Cancelamento de inscrição do email</td>
      <td>directMarketing.emailUnsubscribed</td>
      <td>Use para registrar detalhes quando uma pessoa cancela a assinatura de um email</td>
    </tr>
    <tr>
      <td>Abertura de email</td>
      <td>directMarketing.emailOpened</td>
      <td>Use para registrar detalhes quando uma pessoa abre um email de marketing</td>
    </tr>
    <tr>
      <td>Cliques em email</td>
      <td>directMarketing.emailClicked</td>
      <td>Use para registrar detalhes quando uma pessoa clica em um link em um email de marketing</td>
    </tr>
    <tr>
      <td>Alteração do status na progressão</td>
      <td>leadOperation.statusInCampaignProgressionChanged</td>
      <td>Use para registrar detalhes quando o status de um lead em uma campanha é alterado</td>
    </tr>
    <tr>
      <td>Adição ao programa de engajamento (Adição ao programa)</td>
      <td>leadOperation.addToCampaign</td>
      <td>Use para adicionar uma pessoa à campanha específica.</td>
    </tr>
  </tbody>
</table>

Use o tipo de evento “Momento interessante” para tipos de evento não aceitos na tabela acima. Adicione um campo personalizado para indicar o subtipo “Momento interessante”.

## Exemplos de consulta para inspeção de dados {#query-examples-for-data-inspection}

Veja a seguir uma lista de exemplos de consultas para inspecionar conjuntos de dados assimilados no data lake da AEP. Para usar em seus conjuntos de dados, substitua o nome da tabela nos exemplos de consultas abaixo pelo nome real da sua tabela do conjunto de dados.

Espera-se que todas as contagens sejam 0.

Para o campo personType, espera-se que haja apenas valores de “Lead” ou de “Contato” e que não haja nenhum valor nulo.

Espera-se que haja uma chave estrangeira de conta para todos os registros de pessoa de “Contato”.

Chaves estrangeiras de conta não existem para registros de pessoa de “Lead”, nem são necessárias. Se optar por assimilar registros de pessoa de “Lead” como registros de pessoa de “Contato” (o que é recomendado), não será necessária uma chave estrangeira de conta nesses registros de pessoa.

### Conta empresarial XDM {#xdm-business-account}

```
select 'account source id', count(*) from salesforce_account where accountKey.sourceId is null
union all
select 'account source type', count(*) from salesforce_account where accountKey.sourceType is null
union all
select 'account source instance id', count(*) from salesforce_account where accountKey.sourceInstanceId is null
union all
select 'account source key', count(*) from salesforce_account where accountKey.sourceKey is null
union all
select 'account name', count(*) from salesforce_account where accountName is null
union all
select 'created date', count(*) from salesforce_account where extSourceSystemAudit.createdDate is null
union all
select 'last updated date', count(*) from salesforce_account where extSourceSystemAudit.lastUpdatedDate is null;
```

### Campanha empresarial XDM {#xdm-business-campaign}

```
select 'campaign source id', count(*) from salesforce_campaign where campaignKey.sourceId is null
union all
select 'campaign source type', count(*) from salesforce_campaign where campaignKey.sourceType is null
union all
select 'campaign source instance id', count(*) from salesforce_campaign where campaignKey.sourceInstanceId is null
union all
select 'campaign source key', count(*) from salesforce_campaign where campaignKey.sourceKey is null
union all
select 'campaign name', count(*) from salesforce_campaign where campaignName is null
union all
select 'created date', count(*) from salesforce_campaign where extSourceSystemAudit.createdDate is null
union all
select 'last updated date', count(*) from salesforce_campaign where extSourceSystemAudit.lastUpdatedDate is null;
```

### Membro da campanha empresarial XDM {#xdm-business-campaign-member}

```
select 'campaign member source id', count(*) from salesforce_campaign_member where campaignMemberKey.sourceId is null
union all
select 'campaign member source type', count(*) from salesforce_campaign_member where campaignMemberKey.sourceType is null
union all
select 'campaign member source instance id', count(*) from salesforce_campaign_member where campaignMemberKey.sourceInstanceId is null
union all
select 'campaign member source key', count(*) from salesforce_campaign_member where campaignMemberKey.sourceKey is null
union all
select 'campaign source id', count(*) from salesforce_campaign_member where campaignKey.sourceId is null
union all
select 'campaign source type', count(*) from salesforce_campaign_member where campaignKey.sourceType is null
union all
select 'campaign source instance id', count(*) from salesforce_campaign_member where campaignKey.sourceInstanceId is null
union all
select 'campaign source key', count(*) from salesforce_campaign_member where campaignKey.sourceKey is null
union all
select 'person source id', count(*) from salesforce_campaign_member where personKey.sourceId is null
union all
select 'person source type', count(*) from salesforce_campaign_member where personKey.sourceType is null
union all
select 'person source instance id', count(*) from salesforce_campaign_member where personKey.sourceInstanceId is null
union all
select 'person source key', count(*) from salesforce_campaign_member where personKey.sourceKey is null
union all
select distinct 'person type', b2b.personType from salesforce_campaign_member
union all
select 'member status', count(*) from salesforce_campaign_member where memberStatus is null
union all
select 'has responded', count(*) from salesforce_campaign_member where hasResponded is null
union all
select 'created date', count(*) from salesforce_campaign_member where extSourceSystemAudit.createdDate is null
union all
select 'last updated date', count(*) from salesforce_campaign_member where extSourceSystemAudit.lastUpdatedDate is null;
```

### Pessoa de negócios XDM {#xdm-business-person}

```
select 'person source id', count(*) from marketo_person where b2b.personKey.sourceId is null
union all
select 'person source type', count(*) from marketo_person where b2b.personKey.sourceType is null
union all
select 'person source instance id', count(*) from marketo_person where b2b.personKey.sourceInstanceId is null
union all
select 'person source key', count(*) from marketo_person where b2b.personKey.sourceKey is null
union all
select 'email', count(*) from marketo_person where workEmail.address is null
union all
select 'Lead - person status', count(*) from marketo_person where b2b.personType = 'Lead' and b2b.personStatus is null
union all
select 'Lead - is converted', count(*) from marketo_person where b2b.personType = 'Lead' and b2b.isConverted is null
union all
select distinct 'person type', b2b.personType from marketo_person
union all
select 'created date', count(*) from marketo_person where extSourceSystemAudit.createdDate is null
union all
select 'last updated date', count(*) from marketo_person where extSourceSystemAudit.lastUpdatedDate is null;
```

```
select 'person source id', count(*) from salesforce_contact where b2b.personKey.sourceId is null
union all
select 'person source type', count(*) from salesforce_contact where b2b.personKey.sourceType is null
union all
select 'person source instance id', count(*) from salesforce_contact where b2b.personKey.sourceInstanceId is null
union all
select 'person source key', count(*) from salesforce_contact where b2b.personKey.sourceKey is null
union all
select 'email', count(*) from salesforce_contact where workEmail.address is null
union all
select 'Lead - person status', count(*) from salesforce_contact where b2b.personType = 'Lead' and b2b.personStatus is null
union all
select 'Lead - is converted', count(*) from salesforce_contact where b2b.personType = 'Lead' and b2b.isConverted is null
union all
select distinct 'person type', b2b.personType from salesforce_contact
union all
select 'account source id', count(*) from salesforce_contact where b2b.personType = 'Contact' and personComponents[0].sourceAccountKey.sourceId is null
union all
select 'account source type', count(*) from salesforce_contact where b2b.personType = 'Contact' and personComponents[0].sourceAccountKey.sourceType is null
union all
select 'account source instance id', count(*) from salesforce_contact where b2b.personType = 'Contact' and personComponents[0].sourceAccountKey.sourceInstanceId is null
union all
select 'account source key', count(*) from salesforce_contact where b2b.personType = 'Contact' and personComponents[0].sourceAccountKey.sourceKey is null
union all
select 'created date', count(*) from salesforce_contact where extSourceSystemAudit.createdDate is null
union all
select 'last updated date', count(*) from salesforce_contact where extSourceSystemAudit.lastUpdatedDate is null;
```

### Oportunidade de negócios XDM {#xdm-business-opportunity}

```
select 'opportunity source id', count(*) from salesforce_opportunity where opportunityKey.sourceId is null
union all
select 'opportunity source type', count(*) from salesforce_opportunity where opportunityKey.sourceType is null
union all
select 'opportunity source instance id', count(*) from salesforce_opportunity where opportunityKey.sourceInstanceId is null
union all
select 'opportunity source key', count(*) from salesforce_opportunity where opportunityKey.sourceKey is null
union all
select 'account source id', count(*) from salesforce_opportunity where accountKey.sourceId is null
union all
select 'account source type', count(*) from salesforce_opportunity where accountKey.sourceType is null
union all
select 'account source instance id', count(*) from salesforce_opportunity where accountKey.sourceInstanceId is null
union all
select 'account source key', count(*) from salesforce_opportunity where accountKey.sourceKey is null
union all
select 'opportunity name', count(*) from salesforce_opportunity where opportunityName is null
union all
select 'opportunity stage', count(*) from salesforce_opportunity where opportunityStage is null
union all
select 'is won', count(*) from salesforce_opportunity where isWon is null
union all
select 'is closed', count(*) from salesforce_opportunity where isClosed is null
union all
select 'expected close date', count(*) from salesforce_opportunity where expectedCloseDate is null
union all
select 'opportunity amount', count(*) from salesforce_opportunity where opportunityAmount.amount is null
union all
select 'currency code', count(*) from salesforce_opportunity where opportunityAmount.currencyCode is null
union all
select 'created date', count(*) from salesforce_opportunity where extSourceSystemAudit.createdDate is null
union all
select 'last updated date', count(*) from salesforce_opportunity where extSourceSystemAudit.lastUpdatedDate is null;
```

### ExperienceEvent XDM {#xdm-experienceevent}

```
select 'id', count(*) from marketo_activity where _id is null
union all
select 'event type', count(*) from marketo_activity where eventType is null
union all
select 'timestamp', count(*) from marketo_activity where timestamp is null
union all
select 'person source id', count(*) from marketo_activity where personKey.sourceId is null
union all
select 'person source type', count(*) from marketo_activity where personKey.sourceType is null
union all
select 'person source instance id', count(*) from marketo_activity where personKey.sourceInstanceId is null
union all
select 'person source key', count(*) from marketo_activity where personKey.sourceKey is null
union all
select 'addToCampaign campaign id', count(*) from marketo_activity where eventType = 'leadOperation.addToCampaign' and leadOperation.addToCampaign.campaignKey.sourceId is null
union all
select 'addToCampaign campaign type', count(*) from marketo_activity where eventType = 'leadOperation.addToCampaign' and leadOperation.addToCampaign.campaignKey.sourceType is null
union all
select 'addToCampaign campaign instance id', count(*) from marketo_activity where eventType = 'leadOperation.addToCampaign' and leadOperation.addToCampaign.campaignKey.sourceInstanceId is null
union all
select 'addToCampaign campaign key', count(*) from marketo_activity where eventType = 'leadOperation.addToCampaign' and leadOperation.addToCampaign.campaignKey.sourceKey is null
union all
select 'statusInCampaignProgressionChanged campaign id', count(*) from marketo_activity where eventType = 'leadOperation.campaignProgression.campaignKey.sourceKey' and leadOperation.campaignProgression.campaignKey.sourceId is null
union all
select 'statusInCampaignProgressionChanged campaign type', count(*) from marketo_activity where eventType = 'leadOperation.campaignProgression.campaignKey.sourceKey' and leadOperation.campaignProgression.campaignKey.sourceType is null
union all
select 'statusInCampaignProgressionChanged campaign instance id', count(*) from marketo_activity where eventType = 'leadOperation.campaignProgression.campaignKey.sourceKey' and leadOperation.campaignProgression.campaignKey.sourceInstanceId is null
union all
select 'statusInCampaignProgressionChanged campaign key', count(*) from marketo_activity where eventType = 'leadOperation.campaignProgression.campaignKey.sourceKey' and leadOperation.campaignProgression.campaignKey.sourceKey is null;
```

```
select 'id', count(*) from salesforce_task where _id is null
union all
select 'event type', count(*) from salesforce_task where eventType is null
union all
select 'timestamp', count(*) from salesforce_task where timestamp is null
union all
select 'person source id', count(*) from salesforce_task where personKey.sourceId is null
union all
select 'person source type', count(*) from salesforce_task where personKey.sourceType is null
union all
select 'person source instance id', count(*) from salesforce_task where personKey.sourceInstanceId is null
union all
select 'person source key', count(*) from salesforce_task where personKey.sourceKey is null;
```

### Conversão {#conversion}

```
select 'conversion rate', count(*) from currency_conversion_rate where conversionRate is null
union all
select 'end date', count(*) from currency_conversion_rate where endDate is null
union all
select 'start date', count(*) from currency_conversion_rate where startDate is null
union all
select 'source ISO Code', count(*) from currency_conversion_rate where sourceISOCode is null
union all
select 'target ISO Code', count(*) from currency_conversion_rate where targetISOCode is null
union all
select 'source id', count(*) from currency_conversion_rate where extSourceSystemAudit.externalKey.sourceId is null
union all
select 'source type', count(*) from currency_conversion_rate where extSourceSystemAudit.externalKey.sourceType is null
union all
select 'source instance id', count(*) from currency_conversion_rate where extSourceSystemAudit.externalKey.sourceInstanceId is null
union all
select 'source key', count(*) from currency_conversion_rate where extSourceSystemAudit.externalKey.sourceKey is null
union all
select 'created date', count(*) from salesforce_contact where extSourceSystemAudit.createdDate is null
union all
select 'last updated date', count(*) from salesforce_contact where extSourceSystemAudit.lastUpdatedDate is null;
```

## Solução recomendada para campos obrigatórios com um valor NULO {#recommended-solution-for-required-fields-with-a-null-value}

É recomendável usar um campo calculado no mapeamento de campos para padronizar o campo com um valor não NULO. Veja a seguir dois exemplos:

* Se opportunityName de alguns registros de oportunidade for nulo, crie e use o seguinte campo calculado no mapeamento de campos
   * `iif(name != null && name != "", name, "Unknown")`

* Se leadOperation.campaignProgression.campaignID de alguns registros experienceevent for nulo, crie e use o seguinte campo calculado no mapeamento de campos
   * `iif(leadOperation.campaignProgression.campaignID != null && leadOperation.campaignProgression.campaignID != "" , to_object("sourceType", "Marketo", "sourceInstanceID", "123-abc-321", "sourceID", leadOperation.campaignProgression.campaignID, "sourceKey", concat(leadOperation.campaignProgression.campaignID,"@123-abc-321.Marketo")), iif(eventType == "leadOperation.statusInCampaignProgressionChanged", to_object("sourceType", "Marketo", "sourceInstanceID", "123-abc-321", "sourceID", "Unknown", "sourceKey", "Unknown@123-abc-321.Marketo"), null))`
