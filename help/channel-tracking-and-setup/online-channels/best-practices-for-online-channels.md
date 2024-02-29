---
description: Práticas recomendadas para canais online - [!DNL Marketo Measure]
title: Práticas recomendadas para Canais online
exl-id: 766cb01c-98b3-492d-bb35-e0a78b76333a
feature: Channels
source-git-commit: 741ab20845de2f3bcde589291d7446a5b4f877d8
workflow-type: tm+mt
source-wordcount: '610'
ht-degree: 67%

---

# Práticas recomendadas para Canais online {#best-practices-for-online-channels}

## Visão geral {#overview}

Para ter informações [!DNL Marketo Measure] seus canais de marketing devem estar configurados corretamente. O campo Canal de marketing exibe o grupo de nível mais alto de atividades de marketing às quais um ponto de contato pode pertencer (por exemplo, Pesquisa paga, Direto, Social e assim por diante).

Há dois aspectos para configurar seus canais de marketing: online e offline. Este documento se concentra no [!DNL Marketo Measure] recomendações de práticas recomendadas para configurar e manter seus Canais online.

As regras de canal online são as diretrizes de como [!DNL Marketo Measure] mapeia seus pontos de contato digitais, ou seja, quaisquer pontos de contato rastreados e criados por meio do [!DNL Marketo Measure] JS no seu site. Se essas regras não forem abrangentes ou não forem ordenadas corretamente, os pontos de contato podem ser atribuídos ao canal incorreto, diminuindo a precisão dos relatórios. Garantir que as regras do canal online estejam precisas e atualizadas assegurará que os dados digitais sejam atribuídos ao canal e aos subcanais corretos no seu Relatório do [!DNL Marketo Measure].

## Prática recomendada {#best-practice}

Se você estiver definindo suas regras pela primeira vez ou apenas revisando-as para verificar a precisão, lembre-se das práticas recomendadas a seguir.

Reserve algum tempo para pensar sobre a organização de suas campanhas de marketing e como elas se encaixam na estrutura do [!DNL Marketo Measure]. Determine quais canais e subcanais devem ser representados em seus canais online e quais campanhas, parâmetros UTM ou sites de referência diferenciam esses canais uns dos outros.

O que deve ser lembrado:

* Todos os canais e subcanais digitais precisam ser representados com pelo menos uma regra
   * Se o canal não leva pessoas ao seu site, ele não é um Canal online
* Não há problema em ter várias regras para um canal/subcanal
   * Várias regras podem ser consideradas como “lançar uma rede mais ampla” para garantir que cada ponto de contato seja mapeado corretamente. Muitas vezes, os parâmetros podem ser adicionados incorretamente ou estar completamente ausentes, portanto, ter várias regras para capturar um canal/subcanal é uma boa ideia para garantir a precisão do mapeamento.
* A lógica do [!DNL Marketo Measure] prioriza o mapeamento de pontos de contato em ordem decrescente, começando pela linha superior da planilha e descendo
   * O [!DNL Marketo Measure] lê cada regra (linha) procurando pela primeira adequada que seja verdadeira. O ponto de contato é então mapeado para esse canal/subcanal
   * Não classifique a planilha em ordem alfabética, pois isso interfere nas regras de lógica.
* Mantenha as regras entre colchetes, não edite ou adicione às regras entre colchetes (exemplo: [Pesquisa paga do AdWords] ou [Facebook pago] )
   * Estes são prontos para uso [!DNL Marketo Measure] regras que têm lógica incorporada, que estão vinculadas à variável [!DNL Marketo Measure] integrações. Dê prioridade às regras para a seção de canal/subcanal para garantir [!DNL Marketo Measure] As integrações podem funcionar conforme projetado.
* Após o arquivo ser enviado, nenhuma regra poderá ser alterada por sete dias
   * O [!DNL Marketo Measure] utiliza esse tempo para processar e atualizar os pontos de contato, portanto, verifique com atenção as regras antes de fazer o upload.

## Prática recomendada para manutenção {#best-practice-for-maintenace}

Depois que as regras de canal online são salvas e processadas, elas funcionam continuamente para criar seus pontos de contato digitais. No entanto, determinadas alterações ou cenários podem fazer com que você queira revisar a configuração do Canal online. O [!DNL Marketo Measure] recomenda a revisão das regras do canal online uma vez a cada seis meses. Isso garante que seus [!DNL Marketo Measure] Os dados do estão alinhados às suas definições internas de canais/subcanais online e ao seu uso de UTMs.

Outros itens que podem acionar sua equipe para executar a manutenção do canal online incluem...

* Lançamento de um novo canal/subcanal digital
* Atualização ou alteração de parâmetros UTM 
* Alterações na organização do canal ou nas convenções de nomenclatura
* Rotatividade de sua equipe de marketing

Se a sua equipe passou por alguma das situações acima recentemente, o [!DNL Marketo Measure] recomenda a revisão das regras dos canais online para que se faça as alterações apropriadas.

>[!MORELIKETHIS]
>
>* [Configuração do canal online](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md)
>* [Parâmetros UTM](/help/channel-tracking-and-setup/online-channels/utm-parameters.md)
>* [Canal e subcanal de marketing](/help/channel-tracking-and-setup/online-channels/marketing-channels-and-subchannels.md)
>* [Práticas recomendadas do UTM](/help/channel-tracking-and-setup/online-channels/best-practices-for-setting-up-utm-parameters.md)
