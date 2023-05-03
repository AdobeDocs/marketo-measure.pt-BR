---
description: "[!DNL Salesforce] Consolidação de pacotes - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Salesforce] Consolidação de pacotes"
source-git-commit: 279d9a18dca59de9ad99113624f4c9b2bcea0d01
workflow-type: tm+mt
source-wordcount: '0'
ht-degree: 0%

---

# [!DNL Salesforce] Consolidação de pacotes {#salesforce-package-consolidation}

Estamos animados em anunciar as alterações futuras nos pacotes do Marketo Measure Salesforce. Em um esforço para aprimorar a experiência do usuário e simplificar o uso, estamos consolidando todos os pacotes existentes em um único pacote abrangente.

## Redução de pacotes {#package-retirement}

Como consequência dessa consolidação, os pacotes V1, V2_EXT, V2_Security atuais e todos os pacotes de relatórios serão removidos após agosto de 2023. Se você já tiver o pacote V2 instalado, deverá atualizá-lo para a nova versão consolidada.

## Novo pacote consolidado {#new-consolidated-package}

O novo pacote consolidado V2 incorpora todos os recursos e funcionalidades dos pacotes anteriores, proporcionando uma melhor experiência ao usuário. Este pacote atualizado permite um rastreamento mais eficiente do desempenho de marketing e vendas e permite insights mais profundos sobre o comportamento do cliente.

## Suporte e transição {#support-and-transition}

Entendemos que essa alteração pode exigir ajustes, e estamos empenhados em apoiá-lo ao longo do processo. Nosso [Equipe de suporte](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} esteja prontamente disponível para responder a qualquer pergunta e ajudar a garantir uma transição suave para o novo pacote consolidado.

## Ações necessárias {#retired-actions}

* Se você já tiver o pacote V2 instalado, deverá atualizá-lo para a nova versão consolidada.
* Se você tiver relatórios ou painéis de qualquer pacote de relatórios, poderá recriá-los facilmente sem qualquer modificação necessária, já que todos os campos utilizados existem no pacote consolidado.
* Se você tiver relatórios usando campos no pacote V2_EXT, poderá recriá-los no pacote consolidado através das etapas abaixo:
   * Todos os dados nos campos V2_EXT estão disponíveis nos campos Ponto de contato, portanto, você pode modificar seus relatórios para buscar dados dos campos de ponto de contato V2 correspondentes adicionando um filtro na posição do ponto de contato.
   * Exemplo de relatório que busca todos os leads com FT de conteúdo de anúncio contendo texto &quot;Alcance&quot;.
      * Consulta V2_EXT:
         * bizible2_ext_Ad_Content_FT_c contém alcance

![](assets/salesforce-package-consolidation-1.png)

* Consulta correspondente no pacote consolidado:
   * bizible2_Touchpoint_Position_c contém FT AND
   * bizible2_Ad_Content_c contém alcance_de_saída

![](assets/salesforce-package-consolidation-2.png)

## Perguntas frequentes {#faq}

**O pacote consolidado terá conflitos com os campos no meu pacote existente?**

Não é necessário desinstalar o pacote antes de instalar o pacote consolidado. Não haverá conflitos nos campos, pois eles estarão em um namespace diferente.

**Como posso preencher retroativamente os dados dos meus pacotes atuais?**

Você pode registrar um tíquete [com suporte](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para preencher e reprocessar dados BT/BAT para preencher os campos de ID de ponto de contato e ID de formulário.

**Os campos nos pacotes V1 e V2_EXT estarão disponíveis no pacote consolidado?**

Sim. O pacote consolidado conterá os mesmos campos em V1 com detalhamentos adicionais por objetos e campos V2_EXT por meio de campos Touchpoint .

**Os relatórios que usam campos V2_EXT podem ser recriados no pacote consolidado?**

Sim. Siga as etapas em [Ações necessárias](#retired-actions) acima.
