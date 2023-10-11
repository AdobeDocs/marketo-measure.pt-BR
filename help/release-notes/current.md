---
description: Notas da versão atual - [!DNL Marketo Measure] - Documentação do produto
title: Notas da versão atual
exl-id: e93ff03e-ea21-41f4-abb8-32313ee74c0c
feature: Release Notes
source-git-commit: dc4fda07004398207fb5067eb42ecd9e8ffe8624
workflow-type: ht
source-wordcount: '536'
ht-degree: 100%

---

# Notas de versão: 2023 {#release-notes-2023}

Abaixo você encontrará todos os recursos novos e atualizados das versões de 2023.

## Versão do 4º trimestre {#q4-release}

<p>

**Novo design do painel Discover**

Todos os usuários do Marketo Measure usarão nossos painéis no aplicativo reprojetados, que combinam usabilidade aprimorada com valor agregado. Também estamos introduzindo novas métricas, como “ROI concretizado”, que leva em conta o atraso típico entre investimentos e compras de marketing no mercado B2B.

O novo conjunto de painéis pré-construídos está programado para ser introduzido em ondas, começando na primeira semana de outubro e concluindo antes do final do ano. Esses novos painéis aparecerão automaticamente em suas instâncias, juntamente com informações no produto e links para a documentação.

* [Manual do novo painel do Discover](/help/marketo-measure-discover-ui/dashboards/new-discover-dashboard-guide.md){target="_blank"}
* [Noções básicas do painel do Discover](/help/marketo-measure-discover-ui/dashboards/discover-dashboard-basics.md){target="_blank"}
* [Painel de visão geral da receita](/help/marketo-measure-discover-ui/dashboards/revenue-overview-dashboard.md){target="_blank"}
* [Painel de receita atribuída](/help/marketo-measure-discover-ui/dashboards/attributed-revenue-dashboard.md){target="_blank"}
* [Painel de ROI](/help/marketo-measure-discover-ui/dashboards/roi-dashboard.md){target="_blank"}
* [Painel de passaporte](/help/marketo-measure-discover-ui/dashboards/passport-dashboard.md){target="_blank"}

>[!NOTE]
>
>Embora os painéis atuais sejam descontinuados em meados de janeiro de 2024, é possível utilizar ambas as versões até lá, garantindo uma transição suave.

### Descontinuações {#deprecations}

<p>

* **Campo “custom_properties”**

Em nosso data warehouse, o campo “custom_properties” tem servido como um armazenamento para pontos de dados adicionais não cobertos pelo nosso esquema fixo. Armazenado no formato JSON, o uso desse campo é limitado e sua integração com consultas SQL pode ser complicada, afetando o desempenho. Dados esses fatores, decidimos descontinuar esse campo. Essa alteração afetará principalmente a camada de processamento de dados em nosso armazenamento de tabela do Azure e os dados exportados para nosso data warehouse.

* **Pacote do Dynamics relacionado**

   * Para permanecer conectado ao Dynamics, instale a versão mais recente do pacote, v6.12. Versões antigas do `(<v6.12)` não serão mais compatíveis. Essa atualização otimiza a criação de registros históricos para reduzir o uso do armazenamento.

   * O método desatualizado do OAuth com um RefreshToken será descontinuado. Consulte [este manual](/help/marketo-measure-and-dynamics/getting-started-with-marketo-measure-and-dynamics/oauth-with-azure-active-directory-for-dynamics-crm.md){target="_blank"} para atualizar suas credenciais e seguir as práticas recomendadas da Microsoft de uso do ClientSecret.

### O que está por vir? {#q4-whats-coming}

<p>

**Relatórios personalizados no aplicativo**

Os clientes do Marketo Measure, pela primeira vez, poderão criar e salvar seus próprios relatórios diretamente no aplicativo. Isso virá após o lançamento dos painéis pré-construídos no início de 2024.

<br>

## Versão do segundo trimestre {#q2-release}

<p>

* **Consolidação de pacotes do Salesforce**

Estamos mesclando todos os pacotes do Salesforce em um pacote único e abrangente para melhorar a experiência do usuário e simplificar o uso. Os pacotes V1, V2_EXT e Relatórios serão descontinuados no próximo trimestre. O novo pacote combina todos os recursos anteriores, permitindo um rastreamento mais eficiente e insights do cliente mais profundos.

Os clientes que já têm o pacote V2 instalado devem atualizá-lo para a nova versão consolidada.

Adicionamos dois novos campos para aprimorar seus recursos de relatório:

* form_name: agora disponível em objetos BT/BAT, esse campo permite criar relatórios com base em nomes de formulário.
* user_touchpoint_id: esse campo permite criar relatórios com contagens de pontos de contato de usuários exclusivos.

[Este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/salesforce-package-consolidation.md){target="_blank"} inclui guias sobre como recriar relatórios e painéis de pacotes de relatórios herdados.

* **Atualizações de versão da API do Salesforce**

Todas as versões da API do Salesforce das classes Apex, incluindo a classe UserActivityContext, foram atualizadas para versões compatíveis. (31.0 a 57.0)

* **Instalação do novo pacote**

O link de instalação do novo pacote consolidado [pode ser encontrado aqui](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1P000000VY6Z){target="_blank"}

### O que está por vir? {#q2-whats-coming}

<p>

**Alterações no armazenamento de endereços IP**

Não armazenaremos mais endereços IP em nosso sistema conforme as considerações de privacidade. Continuaremos a identificar e armazenar a localização geográfica do endereço IP, mas o formato será alterado (por exemplo, “Estados Unidos” para “EUA”).
