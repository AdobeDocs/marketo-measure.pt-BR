---
unique-page-id: 18874716
description: Metodologia de mapeamento de atribuição - [!DNL Marketo Measure] - Documentação do produto
title: Metodologia de mapeamento de atribuição
exl-id: 4d54dd20-9a82-4b87-8908-ced2bd9c0f2f
source-git-commit: 993a326c377b3b6ff48c4e0114b59297f9ca2ca6
workflow-type: tm+mt
source-wordcount: '599'
ht-degree: 0%

---

# Metodologia de mapeamento de atribuição {#attribution-mapping-methodology}

A Metodologia de mapeamento de atribuição é o processo de pesquisa de determinados objetos em seu CRM (Contatos, Oportunidades, Contas) para criar pontos de contato de atribuição na oportunidade associada. Em outras palavras, é o [!DNL Marketo Measure] forma de entender quais pontos de contato incluir no modelo de atribuição com base nos processos do CRM atual.

## Mapeamento de ID da conta {#account-id-mapping}

Pronto para uso, [!DNL Marketo Measure] O fornece mapeamento da ID da conta . Isso significa que [!DNL Marketo Measure] O analisa a Conta e suas informações de marketing de Contatos para criar pontos de contato de atribuição associados à oportunidade. Abaixo está uma representação simples desse processo.

![](assets/1-1.png)

Lembre-se **nem todos** os pontos de contato dos contatos serão colocados na Oportunidade como pontos de contato de atribuição. A linha do tempo da Oportunidade (data de primeiro contato - data de fechamento) determinará se um ponto de contato contará ou não como um influenciador na Oportunidade. Portanto, se um ponto de contato no Contato A ocorreu depois que a Oportunidade é Fechada Ganho/Perdido, [!DNL Marketo Measure] O não enviará esse ponto de contato para a Oportunidade. Esse procedimento da linha do tempo é seguido em todos os outros mapeamentos de objeto de atribuição.

Vantagens: Esse método de atribuição é altamente eficaz para a maioria das empresas. A equipe de marketing não precisa depender da equipe de vendas para associar todos os contatos a uma oportunidade específica (que geralmente é um problema). Além disso, mesmo que uma equipe de vendas associe funções de contato, muitas das interações de outro contato com materiais de marketing podem ser perdidas. Finalmente, este método ajuda as estratégias de ABM que se esforçam para influenciar a totalidade de uma conta, em vez de influenciadores específicos.

Desvantagens: Se houver SLAs de Marketing e Vendas fortes que definem quem deve receber crédito por quê, esse método pode ser problemático. Além disso, se as pessoas não usarem hierarquias de Conta para definir unidades de negócios específicas em uma conta maior (por exemplo: IBM), as interações de marketing específicas a uma unidade de negócios podem se espalhar por outras oportunidades de unidades de negócios.

## Mapeamento de Função do Contato da Oportunidade {#opportunity-contact-role-mapping}

Enquanto a maioria dos clientes usa o mapeamento da ID da conta , [!DNL Marketo Measure] O tem a capacidade de procurar as funções de contato (contatos associados à Oportunidade) em uma Oportunidade para analisar o processo de atribuição. Isso significa que [!DNL Marketo Measure] O somente encaminhará as interações de marketing associadas às funções de contato na Oportunidade como Pontos de Contato da Atribuição de Comprador. Abaixo está uma representação desse processo.

![](assets/2-1.png)

Vantagens: Se sua equipe tiver um processo de funções de contato muito bem definido, esse tipo de mapeamento de atribuição pode ser ideal para você. Isso ajudará a alinhar as vendas e o marketing um pouco mais, já que todos entenderiam totalmente como a atribuição é dividida. Esse processo também é muito útil quando as organizações estão direcionando várias unidades de negócios em uma grande empresa, bem como quando vendem produtos diferentes ao mesmo tempo.

Desvantagens: No entanto, se não houver um processo de função de contato em vigor, o marketing perderá muitos dados de marketing e a equipe acabará recebendo muito menos crédito por seus esforços de marketing que estão influenciando as oportunidades.

## Mapeamento da Função do Contato Principal da Oportunidade {#opportunity-primary-contact-role-mapping}

Além de simplesmente olhar para as funções de contato na oportunidade, [!DNL Marketo Measure] pode focar ainda mais para examinar somente os Contatos Principais em uma Oportunidade. Com essa configuração em mente, [!DNL Marketo Measure] O capturará somente o ponto de contato de marketing associado aos contatos principais em uma oportunidade e enviará essas informações para a história de atribuição dessa oportunidade específica. Veja a imagem abaixo.

![](assets/3.png)

Vantagens: Se sua equipe estiver interessada apenas em entender a influência de marketing nos contatos que são definidos como &quot;primários&quot; na oportunidade, esse tipo de mapeamento se adequará melhor à equipe.

Desvantagens: Este é certamente o processo de mapeamento menos usado e pode altamente minar a influência do marketing que está movendo a agulha através de outros contatos em uma oportunidade.
