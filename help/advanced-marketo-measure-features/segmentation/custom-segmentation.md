---
unique-page-id: 18874604
description: Segmentação personalizada - [!DNL Marketo Measure] - Documentação do produto
title: Segmentação personalizada
exl-id: c20a2add-250e-45ff-97a6-1b1c03351b6a
source-git-commit: 01be819ccee1b3079b15a748480e9dacf6adb488
workflow-type: tm+mt
source-wordcount: '724'
ht-degree: 0%

---

# Segmentação personalizada {#custom-segmentation}

Os segmentos oferecem a capacidade de filtrar dados na [!DNL Marketo Measure] Painel de ROI para detalhar ainda mais um conjunto de dados específico. Por exemplo, um segmento pode ser definido por território geográfico ou um sistema de classificação.

**Por que a segmentação personalizada?**

O recurso Segmentação personalizada permite filtrar pontos de contato por uma categoria e por até cinco segmentos. Dependendo do objeto para o qual o traço de ROI é apontado (cliente potencial ou contato), você pode criar segmentos com base nos campos encontrados no objeto cliente potencial/contato. Além disso, você poderá criar segmentos com base em qualquer campo encontrado no Objeto de oportunidade.

>[!NOTE]
>
>A Segmentação personalizada permite filtrar Pontos de contato por categorias (nome do filtro) e regras (valores do filtro). O nível 1 recebe um segmento, o nível 2 e superior, dez.

**Quando o recurso Segmentação personalizada é útil?**

A Segmentação personalizada pode ser usada para ver dados de um tipo de registro específico. Depois de mapear a lógica do filtro, você poderá ver no [!DNL Marketo Measure] Exibição em cascata por demanda do painel — os mesmos dados que você veria no seu CRM.

**Como configurá-la?**

Etapa 1 - Determinar quais informações você deseja ver.

Antes de usar esse recurso, descubra por quais informações de ponto de contato você gostaria de filtrar. Lembre-se de usar os valores exatos no CRM para seus tipos de registro. A configuração filtrará os pontos de contato de cima para baixo do funil de marketing.

Etapa 2 - Fazer logon e localizar o recurso Segmentos.

* Ir para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e fazer logon
* No [!UICONTROL Minha conta] selecione [!UICONTROL Configurações]
* Selecionar [!UICONTROL Segmentos] nas opções da barra lateral à esquerda, sob o [!UICONTROL Relatórios] seção

Etapa 3 - Entender os componentes.

* Use esta legenda para entender os vários ícones encontrados nesta página

![](assets/1.png)

Etapa 4 - Adicionar regras de filtro.

* Primeiro, insira o nome da categoria. Business Type é um exemplo. Clique na marca de seleção quando terminar. Você precisa inserir um nome de categoria antes de adicionar segmentos
* Clique no sinal de mais para adicionar um segmento
* Informe um nome de Segmento. Por exemplo, você pode ter um segmento para novos negócios, parceiros, renovação ou venda adicional

![](assets/2.png)

* Clique no ícone de adição para revelar os campos de entrada da regra. As opções na lista de opções Campo extrai campos diretamente do seu CRM

![](assets/3.png)

>[!NOTE]
>
>Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de opções. Como as fórmulas calculam em segundo plano e não modificam um registro, [!DNL Marketo Measure] O não pode detectar se um registro se encaixa ou não em uma regra.

* A opção Value não é uma lista suspensa e seu valor deve ser inserido manualmente. Verifique os valores em sua organização do Salesforce
* Repita esse processo para as regras de segmento de Oportunidades
* A categoria &quot;Outros&quot; é um segmento padrão que capturará quaisquer pontos de contato indefinidos. Você pode alterar o nome do segmento padrão
* Clique no ícone de lixeira para excluir uma categoria inteira ou uma regra individual dentro de uma categoria. Como alternativa, clique no ícone de lápis para editar a categoria ou regra
* Você perceberá que tem um botão &quot;Salvar&quot; e um botão &quot;Salvar e processar&quot;. Use o botão Salvar para salvar seu trabalho e as alterações ao longo do tempo. Use o botão Salvar e Processar SOMENTE depois de se certificar de que:

   * Seu mapeamento está preciso
   * Você adicionou todos os segmentos que deseja rastrear em uma categoria
   * O botão Salvar e processar é acionado [!DNL Marketo Measure] para sincronizar todos os Touchpoints e aplicar as novas informações adicionadas. Esse processo leva 7 dias e as regras não podem ser alteradas durante esse período

**_Observações adicionais:_**

Se as regras não forem configuradas para Clientes potenciais/Contatos e Oportunidades, você verá apenas uma parte de seus dados. Para elaborar, se você não configurar as regras de Oportunidades, verá apenas os dados de Cliente Potencial/Contato sem as Oportunidades associadas a eles. O mesmo é verdadeiro se você não configurar regras para Clientes Potenciais/Contatos—você só verá Oportunidades sem os Clientes Potenciais/Contatos associados.

Quando terminar, clique em [!UICONTROL Salvar] primeiro, verifique tudo novamente e clique em [!UICONTROL Salvar e processar]. Lembre-se de que você não poderá editar suas configurações por sete dias ao salvar e processar, conforme [!DNL Marketo Measure] O está reformatando seus dados durante esse período.

**Como salvar os relatórios gerados?**

Não é possível salvar os relatórios gerados diretamente na interface do usuário. No entanto, [!DNL Marketo Measure] O salva os nomes de segmento no URL para que você possa manter um registro de cada relatório marcando a página.
