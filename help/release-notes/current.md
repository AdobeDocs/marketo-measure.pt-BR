---
description: Notas de versão atuais - [!DNL Marketo Measure]
title: Notas da versão atual
exl-id: e93ff03e-ea21-41f4-abb8-32313ee74c0c
feature: Release Notes
source-git-commit: 00a362a2e143749e1a132672b847eb06dcab6b9c
workflow-type: tm+mt
source-wordcount: '391'
ht-degree: 2%

---

# Notas de versão: 2024 {#release-notes-2024}

Veja abaixo todos os recursos novos e atualizados das versões de 2024.

## Versão do segundo trimestre {#q2-release}

<p>

**Substituição de recursos do Marketo Measure em resposta à eliminação gradual de cookies de terceiros**

Em resposta às crescentes preocupações com a privacidade, os cookies de terceiros estão sendo eliminados, com o prazo do terceiro trimestre de 2024 do Google Chrome indicando o fim. O Marketo Measure descontinuará determinados recursos dependentes de cookies de terceiros, especificamente o Rastreamento entre domínios e a Atribuição de view-through, que dependem do cookie de impressão Google/DoubleClick. Essa alteração não afetará outras funcionalidades do Marketo Measure ou o uso de cookies primários. Após a linha do tempo do Google, espera-se que essas funcionalidades sejam descontinuadas em 1º de junho, embora os dados coletados antes dessa data ainda estejam acessíveis aos clientes.

* [Adaptação à desativação de cookies de terceiros no Marketo Measure](https://nation.marketo.com/t5/employee-blogs/adapting-to-third-party-cookie-deprecation-in-marketo-measure/ba-p/345110){target="_blank"}
* [Cookies do Marketo Measure](/help/marketo-measure-tracking/setting-up-tracking/marketo-measure-cookies.md){target="_blank"}

**Implantação em fases de nosso tratamento de erros aprimorado**

Estamos introduzindo uma implantação em fases do tratamento aprimorado de erros para trabalhos de exportação, começando com notificações imediatas de pulso no aplicativo para erros de permissão e fazendo a transição em 25 de abril para uma nova abordagem em que os trabalhos de exportação serão pausados no ponto de erro. Essa alteração tem como objetivo melhorar a integridade e a visibilidade dos dados, garantindo processos de gerenciamento de dados mais simples e confiáveis para nossos usuários. Para garantir uma transição tranquila e o mínimo de interrupção em suas operações, estamos implementando essas alterações em duas fases:

* Disponibilidade imediata de notificações de pulso: você receberá notificações de pulso no aplicativo para erros de permissão durante os trabalhos de exportação. Isso não interromperá suas exportações, mas ajudará você a saber mais sobre os erros sem afetar suas tarefas atuais.
* Implementação de pausa de trabalho em 25 de abril: a partir de 25 de abril, se o sistema encontrar um erro de permissão durante um trabalho de exportação, ele pausará o trabalho para garantir que nenhum dado seja ignorado. Você será notificado de qualquer problema e, uma vez corrigidas as permissões, o trabalho de exportação será retomado sem problemas de onde parou.

_Por que isso é importante_

Integridade de dados aprimorada e integração que não se torna obsoleta: interrompemos o trabalho no primeiro sinal de problema para evitar a perda de dados e garantir a precisão. Isso permite a resolução rápida de problemas, melhorando a qualidade da exportação de dados e a confiabilidade do sistema.

Visibilidade imediata: a introdução de notificações de pulso permite uma resposta imediata a erros de permissão, evitando possíveis impactos nas operações.

_Apoiando sua transição_

Para ajudá-lo a se adaptar a essa mudança, [criamos a documentação](/help/configuration-and-setup/getting-started-with-marketo-measure/error-notifications.md){target="_blank"} com descrições claras dos erros e etapas abrangentes de solução de problemas.
