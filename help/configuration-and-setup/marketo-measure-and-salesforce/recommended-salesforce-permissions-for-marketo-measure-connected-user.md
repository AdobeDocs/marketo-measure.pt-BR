---
unique-page-id: 18874696
description: Recomendado [!DNL Salesforce] Permissões para [!DNL Marketo Measure] Usuário conectado - [!DNL Marketo Measure]
title: Permissões [!DNL Salesforce] recomendadas para [!DNL Marketo Measure] usuário conectado
exl-id: b74aa28b-4a7b-42d1-8df0-d1ae0ff1f338
feature: Salesforce
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '430'
ht-degree: 14%

---

# Recomendado [!DNL Salesforce] Permissões para [!DNL Marketo Measure] Usuário conectado {#recommended-salesforce-permissions-for-marketo-measure-connected-user}

O [!DNL Marketo Measure] envia e recebe dados por meio de um usuário conectado do [!DNL Salesforce] no aplicativo [!DNL Marketo Measure].

Para enviar dados de ponto de contato para o [!DNL Salesforce] o usuário conectado deve ter acesso a [!DNL Marketo Measure] objetos personalizados (ou seja, Ponto de contato do comprador e Ponto de contato de atribuição do comprador), bem como objetos padrão [!DNL Salesforce] objetos como Clientes potenciais e Contatos. Consulte [[!DNL Marketo Measure] no Salesforce](/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md).

[!DNL Salesforce] As licenças de usuário administrador podem servir como o usuário conectado, pois geralmente têm os privilégios de dados necessários por padrão. No entanto, sua equipe pode preferir usar um usuário de integração ou um [!DNL Salesforce] licença de usuário para acompanhar o impacto do [!DNL Marketo Measure] na sua instância.

Recomendamos as seguintes permissões para garantir que [!DNL Marketo Measure] Os dados do estão fluindo com precisão:

* [!DNL Marketo Measure] Conjunto De Permissões De Administrador Para Usuário Dedicado

O conjunto de permissões gerenciadas oferece a um administrador do SFDC a capacidade de criar, ler, gravar, excluir registros de objetos do [!DNL Marketo Measure].

* Exibir e editar conjuntos de permissões de clientes em potencial convertidos

Isso permite que o [!DNL Marketo Measure] decore leads depois de serem convertidos em contatos. Se esse conjunto de permissões não estiver ativado, poderá haver lacunas significativas no rastreamento de dados. Você pode encontrar mais informações em [[!DNL Salesforce Trailblazer] comunidade](https://help.salesforce.com/s/articleView?language=en_US&amp;id=leads_view_edit_converted.htm&amp;type=5).

* [!DNL Salesforce] Caixa de seleção de usuário de marketing

A caixa de seleção [!UICONTROL Usuário de marketing] permite que o usuário crie campanhas e use os Assistentes de importação de campanha. Se essa opção não estiver selecionada, o usuário poderá apenas exibir campanhas e configurações de campanha avançadas, editar o Histórico de Campanhas de um único cliente potencial ou contato e executar relatórios de campanha. [!DNL Marketo Measure] deve ser capaz de ler e gravar no objeto da campanha.

**Solução de problemas adicional**

Se [!DNL Marketo Measure] O ainda está com problemas para ler ou gravar dados. Pode ser útil investigar o seguinte:

* Acesso a [!DNL Salesforce] Filas

Se o usuário dedicado não tiver acesso a leads em filas, não será possível modificar os leads com [!DNL Marketo Measure] dados. Você pode fazer isso tendo uma função na hierarquia que permite acesso a filas ou concedendo acesso aos usuários individualmente.

* Acessibilidade e segurança em nível de campo

A segurança em nível de campo e a acessibilidade de campo estão relacionadas, mas têm algumas diferenças principais. A Segurança em nível de campo define a visibilidade de campo para um determinado perfil, enquanto a Acessibilidade de campo determina se um campo é editável com base na segurança em nível de campo e na configuração de layout da página. Usar o [!DNL Marketo Measure] conjuntos de permissões do pacote, você receberá as configurações de segurança do objeto de campo necessárias. Às vezes, para ter a acessibilidade de campo correta, o usuário conectado precisa ter a [!DNL Marketo Measure] nos layouts de página. [!DNL Marketo Measure] os campos no layout permitem [!DNL Marketo Measure] dados para mapear em [!DNL Salesforce]. Isso depende do seu [!DNL Salesforce] ambiente.

De cada organização [!DNL Salesforce] necessidades individuais, mas fornecemos a você nossos requisitos para equilibrar a [!DNL Marketo Measure] necessidades de acesso com seus protocolos de segurança. Não hesite em contatar o [[!DNL Marketo Support]](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
