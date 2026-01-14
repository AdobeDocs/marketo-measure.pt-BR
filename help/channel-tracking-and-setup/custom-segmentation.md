---
description: Orientação de segmentação personalizada para usuários do Marketo Measure
title: Segmentação personalizada
exl-id: c20a2add-250e-45ff-97a6-1b1c03351b6a
feature: Segmentation
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '788'
ht-degree: 0%

---

# Segmentação personalizada {#custom-segmentation}

Os segmentos fornecem a capacidade de filtrar dados no Painel de ROI do [!DNL Marketo Measure] para detalhar ainda mais um conjunto de dados específico. Por exemplo, um segmento pode ser definido por território geográfico ou um sistema de classificação.

**Por que a segmentação personalizada?**

A Segmentação personalizada permite filtrar Pontos de contato por categorias (nome do filtro) e regras (valores do filtro). Os clientes de nível 1 recebem um segmento, os de nível 2 e superior, dez. Dependendo do objeto para o qual o traço de ROI é apontado (cliente potencial ou contato), você pode criar segmentos com base nos campos encontrados no objeto cliente potencial/contato. Além disso, você poderá criar segmentos com base em qualquer campo encontrado no Objeto da oportunidade.

**Quando o recurso Segmentação Personalizada é útil?**

A Segmentação personalizada pode ser usada para ver dados de um tipo de registro específico. Depois de mapear a lógica do filtro, você poderá ver na Exibição em Cascata por Demanda do painel [!DNL Marketo Measure] os mesmos dados que veria no seu CRM.

**Como configurá-la?**

>[!NOTE]
>
>A atualização de regras de segmento reprocessará os dados históricos.

Etapa 1 - Determinar quais informações você deseja ver.

Antes de usar esse recurso, descubra por quais informações de ponto de contato você gostaria de filtrar. Lembre-se de usar os valores exatos no CRM para seus tipos de registro. A configuração filtrará os pontos de contato de cima para baixo da funnel de marketing.

Etapa 2 - Fazer logon e localizar o recurso [!UICONTROL Segmentos].

* Ir para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e fazer logon
* Na guia [!UICONTROL Minha conta], selecione [!UICONTROL Configurações]
* Selecione [!UICONTROL Segmentos] nas opções da barra lateral à esquerda, na seção [!UICONTROL Relatórios]

Etapa 3 - Entender os componentes.

* Use esta legenda para entender os vários ícones encontrados nesta página

![Use esta legenda para entender os vários ícones encontrados nesta página](assets/custom-segmentation-1.png)

Etapa 4 - Adicionar regras de filtro.

* Primeiro, insira o nome da categoria. [!UICONTROL Tipo Comercial] é um exemplo. Clique na marca de seleção quando terminar. Você precisa inserir um nome de categoria antes de adicionar segmentos
* Clique no sinal de mais para adicionar um segmento
* Informe um nome de Segmento. Por exemplo, você pode ter um segmento para novos negócios, parceiros, renovação ou venda adicional

![Insira um nome de segmento. Por exemplo, você pode ter um segmento para &#x200B;](assets/custom-segmentation-2.png)

* Clique no ícone de adição para revelar os campos de entrada da regra. As opções na lista de opções Campo extrai campos diretamente do seu CRM

![Clique no ícone de adição para revelar os campos de entrada da regra. As opções](assets/custom-segmentation-3.png)

>[!NOTE]
>
>Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de opções. Como as fórmulas são calculadas em segundo plano e não modificam um registro, o [!DNL Marketo Measure] não pode detectar se um registro se encaixa ou não em uma regra.

* A opção [!UICONTROL Value] não é uma lista suspensa e seu valor deve ser inserido manualmente. Certifique-se de verificar os valores em sua organização do Salesforce
* Repita esse processo para as regras de segmento de Oportunidades
* A categoria &quot;Outros&quot; é um segmento padrão que capturará quaisquer pontos de contato indefinidos. Você pode alterar o nome do segmento padrão
* Clique no ícone de lixeira para excluir uma categoria inteira ou uma regra individual dentro de uma categoria. Como alternativa, clique no ícone de lápis para editar a categoria ou regra
* Observe que você tem um botão &quot;[!UICONTROL Salvar]&quot; e um botão &quot;Salvar e Processar&quot;. Use o botão Salvar para salvar seu trabalho e as alterações ao longo do tempo. Use o botão Salvar e Processar SOMENTE depois de se certificar de que:

   * Seu mapeamento está preciso
   * Você adicionou todos os segmentos que deseja rastrear em uma categoria
   * O botão Salvar e Processar aciona o [!DNL Marketo Measure] para sincronizar todos os Pontos de Contato e aplicar as novas informações adicionadas. Esse processo leva 7 dias e as regras não podem ser alteradas durante esse período

**_Observações Adicionais:_**

Se as regras não forem configuradas para Clientes potenciais/Contatos e Oportunidades, você verá apenas uma parte de seus dados. Para elaborar, se você não configurar as regras de Oportunidades, verá apenas os dados de Cliente Potencial/Contato sem as Oportunidades associadas a eles. O mesmo é verdadeiro se você não configurar regras para Clientes Potenciais/Contatos—você só verá Oportunidades sem os Clientes Potenciais/Contatos associados.

Quando terminar, clique em [!UICONTROL Salvar] primeiro, verifique tudo novamente e clique em [!UICONTROL Salvar e Processar]. Lembre-se de que você não pode editar suas configurações por sete dias após salvar e processar porque o [!DNL Marketo Measure] está reformatando seus dados durante esse período.

Se você for cliente do Marketo Measure Ultimate e tiver definido seu Objeto de Painel Padrão como Contato, não use os dois campos abaixo específicos para Cliente Potencial ([saiba mais](/help/data-integrity-requirement.md){target="_blank"}).

* b2b.personStatus
* b2b.isConverted

**Como salvar os relatórios gerados?**

Não é possível salvar os relatórios gerados diretamente na interface do usuário. No entanto, [!DNL Marketo Measure] salva os nomes de segmento na URL para que você possa manter um registro de cada relatório marcando a página.
