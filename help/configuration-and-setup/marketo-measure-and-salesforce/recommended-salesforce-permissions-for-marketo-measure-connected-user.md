---
unique-page-id: 18874696
description: Recomendado [!DNL Salesforce] Permissões para [!DNL Marketo Measure] Usuário Conectado - [!DNL Marketo Measure]
title: Permissões [!DNL Salesforce] recomendadas para [!DNL Marketo Measure] usuário conectado
exl-id: b74aa28b-4a7b-42d1-8df0-d1ae0ff1f338
feature: Salesforce
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '430'
ht-degree: 23%

---

# [!DNL Salesforce] Permissões recomendadas para [!DNL Marketo Measure] usuário conectado {#recommended-salesforce-permissions-for-marketo-measure-connected-user}

O [!DNL Marketo Measure] envia e recebe dados por meio de um usuário conectado do [!DNL Salesforce] no aplicativo [!DNL Marketo Measure].

Para enviar dados de ponto de contato para sua instância do [!DNL Salesforce], o usuário conectado deve ter acesso a [!DNL Marketo Measure] objetos personalizados (ou seja, Buyer Touchpoint e Buyer Attribution Touchpoint), bem como a objetos [!DNL Salesforce] padrão, como Clientes potenciais e Contatos. Consulte [[!DNL Marketo Measure] no Salesforce](/help/configuration-and-setup/marketo-measure-and-salesforce/how-marketo-measure-and-salesforce-interact.md).

As licenças de usuário administrador do [!DNL Salesforce] podem servir como o usuário conectado, pois geralmente têm os privilégios de dados necessários por padrão. No entanto, sua equipe pode preferir usar um usuário de integração ou uma licença de usuário dedicada do [!DNL Salesforce] para acompanhar o impacto do [!DNL Marketo Measure] na sua instância.

Recomendamos as seguintes permissões para garantir que os dados do [!DNL Marketo Measure] estejam fluindo com precisão:

* [!DNL Marketo Measure] Permissão De Administrador Definida Para Usuário Dedicado

O conjunto de permissões gerenciadas oferece a um administrador do SFDC a capacidade de criar, ler, gravar, excluir registros de objetos do [!DNL Marketo Measure].

* Exibir e editar conjuntos de permissões de clientes em potencial convertidos

Isso permite que o [!DNL Marketo Measure] decore leads depois de serem convertidos em contatos. Se esse conjunto de permissões não estiver ativado, poderá haver lacunas significativas no rastreamento de dados. Você pode encontrar mais informações na [[!DNL Salesforce Trailblazer] comunidade](https://help.salesforce.com/s/articleView?language=en_US&id=leads_view_edit_converted.htm&type=5).

* Caixa de seleção de usuário de marketing [!DNL Salesforce]

A caixa de seleção [!UICONTROL Usuário de marketing] permite que o usuário crie campanhas e use os Assistentes de importação de campanha. Se você não selecionar esta opção, o usuário só poderá visualizar campanhas e a configuração avançada de campanhas, editar o histórico de campanha de um único lead ou contato e executar relatórios de campanha. O [!DNL Marketo Measure] precisa da permissão para ler e gravar no objeto de campanha.

**Solução de problemas adicional**

Se [!DNL Marketo Measure] ainda tiver problemas ao ler ou gravar dados, pode ser útil investigar o seguinte:

* Acesso a [!DNL Salesforce] Filas

Se o usuário dedicado não tiver acesso a clientes potenciais em filas, não será possível modificar os clientes potenciais com dados [!DNL Marketo Measure]. Você pode fazer isso tendo uma função na hierarquia que permite acesso a filas ou concedendo acesso aos usuários individualmente.

* Acessibilidade e segurança em nível de campo

A segurança em nível de campo e a acessibilidade de campo estão relacionadas, mas têm algumas diferenças principais. A Segurança em nível de campo define a visibilidade de campo para um determinado perfil, enquanto a Acessibilidade de campo determina se um campo é editável com base na segurança em nível de campo e na configuração de layout da página. Usando os conjuntos de permissões do pacote [!DNL Marketo Measure], você receberá as configurações de segurança do objeto de campo necessárias. Às vezes, para ter a acessibilidade de campo correta, o usuário conectado precisa ter os campos [!DNL Marketo Measure] nos layouts de página. Os campos [!DNL Marketo Measure] no layout permitem que os dados [!DNL Marketo Measure] sejam mapeados para [!DNL Salesforce]. Isso depende do seu ambiente [!DNL Salesforce] específico.

Cada [!DNL Salesforce] da organização tem necessidades individuais, mas fornecemos a você nossos requisitos para equilibrar as necessidades de acesso do [!DNL Marketo Measure] com seus protocolos de segurança. Não hesite em contatar [[!DNL Marketo Support]](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
