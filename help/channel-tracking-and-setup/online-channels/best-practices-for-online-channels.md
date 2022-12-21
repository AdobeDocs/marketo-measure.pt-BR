---
description: Práticas recomendadas para Canais online - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para Canais online
exl-id: 766cb01c-98b3-492d-bb35-e0a78b76333a
source-git-commit: 02f686645e942089df92800d8d14c76215ae558f
workflow-type: tm+mt
source-wordcount: '612'
ht-degree: 0%

---

# Práticas recomendadas para Canais online {#best-practices-for-online-channels}

## Visão geral {#overview}

Para ter precisão [!DNL Marketo Measure] seus canais de marketing devem ser configurados corretamente. O campo Canal de marketing exibe o grupo de mais alto nível de atividades de marketing ao qual um ponto de contato pode pertencer (por exemplo, Pesquisa paga, Direta, Social etc).

Há dois aspectos para configurar seus canais de marketing: online e offline. Este documento se concentrará no [!DNL Marketo Measure] recomendações de práticas recomendadas para configurar e manter seus Canais online.

As regras do Canal online são as diretrizes de como [!DNL Marketo Measure] mapeia seus pontos de contato digitais, ou seja, quaisquer pontos de contato que são rastreados e criados por meio da variável [!DNL Marketo Measure] JS no seu site. Se essas regras não forem abrangentes ou não forem solicitadas corretamente, os pontos de contato poderão ser atribuídos ao canal incorreto, reduzindo a precisão dos relatórios. Garantir que suas regras do Canal online sejam precisas e atualizadas garantirá que seus dados digitais estejam sendo atribuídos ao canal e aos subcanais corretos em seu [!DNL Marketo Measure] Relatório.

## Prática recomendada {#best-practice}

Esteja você configurando suas regras pela primeira vez ou apenas as revisando para verificar a precisão, lembre-se das seguintes práticas recomendadas.

Reserve algum tempo para pensar sobre a organização de suas campanhas de marketing e como elas se encaixam no [!DNL Marketo Measure] estrutura. Determine quais Canais e Subcanais devem ser representados em seus Canais Online, bem como quais campanhas, parâmetros de UTM ou sites de referência diferenciam esses canais uns dos outros.

O que deve ser lembrado:

* Todos os canais e subcanais digitais devem ser representados com pelo menos uma regra
   * Se o canal não direciona pessoas para o seu site, ele não é um Canal Online
* Não há problemas em ter várias regras para um canal/subcanal
   * Várias regras podem ser consideradas como &quot;lançando uma rede mais ampla&quot; para garantir que cada ponto de contato seja mapeado corretamente. Geralmente, os parâmetros podem ser adicionados ou ignorados incorretamente completamente, portanto, ter várias regras para capturar um canal/subcanal é uma boa ideia garantir a precisão do mapeamento.
* [!DNL Marketo Measure] lógica prioriza o mapeamento de ponto de contato em ordem decrescente, começando pela linha superior da planilha e descendo
   * [!DNL Marketo Measure] O lê cada regra (linha), buscando o verdadeiro e o primeiro ajuste. O ponto de contato é mapeado para esse canal/subcanal
   * Não classifique a planilha em ordem alfabética, pois isso interferirá nas regras de lógica.
* Manter as regras entre colchetes, não editar ou adicionar às regras entre colchetes (exemplo; [Pesquisa paga do AdWords] ou [Facebook Pago] )
   * Eles estão prontos [!DNL Marketo Measure] regras que criaram lógica, que vinculam a variável [!DNL Marketo Measure] integrações. Atribua prioridade máxima a essas regras para a seção de canal/subcanal para garantir que a função [!DNL Marketo Measure] as integrações podem funcionar conforme projetado.
* Depois que o arquivo for carregado, não será possível alterar nenhuma das regras por sete dias
   * [!DNL Marketo Measure] O utiliza esse tempo para processar e atualizar os pontos de contato, portanto verifique novamente suas regras antes de fazer upload.

## Prática recomendada para manutenção {#best-practice-for-maintenace}

Depois de salvas e processadas, as regras do Canal online trabalham continuamente para agrupar seus pontos de contato digitais. No entanto, determinadas alterações ou cenários fazem com que você queira revisar a configuração do Canal online. [!DNL Marketo Measure] A recomenda que você analise suas regras do Canal online uma vez a cada seis meses. Isso garantirá que a [!DNL Marketo Measure] Os dados do estão alinhados às definições internas de canais/subcanais online e ao uso de UTMs.

Outros itens que podem acionar a equipe para fazer a manutenção do Canal online incluem...

* Novo canal/subcanal digital é iniciado
* Os parâmetros do UTM são atualizados ou alterados
* Alterações na organização do seu canal ou nas convenções de nomenclatura
* Volume de negócios em sua equipe de marketing

Se a sua equipe tiver tido alguma das situações acima recentemente [!DNL Marketo Measure] O recomenda que você revise as regras dos canais online e faça as alterações apropriadas.

>[!MORELIKETHIS]
>
>* [Configuração do Canal Online](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md)
>* [Parâmetros do UTM](/help/channel-tracking-and-setup/online-channels/utm-parameters.md)
>* [Canal e subcanal de marketing](/help/channel-tracking-and-setup/online-channels/marketing-channels-and-subchannels.md)
>* [Práticas recomendadas do UTM](/help/channel-tracking-and-setup/online-channels/best-practices-for-setting-up-utm-parameters.md)

