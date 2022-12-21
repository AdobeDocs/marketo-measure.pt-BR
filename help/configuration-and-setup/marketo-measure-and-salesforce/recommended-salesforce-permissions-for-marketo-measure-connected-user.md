---
unique-page-id: 18874696
description: Recomendado [!DNL Salesforce] Permissões para [!DNL Marketo Measure] Usuário conectado - [!DNL Marketo Measure] - Documentação do produto
title: Recomendado [!DNL Salesforce] Permissões para [!DNL Marketo Measure] Usuário conectado
exl-id: b74aa28b-4a7b-42d1-8df0-d1ae0ff1f338
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '455'
ht-degree: 0%

---

# Recomendado [!DNL Salesforce] Permissões para [!DNL Marketo Measure] Usuário conectado {#recommended-salesforce-permissions-for-marketo-measure-connected-user}

[!DNL Marketo Measure] envia e recebe dados por meio de um [!DNL Salesforce] usuário na [!DNL Marketo Measure] aplicativo.

Para enviar dados do ponto de contato para a [!DNL Salesforce] , o usuário conectado deve ter acesso ao [!DNL Marketo Measure] objetos personalizados (ou seja, ponto de contato do comprador e ponto de contato da atribuição do comprador) e padrão [!DNL Salesforce] objetos como Clientes potenciais e Contatos (consulte [[!DNL Marketo Measure] em Salesforce](/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md).

[!DNL Salesforce] As licenças de usuário administrador podem servir como usuário conectado, pois geralmente têm os privilégios de dados necessários por padrão. No entanto, sua equipe pode preferir usar um usuário de integrações ou um [!DNL Salesforce] licença do usuário para rastrear o impacto da [!DNL Marketo Measure] em sua instância.

Recomendamos as seguintes permissões para garantir que [!DNL Marketo Measure] Os dados estão fluindo com precisão:

* [!DNL Marketo Measure] Permissão de Administrador Definida para Usuário Dedicado

O conjunto de permissões gerenciadas oferece a um administrador do SFDC a capacidade de criar, ler, gravar, excluir registros de [!DNL Marketo Measure] objetos.

* Exibir e editar conjunto de permissões de clientes potenciais convertidos

Isso permite [!DNL Marketo Measure] para decorar leads depois de serem convertidos em contatos. Se esse conjunto de permissões não estiver ativado, pode haver lacunas significativas no rastreamento de dados. Você pode encontrar mais informações em [[!DNL Salesforce Trailblazer] comunidade](https://help.salesforce.com/articleView?id=leads_view_edit_converted.htm&amp;type=5).

* [!DNL Salesforce] Caixa de seleção de usuário de marketing

O [!UICONTROL Usuário de marketing] caixa de seleção permite que o usuário crie campanhas e use os Assistentes de importação de campanha. Se esta opção não estiver selecionada, o usuário só poderá visualizar campanhas e configuração avançada de campanha, editar o Histórico de campanha de um único cliente potencial ou contato e executar relatórios de campanha. [!DNL Marketo Measure] precisa poder ler e gravar no objeto de campanha.

**Solução de problemas adicional**

If [!DNL Marketo Measure] O ainda apresenta problemas ao ler ou gravar dados, pode ser útil investigar o seguinte:

* Acesso ao [!DNL Salesforce] Filas

Se o usuário dedicado não tiver acesso a leads em filas, ele não poderá modificar os leads com [!DNL Marketo Measure] dados. Você pode fazer isso tendo uma função na hierarquia que permite o acesso a filas ou a concessão individual de acesso aos usuários.

* Segurança e acessibilidade no nível do campo

A segurança e a acessibilidade do campo no nível do campo estão relacionadas, mas têm algumas diferenças importantes. A Segurança no nível do campo define a visibilidade do campo para um determinado perfil, enquanto a Acessibilidade do campo determina se um campo pode ser editado com base na segurança no nível do campo e na configuração do layout da página. Usar o [!DNL Marketo Measure] conjuntos de permissões do pacote você receberá as configurações de segurança necessárias do objeto de campo. Em alguns casos, para ter a acessibilidade correta do campo, o usuário conectado precisará ter a variável [!DNL Marketo Measure] nos layouts da página. [!DNL Marketo Measure] os campos no layout permitem [!DNL Marketo Measure] dados para mapear [!DNL Salesforce]. Isso dependerá do seu [!DNL Salesforce] ambiente.

Cada organização [!DNL Salesforce] tem necessidades individuais, mas fornecemos a você os nossos requisitos para equilibrar a [!DNL Marketo Measure] acesse as necessidades com seus protocolos de segurança. Não hesite em entrar em contato com o [[!DNL Marketo Support]](https://nation.marketo.com/t5/support/ct-p/Support){target=&quot;_blank&quot;}.
