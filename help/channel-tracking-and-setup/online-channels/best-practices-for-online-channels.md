---
description: Práticas recomendadas para canais online - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para Canais online
exl-id: 766cb01c-98b3-492d-bb35-e0a78b76333a
feature: Channels
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '612'
ht-degree: 5%

---

# Práticas recomendadas para Canais online {#best-practices-for-online-channels}

## Visão geral {#overview}

Para ter informações [!DNL Marketo Measure] seus canais de marketing devem estar configurados corretamente. O campo Canal de marketing exibe o grupo de nível mais alto de atividades de marketing às quais um ponto de contato pode pertencer (por exemplo, Pesquisa paga, Direto, Social etc).

Há dois aspectos para configurar seus canais de marketing: online e offline. Este documento se concentrará no [!DNL Marketo Measure] recomendações de práticas recomendadas para configurar e manter seus Canais online.

As regras de canal online são as diretrizes de como [!DNL Marketo Measure] mapeia seus pontos de contato digitais, ou seja, quaisquer pontos de contato que são rastreados e criados por meio do [!DNL Marketo Measure] JS no seu site. Se essas regras não forem abrangentes ou não forem ordenadas corretamente, os pontos de contato podem ser atribuídos ao canal incorreto, diminuindo, portanto, a precisão dos relatórios. Garantir que suas regras de canal online sejam precisas e atualizadas garantirá que seus dados digitais sejam atribuídos ao canal e aos subcanais corretos em seu [!DNL Marketo Measure] Relatórios.

## Prática recomendada {#best-practice}

Se você estiver configurando suas regras pela primeira vez ou apenas revisando-as para verificar a precisão, lembre-se das práticas recomendadas a seguir.

Reserve algum tempo para pensar sobre a organização de suas campanhas de marketing e como elas se encaixam na [!DNL Marketo Measure] quadro regulamentar. Determine quais canais e subcanais devem ser representados em seus canais online, bem como quais campanhas, parâmetros UTM ou sites de referência diferenciam esses canais uns dos outros.

O que deve ser lembrado:

* Todos os canais e subcanais digitais devem ser representados com pelo menos uma regra
   * Se o canal não leva pessoas ao seu site, ele não é um Canal online
* Não há problema em ter várias regras para um canal/subcanal
   * Várias regras podem ser consideradas como &quot;lançar uma rede mais ampla&quot; para garantir que cada ponto de contato seja mapeado corretamente. Geralmente, os parâmetros podem ser adicionados ou perdidos incorretamente por completo, portanto, ter várias regras para capturar um canal/subcanal é uma boa ideia para garantir a precisão do mapeamento.
* [!DNL Marketo Measure] a lógica prioriza o mapeamento do ponto de contato em ordem decrescente, começando pela linha superior da planilha e diminuindo
   * [!DNL Marketo Measure] O lê cada regra (linha), procurando pelo verdadeiro e o primeiro ajuste. O ponto de contato é mapeado para esse canal/subcanal
   * Não classifique a planilha em ordem alfabética, pois isso interferirá nas regras de lógica.
* Mantenha as regras entre colchetes, não edite ou adicione às regras entre colchetes (exemplo: [Pesquisa paga do AdWords] ou [Facebook pago] )
   * Estes são prontos para uso [!DNL Marketo Measure] regras que têm lógica incorporada, que estão vinculadas à variável [!DNL Marketo Measure] integrações. Dê prioridade máxima a essas regras para a seção de canal/subcanal para garantir que [!DNL Marketo Measure] As integrações podem funcionar conforme projetado.
* Depois que o arquivo for carregado, você não poderá alterar nenhuma das regras por sete dias
   * [!DNL Marketo Measure] O utiliza esse tempo para processar e atualizar os Pontos de contato, portanto, verifique suas regras antes de fazer o upload.

## Prática recomendada para manutenção {#best-practice-for-maintenace}

Depois de salvas e processadas, as regras de canal online funcionam continuamente para criar seus pontos de contato digitais. No entanto, determinadas alterações ou cenários fazem com que você queira revisar a configuração do Canal online. [!DNL Marketo Measure] A recomenda que você revise suas regras de Canal online uma vez a cada seis meses. Isso garantirá que as suas [!DNL Marketo Measure] Os dados do estão alinhados às suas definições internas de canais/subcanais online e ao seu uso de UTMs.

Outros itens que podem acionar sua equipe para fazer a manutenção do Canal online incluem....

* Novo canal/subcanal digital iniciado
* Os parâmetros UTM são atualizados ou alterados
* Alterações na organização do canal ou nas convenções de nomenclatura
* Volume de negócios da sua equipe de marketing

Se a sua equipe tiver tido alguma das situações acima recentemente [!DNL Marketo Measure] A recomenda que você revise suas regras de canais online e faça as alterações apropriadas.

>[!MORELIKETHIS]
>
>* [Configuração de canal online](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md)
>* [Parâmetros do UTM](/help/channel-tracking-and-setup/online-channels/utm-parameters.md)
>* [Canal e subcanal de marketing](/help/channel-tracking-and-setup/online-channels/marketing-channels-and-subchannels.md)
>* [Práticas recomendadas UTM](/help/channel-tracking-and-setup/online-channels/best-practices-for-setting-up-utm-parameters.md)
