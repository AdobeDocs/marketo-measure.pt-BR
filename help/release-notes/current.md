---
description: Notas da versão atual -  [!DNL Marketo Measure]
title: Notas da versão atual
exl-id: e93ff03e-ea21-41f4-abb8-32313ee74c0c
feature: Release Notes
source-git-commit: 24cb14c0f5db13c791966d21b4a1145b655ecc1b
workflow-type: tm+mt
source-wordcount: '1183'
ht-degree: 67%

---

# Notas de versão: 2024 {#release-notes-2024}

Abaixo, você encontrará todos os recursos novos e atualizados das versões de 2024.

## Versão do 4º trimestre {#q4-release}

### Regras de segmento aprimoradas

Agora é possível criar segmentos usando os campos Campanha e Membro da campanha, além dos campos Ponto de contato e Contato. Esse aprimoramento permite analisar e dissecar seus dados com mais eficiência no Discover.

![Regras de segmento para membros](assets/campaign-member.png)

### Atualização: Configuração de Tratamento de Erros para Exportações de CRM

Ouvimos seus comentários sobre a abordagem de interrupção de trabalho e estamos introduzindo um novo recurso na interface do usuário do. A partir de hoje, você pode escolher se os trabalhos de exportação devem ser pausados quando ocorrerem erros. Use o novo alternador em **Minha Conta** > **Configurações** → **CRM** → **Geral**. Essa opção é ativada por padrão para melhorar a integridade e a visibilidade dos dados. No entanto, se preferir não usar esse recurso, desative-o na interface do usuário e os trabalhos de exportação serão retomados. Essa atualização foi projetada para aprimorar a confiabilidade dos processos de gerenciamento de dados e, ao mesmo tempo, oferecer maior controle.

#### Principais datas e implementação em fases

Disponibilidade de alternância imediata: a alternância agora está ativa na interface do usuário e é ativada por padrão para impedir que os dados sejam ignorados durante trabalhos de exportação. Se preferir que os trabalhos de exportação continuem em execução apesar de encontrar erros, desative o botão de alternância.

Ativação de pausa de trabalho em 1º de outubro: a partir de 1º de outubro de 2024, se o botão estiver ativo e um erro de nível de registro for encontrado durante um trabalho de exportação, o trabalho será pausado para garantir que nenhum dado seja perdido. Esses erros geralmente ocorrem devido a permissões ausentes, regras de validação personalizadas aplicadas incorretamente ou problemas em workflows/acionadores. Você receberá notificações sobre o problema e, uma vez corrigido, o trabalho de exportação será retomado a partir do ponto de interrupção. Se você recusar a pausa do trabalho, ainda receberá notificações de problemas e, quando forem corrigidos, os registros ignorados serão automaticamente reexportados.

#### Por que isso é importante

**Integridade de Dados Aprimorada e Integração Futura:** Ao pausar o trabalho no primeiro sinal de um problema, evitamos a perda de dados e garantimos a precisão. Isso permite uma resolução rápida de erros, resultando em melhor qualidade de exportação de dados e confiabilidade geral do sistema.

**Visibilidade imediata:** através de notificações de pulso, você receberá alertas oportunos sobre erros de permissão, permitindo respostas imediatas e minimizando possíveis impactos em suas operações.

#### Apoiando sua transição

Para ajudá-lo a se adaptar a essa alteração, criamos uma documentação sobre o novo recurso e descrições claras dos erros, com etapas abrangentes de solução de problemas.

* Nova documentação: [Configuração de Tratamento de Erros para Exportações de CRM](/help/configuration-and-setup/marketo-measure-and-salesforce/crm-error-handling.md)
* [Notificações de erro](/help/configuration-and-setup/getting-started-with-marketo-measure/error-notifications.md)

## Versão do terceiro trimestre {#q3-release}

<p>

**Lembrete: descontinuações de campos do Salesforce – 14 de junho**

Conforme anunciado no ano passado, [eliminaremos gradualmente nossas tarefas de exportação para objetos Lead/Contato](https://nation.marketo.com/t5/employee-blogs/marketo-measure-salesforce-lead-and-contact-field-deprecation-06/ba-p/350179){target="_blank"} a fim de simplificar nossa integração e eliminar a necessidade de exportar para objetos padrão do Salesforce. Você pode obter os mesmos dados de seus objetos touchpoint seguindo as etapas [documentadas aqui](/help/release-notes/previous-releases/2023.md#deprecations){target="_blank"}. Também compartilharemos a documentação sobre como criar fluxos de trabalho para adicionar esses dados ao objeto lead/contato. A descontinuação entrará em vigor em 14 de junho de 2024.

Essa alteração trará dois benefícios principais:

* **Redução de custos da API do Salesforce**: os clientes podem esperar uma redução de cerca de 10% nos custos da API do Salesforce.
* **Integração simplificada**: o maior número de erros em nossas tarefas de exportação está relacionado a esses processos. Removê-los simplificará significativamente nossa integração.

**Painel de oportunidades atribuídas**

Estamos animados em apresentar o novo [Painel de oportunidades atribuídas](/help/marketo-measure-discover-ui/dashboards/attributed-opportunity-dashboard.md){target="_blank"}, criado para fornecer uma visão abrangente de como seus esforços de marketing contribuem para oportunidades de pipeline nascentes e maduras.  Esse painel permite um aprofundamento nos detalhes de cada oportunidade aberta e fechada atribuível às suas estratégias, com a flexibilidade de filtrar por estágio da oportunidade. Ele fornece insights sobre quais canais, subcanais ou campanhas estão na classificação mais alta em termos de quantidade de oportunidades atribuídas, e exibe a quantidade total de oportunidades atribuídas, juntamente com a contagem de oportunidades atribuídas abertas e fechadas.

**Sincronização de cookies do Marketo Engage para o Marketo Measure Ultimate**

A Sincronização de cookies do Marketo Engage agora está disponível para o Marketo Measure Ultimate. Para usar este recurso:

1. Na página esquemas da AEP, edite o esquema Pessoa B2B e adicione o grupo de campos “detalhes da pessoa Marketo Engage”.
1. Ao assimilar os dados no MMU, mapeie o campo ID de cookie do grupo de campos para cookies do Marketo Engage.

**Recurso “Estágios de bumerangue” habilitados para clientes de nível 2**

Anteriormente disponível apenas para clientes de nível 3, o recurso “Estágio de bumerangue” também estará disponível para todos os clientes de nível 2 a partir de 13 de junho de 2024. Para obter informações mais detalhadas sobre esse recurso, consulte a documentação abaixo.

* [“Estágios de bumerangue” e Touchpoints](/help/advanced-marketo-measure-features/boomerang/boomerang-stages-and-touchpoints.md){target="_blank"}
* [Configurando “Estágios de bumerangue”](/help/advanced-marketo-measure-features/boomerang/setting-up-boomerang-stages.md){target="_blank"}
* [Cenários de “Estágio de bumerangue”](/help/advanced-marketo-measure-features/boomerang/boomerang-stage-scenarios.md){target="_blank"}

<p>

## Versão do segundo trimestre {#q2-release}

<p>

**Descontinuação de recursos do Marketo Measure em resposta à descontinuação gradual de cookies de terceiros**

Em resposta aos crescentes receios em relação à privacidade, os cookies de terceiros estão sendo descontinuados gradualmente, sendo que o prazo final no terceiro trimestre de 2024 do Google Chrome sinalizará seu fim. O Marketo Measure descontinuará certos recursos que dependem de cookies de terceiros, mais especificamente, o rastreamento entre domínios e a atribuição de viewthrough, que dependem do cookie de impressão do Google/DoubleClick. Essa alteração não afetará outras funcionalidades do Marketo Measure nem o uso de cookies próprios. Seguindo o cronograma do Google, espera-se que essas funcionalidades sejam descontinuadas até 1º de junho, mas os dados coletados antes dessa data continuarão acessíveis para os clientes.

* [Adaptação à descontinuação de cookies de terceiros no Marketo Measure](https://nation.marketo.com/t5/employee-blogs/adapting-to-third-party-cookie-deprecation-in-marketo-measure/ba-p/345110){target="_blank"}
* [Cookies do Marketo Measure](/help/marketo-measure-tracking/setting-up-tracking/marketo-measure-cookies.md){target="_blank"}

**Implantação em fases do nosso tratamento aprimorado de erros**

Estamos introduzindo uma implantação em fases do tratamento aprimorado de erros para tarefas de exportação, começando por notificações de pulso imediatas no aplicativo para erros de permissão e fazendo a transição para uma nova abordagem, na qual as tarefas de exportação serão pausadas quando um erro ocorre. Essa alteração visa melhorar a integridade e visibilidade dos dados, garantindo processos de gerenciamento de dados mais fluidos e confiáveis para os nossos usuários. Para garantir uma transição tranquila e interrupções mínimas das suas operações, estamos implementando essas mudanças em duas fases:

* Disponibilidade imediata de notificações de pulso: você receberá notificações de pulso no aplicativo sobre erros de permissão durante tarefas de exportação. Isso não interromperá as suas exportações, mas informará sobre os erros sem afetar as suas tarefas atuais.
* Implementação de pausa de tarefas em 25 de abril: **ADIADA**; depois de considerar o feedback de usuários do Marketo Measure, decidimos adiar a implementação da pausa das tarefas de exportação quando um erro ocorre, originalmente programada para 25 de abril. Reconhecemos que a interrupção das tarefas pode não ser a abordagem mais eficaz. Estamos empenhados em encontrar uma solução melhor que mantenha a integridade dos dados e minimize as interrupções. Vamos esperar para fazer quaisquer alterações no nosso sistema atual até que possamos garantir uma solução que se alinhe mais às necessidades dos nossos usuários.

_Por que isso é importante_

Integridade de dados aprimorada e integração pronta para o futuro: interrompemos a tarefa no primeiro sinal de problema para evitar a perda de dados e garantir a precisão. Isso permite uma resolução rápida de problemas, melhorando a qualidade da exportação de dados e a confiabilidade do sistema.

Visibilidade imediata: a introdução de notificações de pulso permite uma resposta imediata aos erros de permissão, evitando possíveis impactos nas operações.

_Apoio à sua transição_

Para ajudar na adaptação para essa mudança, [criamos uma documentação](/help/configuration-and-setup/getting-started-with-marketo-measure/error-notifications.md){target="_blank"} com descrições claras de erros e etapas abrangentes de resolução de problemas.

<br>

**Ação necessária para integração com o LinkedIn**

O LinkedIn lançou recentemente uma versão atualizada de sua API Lead Sync. Autentique novamente a conexão com o LinkedIn na sua instância do Marketo Measure até 20 de maio para evitar interrupções.

