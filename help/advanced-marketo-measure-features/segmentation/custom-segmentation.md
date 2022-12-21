---
unique-page-id: 18874604
description: Segmentação personalizada - [!DNL Marketo Measure] - Documentação do produto
title: Segmentação personalizada
exl-id: c20a2add-250e-45ff-97a6-1b1c03351b6a
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '702'
ht-degree: 0%

---

# Segmentação personalizada {#custom-segmentation}

Os segmentos fornecem a capacidade de filtrar dados na variável [!DNL Marketo Measure] Painel de ROI para detalhar ainda mais em um conjunto de dados específico. Por exemplo, um segmento pode ser definido por território geográfico ou um sistema de classificação.

**Por que segmentação personalizada?**

O recurso Segmentação personalizada permite filtrar Pontos de contato por uma categoria e por até cinco segmentos. Dependendo de para qual Objeto seu Traço de ROI é apontado (Lead ou Contato), você pode criar segmentos com base nos campos encontrados no Objeto Lead/Contato. Além disso, você poderá criar segmentos com base em quaisquer campos encontrados no Objeto de Oportunidade.

**Quando o recurso de Segmentação personalizada é útil?**

A Segmentação personalizada pode ser usada para ver os dados de um tipo de registro específico. Depois de mapear a lógica de filtro, você deve ser capaz de ver no [!DNL Marketo Measure] Exibição da cascata de demanda do painel — os mesmos dados que você veria em seu CRM.

**Como configurá-lo?**

Etapa 1 - Determine quais informações você deseja ver.

Antes de usar esse recurso, descubra por quais informações de ponto de contato você gostaria de filtrar. Lembre-se de usar os valores exatos em seu CRM para seus tipos de registro. A configuração filtrará pontos de contato de cima para baixo do funil de marketing.

Etapa 2 - Fazer logon e localizar o recurso Segmentos .

* Ir para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target=&quot;_blank&quot;} e faça logon
* Em [!UICONTROL Minha conta] guia , selecione [!UICONTROL Configurações]
* Selecionar [!UICONTROL Segmentos] nas opções da barra lateral à esquerda, abaixo de [!UICONTROL Relatório] seção

Etapa 3 - Entender os componentes.

* Use esta legenda para entender os vários ícones encontrados nesta página

![](assets/1.png)

Etapa 4 - Adicionar regras de filtro.

* Primeiro, insira o nome da categoria. O Tipo de negócios é um exemplo. Clique na marca de seleção ao terminar. É necessário inserir um nome de categoria antes de adicionar segmentos
* Clique no sinal de mais para adicionar um segmento
* Insira um nome de Segmento. Por exemplo, você pode ter um segmento para Novas empresas, Parceiros, Renovação ou Venda adicional

![](assets/2.png)

* Clique no ícone de mais para revelar os campos de entrada da regra. As opções na lista de seleção de campo extraem campos diretamente do seu CRM

![](assets/3.png)

>[!NOTE]
>
>Os campos de fórmula não podem ser usados em suas regras e não aparecerão na lista de seleção. Como as fórmulas são calculadas em segundo plano e não modificam um registro, [!DNL Marketo Measure] O não pode detectar se um registro se encaixa em uma regra ou não.

* A opção Value não é uma lista suspensa e seu valor deve ser inserido manualmente. Verifique os valores na sua organização Salesforce
* Repita esse processo para as regras do segmento Oportunidades
* A categoria &quot;Outros&quot; é um segmento padrão que capturará qualquer ponto de contato indefinido. Você pode alterar o nome do segmento padrão
* Clique no ícone da lixeira para excluir uma categoria inteira ou uma regra individual dentro de uma categoria. Como alternativa, clique no ícone de lápis para editar a categoria ou a regra
* Você notará que tem um botão &quot;Salvar&quot; e um botão &quot;Salvar e processar&quot;. Use o botão Salvar para salvar seu trabalho e alterações ao longo do tempo. Use o botão Salvar e processar SOMENTE depois de garantir que:

   * Seu mapeamento é preciso
   * Você adicionou todos os segmentos que deseja rastrear em uma categoria
   * Os acionadores do botão Salvar e processar [!DNL Marketo Measure] para sincronizar todos os pontos de contato e aplicar as novas informações adicionadas. Esse processo leva 7 dias e as regras não podem ser alteradas durante esse período

**_Observações adicionais:_**

Se as regras não estiverem configuradas para Leads/Contatos e Oportunidades, você verá apenas uma parte dos seus dados. Para elaborar, se você não configurar as regras de Oportunidades, verá apenas os dados de Lead/Contato sem as Oportunidades associadas a eles. O mesmo é verdade se você não configurar regras para Leads/Contatos. Você verá Oportunidades somente sem os Leads/Contatos associados.

Quando terminar, clique em [!UICONTROL Salvar] primeiro, verifique tudo novamente e clique em [!UICONTROL Salvar e processar]. Lembre-se de que não será possível editar suas configurações por sete dias ao salvar e processar, como [!DNL Marketo Measure] O está reformatando seus dados durante esse período.

**Como faço para salvar os relatórios gerados?**

Não é possível salvar os relatórios gerados diretamente na interface do usuário do . No entanto, [!DNL Marketo Measure] salva os nomes de segmento no URL para que você possa manter um registro de cada relatório marcando a página.
