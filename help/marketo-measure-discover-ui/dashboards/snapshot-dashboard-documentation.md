---
unique-page-id: 42762600
description: Documentação do painel de instantâneos - [!DNL Marketo Measure] - Documentação do produto
title: Documentação do painel de instantâneos
exl-id: 4dfc92d2-ccab-4726-a869-3ae32aa89a5f
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '416'
ht-degree: 1%

---

# Documentação do painel de instantâneos {#snapshot-dashboard-documentation}

O painel Instantâneo permite que você visualize o estado do seu CRM em qualquer ponto no tempo, com a distribuição de registros nos estágios de Lead/Contato e Oportunidade.

Este painel tem dois blocos:

* **Instantâneo do cliente potencial/contato:** O número de registros de Lead ou Contato em cada estágio na data selecionada.

>[!NOTE]
>
>Em todos os painéis do Discover, somente um objeto de pessoa, seja Líder ou Contato, pode ser relatado. Isso é definido em [!UICONTROL Configurações] > [!UICONTROL Relatório] > [!UICONTROL Configurações de atribuição] > [!UICONTROL Objeto padrão do painel].

* **Instantâneo da Oportunidade:** O número de registros de Oportunidade em cada estágio na data selecionada.

Este painel oferece suporte aos seguintes filtros (todos os filtros se aplicam aos dois blocos):

* Data do Instantâneo: selecione a data do instantâneo.
* ID/nome da conta do CRM: filtre os registros por IDs ou nomes de conta do CRM.

>[!NOTE]
>
>Sugestões mostram somente nomes.

* Canal: filtre os registros por canais. Um registro é associado a um canal se qualquer um de seus pontos de contato estiver associado ao canal.
* Subcanal: filtre os registros por subcanais. Um registro é associado a um subcanal se qualquer um de seus pontos de contato estiver associado ao subcanal.
* Campanha: filtre os registros por campanhas. Um registro é associado a uma campanha se qualquer um de seus pontos de contato estiver associado a ela.
* Fonte da campanha: filtre os registros por fontes de campanha. As fontes de campanha de exemplo são [!DNL Adwords], [!DNL BingAds], [!DNL Facebook], [!DNL LinkedIn], etc. Um registro é associado a uma fonte de campanha se qualquer um de seus pontos de contato estiver associado à fonte da campanha.
* ID/nome da conta do anúncio: filtre os registros por IDs ou nomes de conta de anúncio. Um registro é associado a uma conta de anúncio se qualquer um de seus pontos de contato estiver associado a uma campanha a partir das contas de anúncio selecionadas.

>[!NOTE]
>
>A sugestão mostra somente nomes.

* Filtros de segmento: filtrar os registros por segmentos personalizados. Um registro é associado a um segmento se qualquer um de seus pontos de contato estiver associado a ele.

Em todos os filtros, a lógica &quot;AND&quot; é usada.

>[!NOTE]
>
>Se um registro mudar de estágio na data selecionada, o registro será contado para os estágios de de de e para e todos os estágios de passagem.

## Instantâneo de Lead/Contato {#lead-contact-snapshot}

![](assets/one.png)

Os estágios incluem FT, LC e os estágios selecionados de Funil em Estágios de Lead/Contato Abertos ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de palco]).

Você pode fazer drill-down em cada barra para exibir os registros de Lead/Contato para cada estágio.

## Instantâneo da Oportunidade {#opportunity-snapshot}

![](assets/two.png)

As etapas incluem FT, LC, estágios selecionados de Funil em Estágios de Lead/Contato Abertos ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de palco]). E OC e estágios de Funil selecionados em Estágios de Oportunidade Aberta ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de palco]).

Você pode fazer drill-down em cada barra para exibir os registros de Oportunidade para cada estágio.
