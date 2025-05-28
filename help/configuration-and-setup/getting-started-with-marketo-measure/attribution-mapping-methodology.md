---
unique-page-id: 18874716
description: Metodologia de Mapeamento de Atribuição - [!DNL Marketo Measure]
title: Metodologia de mapeamento de atribuição
exl-id: 4d54dd20-9a82-4b87-8908-ced2bd9c0f2f
feature: Attribution
source-git-commit: 90d0d6481e5b338d08a56f555ca3addea8bdd304
workflow-type: tm+mt
source-wordcount: '611'
ht-degree: 0%

---

# Metodologia de mapeamento de atribuição {#attribution-mapping-methodology}

A Metodologia de mapeamento de atribuição é o processo de pesquisar determinados objetos no seu CRM (Contatos, Oportunidades, Contas) para criar pontos de contato de atribuição na oportunidade associada. Em outras palavras, essa é a maneira [!DNL Marketo Measure] de entender quais pontos de contato incluir no modelo de atribuição com base nos processos do CRM atual.

## Mapeamento de ID de conta {#account-id-mapping}

Pronto para uso, [!DNL Marketo Measure] fornece o mapeamento da ID da conta. Isso significa que [!DNL Marketo Measure] verifica a Conta e suas informações de marketing de Contatos para criar pontos de contato de atribuição associados à oportunidade. Veja abaixo uma representação simples desse processo.

![](assets/1-1.png)

Lembre-se de que **nem todos** os pontos de contato de seus contatos são encaminhados para a Oportunidade como pontos de contato de atribuição. A linha do tempo da Oportunidade (sua data de primeiro contato - data de fechamento) determina se um ponto de contato conta como um influenciador na Oportunidade. Portanto, se um ponto de contato no Contato A ocorrer depois que a Oportunidade for Ganhada/Perdida Fechada, [!DNL Marketo Measure] não enviará esse ponto de contato para a Oportunidade. Esse procedimento de linha do tempo é seguido em todos os outros mapeamentos de objetos de atribuição.

Vantagens: esse método de atribuição é altamente eficaz para a maioria das empresas. A equipe de marketing não precisa depender da equipe de vendas para associar todos os contatos a uma oportunidade específica (que geralmente é um problema). Além disso, mesmo que uma equipe de vendas associe funções de contato, muitas outras interações do contato com materiais de marketing podem não ser percebidas. Por fim, esse método auxilia a estratégia de ABM que se esforça para influenciar a totalidade de uma conta, em vez de influenciadores específicos.

Desvantagens: se houver SLAs sólidos de Marketing e Vendas que definem quem deveria receber crédito por quê, esse método pode ser problemático. Além disso, se as pessoas não usarem hierarquias de Conta para definir unidades de negócios específicas em uma conta maior (por exemplo: IBM), as interações de marketing específicas de uma unidade de negócios poderão se distribuir por outras oportunidades de unidade de negócios.

## Mapeamento da função do contato da oportunidade {#opportunity-contact-role-mapping}

>[!NOTE]
>
>Os métodos de mapeamento de função de contato só estão disponíveis para quem usa o Salesforce como seu CRM. Não está disponível para usuários do Microsoft Dynamics, devido à falta de um objeto de Função de contato nesse CRM.

Embora a maioria dos clientes use o mapeamento de ID de conta, o [!DNL Marketo Measure] pode consultar as funções de contato (contatos associados à Oportunidade) em uma Oportunidade para detalhar o processo de atribuição. Isso significa que [!DNL Marketo Measure] somente enviará interações de marketing associadas às funções de contato na Oportunidade como Pontos de Contato de Atribuição do Comprador. Veja abaixo uma representação desse processo.

![](assets/2-1.png)

Vantagens: se sua equipe tiver um processo de funções de contato bem definido, esse tipo de mapeamento de atribuição poderá ser ideal para você. Ajuda a alinhar as vendas e o marketing um pouco mais, pois todos entenderiam totalmente como a atribuição é dividida. Esse processo também é útil quando as organizações estão direcionando várias unidades de negócios em uma grande empresa e quando estão vendendo produtos diferentes ao mesmo tempo.

Desvantagens: no entanto, se não houver um processo de função de contato em vigor, o marketing perderá muitos dados de marketing e a equipe acabará recebendo muito menos crédito por seus esforços de marketing que estão influenciando as oportunidades.

## Mapeamento da função do contato principal da oportunidade {#opportunity-primary-contact-role-mapping}

Além de simplesmente analisar as funções de contato na oportunidade, o [!DNL Marketo Measure] pode se concentrar ainda mais em analisar apenas os Contatos principais em uma oportunidade. Com essa configuração em mente, o [!DNL Marketo Measure] captura somente o ponto de contato de marketing associado aos contatos principais em uma oportunidade e envia essas informações para o histórico de atribuição dessa oportunidade específica. Veja a imagem abaixo.

![](assets/3.png)

Vantagens: se sua equipe estiver interessada apenas em entender a influência de marketing nos contatos definidos como &quot;primários&quot; na oportunidade, esse tipo de mapeamento se adapta melhor à equipe.

Desvantagens: esse é certamente o processo de mapeamento menos utilizado e pode minar bastante a influência do marketing que está afetando outros contatos em uma oportunidade.
