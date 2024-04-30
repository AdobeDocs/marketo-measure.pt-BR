---
description: Notas da versão atual -  [!DNL Marketo Measure]
title: Notas da versão atual
exl-id: e93ff03e-ea21-41f4-abb8-32313ee74c0c
feature: Release Notes
source-git-commit: cbb2afd48c0e462768be0a7cfe56007ae285c492
workflow-type: tm+mt
source-wordcount: '457'
ht-degree: 71%

---

# Notas de versão: 2024 {#release-notes-2024}

Abaixo, você encontrará todos os recursos novos e atualizados das versões de 2024.

## Versão do segundo trimestre {#q2-release}

<p>

**Descontinuação de recursos do Marketo Measure em resposta à descontinuação gradual de cookies de terceiros**

Em resposta aos crescentes receios em relação à privacidade, os cookies de terceiros estão sendo descontinuados gradualmente, sendo que o prazo final no terceiro trimestre de 2024 do Google Chrome sinalizará seu fim. O Marketo Measure descontinuará certos recursos que dependem de cookies de terceiros, mais especificamente, o rastreamento entre domínios e a atribuição de viewthrough, que dependem do cookie de impressão do Google/DoubleClick. Essa alteração não afetará outras funcionalidades do Marketo Measure nem o uso de cookies próprios. Seguindo o cronograma do Google, espera-se que essas funcionalidades sejam descontinuadas até 1º de junho, mas os dados coletados antes dessa data continuarão acessíveis para os clientes.

* [Adaptação à descontinuação de cookies de terceiros no Marketo Measure](https://nation.marketo.com/t5/employee-blogs/adapting-to-third-party-cookie-deprecation-in-marketo-measure/ba-p/345110){target="_blank"}
* [Cookies do Marketo Measure](/help/marketo-measure-tracking/setting-up-tracking/marketo-measure-cookies.md){target="_blank"}

**Implantação em fases do nosso tratamento aprimorado de erros**

Estamos introduzindo uma implantação em fases do tratamento aprimorado de erros para trabalhos de exportação, começando com notificações imediatas de pulso no aplicativo para erros de permissão e fazendo a transição para uma nova abordagem em que os trabalhos de exportação serão pausados no ponto de erro. Essa alteração visa melhorar a integridade e visibilidade dos dados, garantindo processos de gerenciamento de dados mais fluidos e confiáveis para os nossos usuários. Para garantir uma transição tranquila e interrupções mínimas das suas operações, estamos implementando essas mudanças em duas fases:

* Disponibilidade imediata de notificações de pulso: você receberá notificações de pulso no aplicativo sobre erros de permissão durante tarefas de exportação. Isso não interromperá as suas exportações, mas informará sobre os erros sem afetar as suas tarefas atuais.
* Implementação de Pausa de tarefa em 25 de abril: **ADIADO** - Depois de considerar o feedback dos usuários do Marketo Measure, decidimos adiar a implementação da pausa dos trabalhos de exportação no ponto de erro, originalmente programado para 25 de abril. Reconhecemos que a interrupção do emprego pode não ser a abordagem mais eficaz. Estamos empenhados em encontrar uma solução melhor que mantenha a integridade dos dados e minimize as interrupções. Vamos esperar para fazer quaisquer alterações em nosso sistema atual até que possamos garantir uma solução que se alinhe mais às necessidades de nossos usuários.

_Por que isso é importante_

Integridade de dados aprimorada e integração pronta para o futuro: interrompemos a tarefa no primeiro sinal de problema para evitar a perda de dados e garantir a precisão. Isso permite uma resolução rápida de problemas, melhorando a qualidade da exportação de dados e a confiabilidade do sistema.

Visibilidade imediata: a introdução de notificações de pulso permite uma resposta imediata aos erros de permissão, evitando possíveis impactos nas operações.

_Apoio à sua transição_

Para ajudar na adaptação para essa mudança, [criamos uma documentação](/help/configuration-and-setup/getting-started-with-marketo-measure/error-notifications.md){target="_blank"} com descrições claras de erros e etapas abrangentes de resolução de problemas.

<br>

**Ação necessária para integração com o LinkedIn**

O LinkedIn lançou recentemente uma versão atualizada de sua API Lead Sync. Autentique novamente a conexão com o LinkedIn na sua instância do Marketo Measure até 20 de maio para evitar interrupções.

