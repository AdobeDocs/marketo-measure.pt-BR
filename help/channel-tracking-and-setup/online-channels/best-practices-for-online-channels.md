---
description: Práticas recomendadas para Canais online - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para Canais online
exl-id: 766cb01c-98b3-492d-bb35-e0a78b76333a
feature: Channels
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: ht
source-wordcount: '612'
ht-degree: 100%

---

# Práticas recomendadas para Canais online {#best-practices-for-online-channels}

## Visão geral {#overview}

Para ter relatórios precisos do [!DNL Marketo Measure], os canais de marketing precisam estar configurados corretamente. O campo canal de marketing exibe o grupo de atividades de marketing de nível mais alto ao qual um ponto de contato pode pertencer (por exemplo, Pesquisa paga, Direto, Redes sociais, etc).

Há dois aspectos para configurar seus canais de marketing: online e offline. Este documento é focado nas práticas recomendadas do [!DNL Marketo Measure] para configuração e manutenção dos Canais online.

As regras do canal online são as diretrizes que informam como o [!DNL Marketo Measure] mapeia pontos de contato digitais, ou seja, quaisquer pontos de contato que são rastreados e criados por meio do JS [!DNL Marketo Measure] no seu site. Se essas regras não forem abrangentes ou não forem ordenadas corretamente, os pontos de contato podem ser atribuídos ao canal incorreto, diminuindo a precisão dos relatórios. Garantir que as regras do canal online estejam precisas e atualizadas assegurará que os dados digitais sejam atribuídos ao canal e aos subcanais corretos no seu Relatório do [!DNL Marketo Measure].

## Prática recomendada {#best-practice}

Se você estiver definindo suas regras pela primeira vez ou apenas revisando-as para verificar a precisão, lembre-se das práticas recomendadas a seguir.

Reserve algum tempo para pensar sobre a organização de suas campanhas de marketing e como elas se encaixam na estrutura do [!DNL Marketo Measure]. Determine quais canais e subcanais devem ser representados nos seus canais online, bem como quais campanhas, parâmetros UTM ou sites de referência diferenciam esses canais uns dos outros.

O que deve ser lembrado:

* Todos os canais e subcanais digitais precisam ser representados com pelo menos uma regra
   * Se o canal não leva pessoas ao seu site, ele não é um Canal online
* Não há problema em ter várias regras para um canal/subcanal
   * Várias regras podem ser consideradas como “lançar uma rede mais ampla” para garantir que cada ponto de contato seja mapeado corretamente. Muitas vezes, os parâmetros podem ser adicionados incorretamente ou estar completamente ausentes, portanto, ter várias regras para capturar um canal/subcanal é uma boa ideia para garantir a precisão do mapeamento.
* A lógica do [!DNL Marketo Measure] prioriza o mapeamento de pontos de contato em ordem decrescente, começando pela linha superior da planilha e descendo
   * O [!DNL Marketo Measure] lê cada regra (linha) procurando pela primeira adequada que seja verdadeira. O ponto de contato é então mapeado para esse canal/subcanal
   * Não classifique a planilha em ordem alfabética, pois isso interferirá nas regras da lógica.
* Mantenha as regras entre colchetes, não edite ou adicione às regras entre colchetes (exemplo: [Pesquisa paga do AdWords] ou [Facebook pago] )
   * Estas são regras prontas para uso do [!DNL Marketo Measure] que têm lógica incorporada e estão vinculadas às integrações do [!DNL Marketo Measure]. Dê prioridade máxima a essas regras para essa seção de canal/subcanal para garantir que as integrações do [!DNL Marketo Measure] funcionem como planejado.
* Após o arquivo ser enviado, nenhuma regra poderá ser alterada por sete dias
   * O [!DNL Marketo Measure] utiliza esse tempo para processar e atualizar os pontos de contato, portanto, verifique com atenção as regras antes de fazer o upload.

## Práticas recomendadas para manutenção {#best-practice-for-maintenace}

Depois de salvas e processadas, as regras do canal online funcionam continuamente para compartimentar seus pontos de contato digitais. No entanto, determinadas alterações ou cenários podem fazer com que você queira revisar a configuração do Canal online. O [!DNL Marketo Measure] recomenda a revisão das regras do canal online uma vez a cada seis meses. Isso garante que os dados do [!DNL Marketo Measure] estejam alinhados às suas definições internas de canais/subcanais online e ao uso de UTMs.

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
