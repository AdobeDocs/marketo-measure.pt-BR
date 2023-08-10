---
unique-page-id: 42762600
description: Documentação do painel de instantâneos - [!DNL Marketo Measure] - Documentação do produto
title: Documentação do painel de instantâneos
exl-id: 4dfc92d2-ccab-4726-a869-3ae32aa89a5f
feature: Reporting
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '416'
ht-degree: 2%

---

# Documentação do painel de instantâneos {#snapshot-dashboard-documentation}

O painel Instantâneo permite que você visualize o estado do seu CRM em qualquer momento determinado, com a distribuição de registros nos estágios Lead/Contato e Oportunidade.

Esse painel tem dois blocos:

* **Instantâneo do Cliente Potencial/Contato:** O número de registros de Cliente Potencial ou Contato em cada estágio na data selecionada.

>[!NOTE]
>
>Em todos os painéis do Discover, somente um objeto de pessoa, Cliente potencial ou Contato, pode ser relatado. Isso é definido em [!UICONTROL Configurações] > [!UICONTROL Relatórios] > [!UICONTROL Configurações de atribuição] > [!UICONTROL Objeto de painel padrão].

* **Instantâneo da oportunidade:** O número de registros de Oportunidade em cada estágio na data selecionada.

Esse painel é compatível com os seguintes filtros (todos os filtros se aplicam a ambos os blocos):

* Data do Instantâneo: selecione a data do instantâneo.
* ID/Nome da Conta do CRM: filtre os registros por IDs ou Nomes da Conta do CRM.

>[!NOTE]
>
>As sugestões mostram apenas nomes.

* Canal: filtre os registros por canais. Um registro é associado a um canal se qualquer um de seus pontos de contato estiver associado ao canal.
* Subchannel: filtrar os registros por subcanais. Um registro é associado a um subcanal se qualquer um de seus pontos de contato estiver associado ao subcanal.
* Campanha: filtre os registros por campanhas. Um registro é associado a uma campanha se qualquer um de seus pontos de contato estiver associado à campanha.
* Campaign Source: filtre os registros por origens de campanha. Exemplos de origens de campanha são [!DNL Adwords], [!DNL BingAds], [!DNL Facebook], [!DNL LinkedIn], etc. Um registro é associado a uma origem de campanha se qualquer um de seus pontos de contato estiver associado à origem da campanha.
* ID/nome da conta do anúncio: filtre os registros por IDs ou nomes da conta do anúncio. Um registro é associado a uma Conta publicitária se qualquer um dos seus pontos de contato estiver associado a uma campanha das Contas publicitárias selecionadas.

>[!NOTE]
>
>Sugestão: mostrar apenas nomes.

* Filtros de segmento: filtre os registros por segmentos personalizados. Um registro é associado a um segmento se qualquer um de seus pontos de contato estiver associado ao segmento.

Em todos os filtros, a lógica &quot;AND&quot; é usada.

>[!NOTE]
>
>Se um registro mudar de estágio na data selecionada, ele será contado para os estágios de e até e todos os estágios de passagem.

## Instantâneo de Lead/Contato {#lead-contact-snapshot}

![](assets/one.png)

Os estágios incluem FT, LC e estágios de funil selecionados em Estágios de lead/contato abertos ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de preparo]).

Você pode fazer drill-down em cada barra para exibir os registros de Lead/Contato para cada estágio.

## Instantâneo da Oportunidade {#opportunity-snapshot}

![](assets/two.png)

Os estágios incluem FT, LC, estágios de funil selecionados em estágios de lead/contato abertos ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de preparo]). E OC e estágios de Funil selecionados em Estágios de Oportunidade Abertos ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de preparo]).

Você pode fazer drill-down a partir de cada barra para exibir os registros de Oportunidade para cada estágio.
