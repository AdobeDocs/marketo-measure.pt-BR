---
unique-page-id: 42762628
description: Documentação do painel do Passport - [!DNL Marketo Measure] - Documentação do produto
title: Documentação do painel do Passport
exl-id: 43cb01a8-d02e-4086-af57-d7ec9275f87a
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '406'
ht-degree: 0%

---

# Documentação do painel do Passport {#passport-dashboard-documentation}

O painel Passport permite que os profissionais de marketing visualizem leads/contatos e oportunidades que passaram por cada estágio do pipeline durante um determinado período de tempo.

Este painel tem dois blocos:

* Oportunidades: O número de registros de Oportunidade passados por cada estágio durante o intervalo de tempo especificado.
* Clientes potenciais/Contatos: O número de registros de Lead ou Contato passados por cada estágio durante um determinado período.

>[!NOTE]
>
>Em todos os painéis do Discover, somente um objeto de pessoa, seja Líder ou Contato, pode ser relatado. Isso é definido em [!UICONTROL Configurações] > [!UICONTROL Relatório] > [!UICONTROL Configurações de atribuição] > [!UICONTROL Objeto padrão do painel].

Este painel oferece suporte aos seguintes filtros (todos os filtros se aplicam aos dois blocos):

* Data: selecione o intervalo de tempo.
* Canal: filtre os registros por canais. Um registro é associado a um canal se qualquer um de seus pontos de contato estiver associado ao canal.
* Subcanal: filtre os registros por subcanais. Um registro é associado a um subcanal se qualquer um de seus pontos de contato estiver associado ao subcanal.
* Campanha: filtre os registros por campanhas. Um registro é associado a uma campanha se qualquer um de seus pontos de contato estiver associado a ela.
* Fonte da campanha: filtre os registros por fontes de campanha. As fontes de campanha de exemplo são Adwords, BingAds, Facebook, LinkedIn etc. Um registro é associado a uma fonte de campanha se qualquer um de seus pontos de contato estiver associado à fonte da campanha.
* Nome da conta CRM: filtre os registros por Nomes de Conta do CRM.
* Filtros de segmento: filtrar os registros por segmentos personalizados. Um registro é associado a um segmento se qualquer um de seus pontos de contato estiver associado a ele.

Em todos os filtros, a lógica &quot;AND&quot; é usada.

>[!NOTE]
>
>Se um registro mudar de estágio na data selecionada, o registro será contado para os estágios de de de e para e todos os estágios de passagem.

## Oportunidades {#opportunities}

![](assets/one-1.png)

Os estágios incluem OC, estágios selecionados de Funil em Estágios de Oportunidade Aberta ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de palco]) e Ganhar Estágios da Oportunidade ([!UICONTROL Configurações] > [!UICONTROL CRM] > [!UICONTROL Mapeamento de palco]).

>[!NOTE]
>
>Para estágios Won, as contagens de registro são somente para registros transitados para o estágio durante o período de tempo selecionado.

Você pode fazer drill-down em cada barra para exibir os registros de Oportunidade para cada estágio.

## Leads/contatos {#leads-contacts}

![](assets/two-1.png)

As etapas incluem FT, LC, estágios de Funil selecionados em Estágios de Lead/Contato Abertos em Configurações - CRM - Mapeamento de Estágio e Estágios de Lead/Contato Convertidos em Configurações - CRM - Mapeamento de Estágio.

>[!NOTE]
>
>Para estágios convertidos, as contagens de registro são somente para registros transitados para o estágio durante o período de tempo selecionado.

Você pode fazer drill-down em cada barra para exibir os registros de Lead/Contato para cada estágio.
