---
unique-page-id: 42762648
description: Documentação do painel de Jornada de coorte - [!DNL Marketo Measure] - Documentação do produto
title: Documentação do painel de Jornada de coorte
exl-id: b139f720-86ae-4f6d-9dfc-cc67b4186f88
source-git-commit: 28f1400e8e13c091e8ea2a3bef115a0db810c2e0
workflow-type: tm+mt
source-wordcount: '596'
ht-degree: 0%

---

# Documentação do painel de Jornada de coorte {#cohort-journey-dashboard-documentation}

Os painéis Impacto de coorte e Funil permitem que os profissionais de marketing visualizem o progresso a partir de um estágio de coorte inicial em um período de tempo selecionado e meçam a taxa de conversão.

A principal diferença é como contamos cada entidade do estágio de coorte.

* Funil de coorte: O resultado de cada estágio é diretamente derivado do estágio anterior.

   * Somente os registros que passaram por cada estágio abaixo do funil após a hora de início do coorte de conjunto são contados.

![](assets/cohort-journey-dashboard-documentation-1.png)

* Impacto da coorte: O resultado de cada estágio é derivado do estágio de coorte, não do estágio anterior.

   * Todos os registros em cada estágio são contados desde que tenham ocorrido após a hora de início da coorte de conjunto. Esse painel terá naturalmente mais registros do que o painel Funil desde que estamos observando como as entidades foram afetadas a partir do estágio de coorte, não apenas o movimento através do funil.

![](assets/cohort-journey-dashboard-documentation-2.png)

Cada painel tem dois blocos:

* Receita da coorte: O valor total da oportunidade de todas as oportunidades no estágio de negócios do bloco de Jornada de coorte .
* Jornada de coorte: A progressão para cada estágio da jornada a partir do estágio de coorte inicial para um período selecionado.

>[!NOTE]
>
>Em todos os painéis do Discover, somente um objeto de pessoa, seja Líder ou Contato, pode ser relatado. Isso é definido em [!UICONTROL Configurações] > [!UICONTROL Relatório] > [!UICONTROL Configurações de atribuição] > [!UICONTROL Objeto padrão do painel].

Os painéis são compatíveis com os seguintes filtros:

* Estágio de coorte: selecione o estágio de coorte inicial. Os registros em todos os estágios seguintes são evoluídos dos registros no estágio de coorte.
* Intervalo de datas da coorte: selecione o período de tempo do estágio de coorte selecionado. Juntamente com o Estágio de coorte, ele define o conjunto de dados inicial.
* Data limite: selecione a data em que a progressão do registro em todos os estágios seguintes deve ocorrer. O padrão é hoje. Observe que isso se aplica a todos os estágios diferentes do estágio de coorte.
* Canal: filtre os registros por canais. Um registro é associado a um canal se qualquer um de seus pontos de contato estiver associado ao canal.
* Subcanal: filtre os registros por subcanais. Um registro é associado a um subcanal se qualquer um de seus pontos de contato estiver associado ao subcanal.
* Campanha: filtre os registros por campanhas. Um registro é associado a uma campanha se qualquer um de seus pontos de contato estiver associado a ela.
* Fonte da campanha: filtre os registros por fontes de campanha. As fontes de campanha de exemplo são [!DNL Adwords], [!DNL BingAds], [!DNL Facebook], [!DNL LinkedIn], etc. Um registro é associado a uma fonte de campanha se qualquer um de seus pontos de contato estiver associado à fonte da campanha.
* Filtros de segmento: filtrar os registros por segmentos personalizados. Um registro é associado a um segmento se qualquer um de seus pontos de contato estiver associado a ele.

Em todos os filtros, a lógica &quot;AND&quot; é usada.

>[!NOTE]
>
>Os filtros de segmento se aplicam somente ao estágio LC e depois. Se o Estágio de coorte for Desconhecido ou Conhecido e um dos filtros de segmento tiver um valor, o painel não retornará nenhum resultado.

Os estágios incluem Desconhecido, Conhecido, LC, palcos selecionados de Funil em Estágios de Lead/Contato Abertos (Configurações > CRM > Mapeamento de Estágio), OC, palcos de Funil selecionados em Estágios de Oportunidade Aberta (Configurações > CRM > Mapeamento de Estágio) e Vendas (Oportunidades de Ganho Fechado).

>[!NOTE]
>
>A contagem dos registros para um estágio de jornada, definida como qualquer estágio diferente do estágio de coorte, inclui todos os novos registros, relacionados aos registros de coorte, que são criados após a data de início do período de tempo selecionado e antes da data limite. Esta é uma causalidade inferida.

Você pode fazer drill-down em cada barra para exibir os registros de cada estágio.

* Para Desconhecido, mostra detalhes anônimos do visitante.
* Para Conhecido, mostra detalhes conhecidos do visitante.
* Para o LC e os estágios de abertura/contato, ele mostra os detalhes do lead/contato.
* Para OC, estágios de Oportunidade Aberta e Vendas, ele mostra os detalhes da Oportunidade.
