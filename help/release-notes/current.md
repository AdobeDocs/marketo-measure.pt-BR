---
description: Notas da versão atual - [!DNL Marketo Measure] - Documentação do produto
title: Notas da versão atual
exl-id: 64b8fce8-af7d-4991-b01e-3fcf375d14e7
feature: Release Notes
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: ht
source-wordcount: '232'
ht-degree: 100%

---

# Notas de versão: 2023 {#release-notes-2023}

Abaixo você encontrará todos os recursos novos e atualizados das versões de 2023.

## Versão do segundo trimestre {#q2-release}

<p>

**Consolidação de pacotes do Salesforce**

* Estamos mesclando todos os pacotes do Salesforce em um pacote único e abrangente para melhorar a experiência do usuário e simplificar o uso. Os pacotes V1, V2_EXT e Relatórios serão descontinuados no próximo trimestre. O novo pacote combina todos os recursos anteriores, permitindo um rastreamento mais eficiente e insights do cliente mais profundos.
* Os clientes que já têm o pacote V2 instalado devem atualizá-lo para a nova versão consolidada.
* Adicionamos dois novos campos para aprimorar seus recursos de relatório:
   * form_name: agora disponível em objetos BT/BAT, esse campo permite criar relatórios com base em nomes de formulário.
   * user_touchpoint_id: esse campo permite criar relatórios com contagens de pontos de contato de usuários exclusivos.
* [Este artigo](/help/configuration-and-setup/marketo-measure-and-salesforce/salesforce-package-consolidation.md){target="_blank"} inclui guias sobre como recriar relatórios e painéis de pacotes de relatórios herdados.

**Atualizações de versão da API do Salesforce**

* Todas as versões da API do Salesforce das classes Apex, incluindo a classe UserActivityContext, foram atualizadas para versões compatíveis. (31.0 a 57.0)

**Instalação do novo pacote**

* O link de instalação do novo pacote consolidado [pode ser encontrado aqui](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1P000000VY6Z){target="_blank"}

### O que está por vir? {#whats-coming}

<p>

**Alterações no armazenamento de endereços IP**

* Não armazenaremos mais endereços IP em nosso sistema conforme as considerações de privacidade. Continuaremos a identificar e armazenar a localização geográfica do endereço IP, mas o formato será alterado (por exemplo, “Estados Unidos” para “EUA”).
