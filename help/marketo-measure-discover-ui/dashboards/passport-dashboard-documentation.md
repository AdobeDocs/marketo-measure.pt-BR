---
unique-page-id: 42762628
description: Documentação do painel do Passport - [!DNL Marketo Measure] - Documentação do produto
title: Documentação do painel do Passport
exl-id: 43cb01a8-d02e-4086-af57-d7ec9275f87a
feature: Reporting
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '406'
ht-degree: 2%

---

# Documentação do painel do Passport {#passport-dashboard-documentation}

O painel Passport permite que os profissionais de marketing visualizem clientes em potencial/contatos e oportunidades que passaram por cada estágio do pipeline durante um determinado período.

Esse painel tem dois blocos:

* Oportunidades: o número de registros de Oportunidade transmitidos em cada estágio durante o período especificado.
* Clientes Potenciais/Contatos: o número de registros de Clientes Potenciais ou Contatos transmitidos em cada estágio durante o período determinado.

>[!NOTE]
>
>Em todos os painéis do Discover, somente um objeto de pessoa, Cliente potencial ou Contato, pode ser relatado. Isso é definido em [!UICONTROL Configurações] > [!UICONTROL Relatórios] > [!UICONTROL Configurações de atribuição] > [!UICONTROL Objeto de painel padrão].

Esse painel é compatível com os seguintes filtros (todos os filtros se aplicam a ambos os blocos):

* Data: selecione o intervalo de tempo.
* Canal: filtre os registros por canais. Um registro é associado a um canal se qualquer um de seus pontos de contato estiver associado ao canal.
* Subchannel: filtrar os registros por subcanais. Um registro é associado a um subcanal se qualquer um de seus pontos de contato estiver associado ao subcanal.
* Campanha: filtre os registros por campanhas. Um registro é associado a uma campanha se qualquer um de seus pontos de contato estiver associado à campanha.
* Campaign Source: filtre os registros por origens de campanha. Exemplos de fontes de campanha são Adwords, BingAds, Facebook, LinkedIn etc. Um registro é associado a uma origem de campanha se qualquer um de seus pontos de contato estiver associado à origem da campanha.
* Nome da conta do CRM: filtre os registros por Nomes de conta do CRM.
* Filtros de segmento: filtre os registros por segmentos personalizados. Um registro é associado a um segmento se qualquer um de seus pontos de contato estiver associado ao segmento.

Em todos os filtros, a lógica &quot;AND&quot; é usada.

>[!NOTE]
>
>Se um registro mudar de estágio na data selecionada, ele será contado para os estágios de e até e todos os estágios de passagem.

## Oportunidades {#opportunities}

![](assets/one-1.png)

Os estágios incluem OC, estágios de Funil selecionados em Estágios de Oportunidade Abertos ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de preparo]) e Estágios de oportunidade conquistada ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de preparo]).

>[!NOTE]
>
>Para estágios ganhos, as contagens de registro são somente para registros transicionados para o estágio durante o período selecionado.

Você pode fazer drill-down a partir de cada barra para exibir os registros de Oportunidade para cada estágio.

## Leads/contatos {#leads-contacts}

![](assets/two-1.png)

Os estágios incluem FT, LC, estágios de funil selecionados em estágios de lead/contato abertos em configurações - CRM - mapeamento de estágio e estágios de lead/contato convertidos em configurações - CRM - mapeamento de estágio.

>[!NOTE]
>
>Para Estágios convertidos, as contagens de registros são somente para registros transicionados para o estágio durante o período selecionado.

Você pode fazer drill-down em cada barra para exibir os registros de Lead/Contato para cada estágio.
