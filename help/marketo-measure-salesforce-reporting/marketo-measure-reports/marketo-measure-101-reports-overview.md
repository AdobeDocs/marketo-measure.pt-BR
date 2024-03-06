---
description: "[!DNL Marketo Measure] Visão geral dos relatórios do 101 - [!DNL Marketo Measure]"
title: "[!DNL Marketo Measure] 101 Visão geral dos relatórios"
exl-id: 83977b81-8055-47fd-8a6b-5ef32d280269
feature: Reporting
source-git-commit: 1a274c83814f4d729053bb36548ee544b973dff5
workflow-type: tm+mt
source-wordcount: '926'
ht-degree: 3%

---

# [!DNL Marketo Measure] Visão geral de relatórios 101 {#marketo-measure-101-reports-overview}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Todos [!DNL Marketo Measure] clientes que usam [!DNL Marketo Measure] e [!DNL Salesforce] Ter acesso à pasta &quot;Relatórios de pontos de contato do comprador&quot; na instância do SFDC. Esta pasta contém vários relatórios pré-criados que podem ajudar você a começar a criar relatórios com dados do Ponto de contato do comprador.

![](assets/bizible-101-reports-overview-1.png)

Embora muitos desses relatórios já tenham metas específicas de relatórios estabelecidos, há seis &quot;_[!DNL Marketo Measure]101._&quot; representado por três tipos principais de relatórios que abrangem a maioria das necessidades de relatórios.

* Clientes potenciais com pontos de contato do comprador
* [!DNL Marketo Measure] Pessoas com pontos de contato do comprador
* Pontos de contato da atribuição do comprador com oportunidades

![](assets/bizible-101-reports-overview-2.png)

Esses relatórios fornecem os campos básicos e a infraestrutura necessária para qualquer [!DNL Marketo Measure] relatório relacionado que você deseja criar. Recomendamos que todos os clientes, novos e antigos, comecem com esses relatórios ao explorar perguntas de atribuição de marketing. Abaixo você encontrará uma explicação de cada um dos seis &quot;_[!DNL Marketo Measure]101._&quot;Relatórios.

_Se não conseguir encontrar a pasta Relatório de Pontos de Contato do Comprador ou as seis &quot;_[!DNL Marketo Measure] 101._&quot; nessa pasta, entre em contato com o suporte para obter assistência._

**Clientes potenciais com pontos de contato do comprador** | As duas variações a seguir relatam clientes potenciais e seus pontos de contato do comprador. Embora eles usem o mesmo tipo de relatório básico, eles são agrupados por métricas diferentes, ID de lead vs. canal de marketing, para fornecer duas visualizações principais dos dados. Esse tipo de relatório foi projetado para relatórios de topo de funil e é ideal ao procurar explorar como seus clientes em potencial estão se envolvendo com suas iniciativas de marketing. Antes de qualquer personalização, os dois relatórios abaixo exibem o seguinte:

**[!DNL Marketo Measure]101: Clientes potenciais por canal** | Uma exibição de alto nível de como seus Canais de marketing estão influenciando a criação de Clientes potenciais e seus envolvimentos adicionais.
**[!DNL Marketo Measure]101: Clientes potenciais por ID** | Isso exibe a história de Clientes potenciais e é um relatório muito mais granular, mostrando cada Cliente potencial individual e seus Pontos de Contato do Comprador relacionados.

**Clientes potenciais/Contatos com pontos de contato do comprador** | Esses relatórios são comumente chamados de [!DNL Marketo Measure] Relatórios de pessoas. Eles usam o [!DNL Marketo Measure] objeto personalizado _[!DNL Marketo Measure]Person_ ao contrário do objeto Principal nos relatórios mencionados acima.

O objeto Pessoa do [!DNL Marketo Measure] se relaciona aos objetos Lead e Contato. Pronto para uso, [!DNL Salesforce] O não fornece a opção de criar relatórios usando os objetos de cliente potencial e contato no mesmo relatório. Ao se relacionar com o Objeto de Cliente Potencial e Contato usando o identificador exclusivo de uma pessoa, seu email, o [!DNL Marketo Measure] A pessoa pode relatar os Pontos de Contato do Comprador relacionados ao Cliente Potencial e ao Contato no mesmo relatório. Esse tipo de relatório é ideal para validar qualquer um dos [!DNL Marketo Measure] Configurações da conta, pois é o nível mais inclusivo de relatórios de ponto de contato.

As duas variações de relatório a seguir usam o mesmo tipo de relatório, mas são agrupadas por métricas diferentes, ID de pessoa (email) vs. Canal de marketing. Esses são os principais relatórios de funil/meio de funil que são ótimos ao procurar explorar como seus clientes em potencial e contatos estão se envolvendo com seus esforços de marketing. Antes de qualquer personalização, os dois relatórios abaixo exibem o seguinte:

**[!DNL Marketo Measure]101: Cliente Potencial/Contatos por Canal** | Uma exibição de alto nível de como seus Canais de marketing estão influenciando a criação de Clientes potenciais ou Contatos e seus envolvimentos adicionais. Este relatório é ideal para entender o engajamento total em seus Canais de marketing e quais Canais de marketing estão direcionando novos nomes na sua instância do Salesforce.
**[!DNL Marketo Measure]101: Cliente Potencial/Contatos por ID** | Isso exibe cada [!DNL Marketo Measure] A história da pessoa é um relatório muito mais granular, mostrando cada indivíduo e seus Pontos de contato do comprador, independentemente de o ponto de contato ter ocorrido quando ele era um lead ou como um contato.

**Oportunidades com pontos de contato de atribuição do comprador** | Os dois últimos &quot;_[!DNL Marketo Measure]101._&quot;Os relatórios do são a parte inferior dos relatórios de funil que exibem os dados de ponto de contato da atribuição do comprador relacionados às oportunidades. O principal diferencial desses relatórios é que eles são criados a partir de _Pontos de contato da atribuição do comprador_ que se relacionam aos dados de nível de Oportunidade e Oportunidade, como receita. Sempre que você deseja relatar Oportunidades ou receita atribuída, este tipo de relatório deve ser usado. Os dois relatórios abaixo usam o mesmo tipo de relatório. No entanto, são agrupados por métricas diferentes, ID da oportunidade vs Canal de marketing. Antes de qualquer personalização, os dois relatórios abaixo exibem o seguinte:

**[!DNL Marketo Measure]101: oportunidades por canal** | Uma exibição de alto nível de como seus Canais de marketing estão influenciando e impulsionando a receita atribuída em suas Oportunidades.
**[!DNL Marketo Measure]101: Oportunidades por ID** | Esta versão granular do relatório mostra a jornada completa de suas Oportunidades. Neste relatório, você pode ver cada ponto de contato de atribuição do comprador associado a uma Oportunidade e sua receita atribuída por meio dos vários modelos de atribuição.

É considerada uma prática recomendada tratar &quot;_[!DNL Marketo Measure]101._&quot; como modelos para suas necessidades de relatórios. Começar com um dos relatórios acima economizará tempo e garantirá que você esteja trabalhando com os campos corretos relacionados ao [!DNL Marketo Measure] dados. Certifique-se sempre de &quot;Salvar como&quot; sempre que fizer personalizações no &quot;_[!DNL Marketo Measure]101._&quot; para reter a variação original do relatório.

A pasta &quot;Relatórios do ponto de contato do comprador&quot; foi projetada para ajudar você a começar com seu [!DNL Marketo Measure] relatórios, para relatórios acionáveis, será necessário personalizar esses relatórios para que eles sejam personalizados de acordo com suas necessidades de relatórios. será necessário adicionar os filtros necessários para garantir que os registros no relatório (e seus pontos de contato relacionados) estejam alinhados com sua meta de relatórios.

Quando estiver familiarizado com o &quot;_[!DNL Marketo Measure]101._&quot;, você pode recriá-los a partir de tipos de relatórios personalizados para necessidades de relatórios mais personalizadas. Criação do [[!DNL Marketo Measure] Tipos de relatório personalizados](/help/marketo-measure-salesforce-reporting/new-report-types/creating-custom-marketo-measure-report-types.md) O permitirá obter campos personalizados que você geralmente pode usar em outros relatórios do CRM. Isso ajudará você a levá-lo [!DNL Marketo Measure] relatório para o próximo nível!
