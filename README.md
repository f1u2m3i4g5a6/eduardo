# EDUARDO • D'MASSA V12 — PAINEL PROFISSIONAL

## Novo painel administrativo
A conta administrativa passa a ter:
- visão geral do dia
- faturamento do dia
- ticket médio
- próximo cliente
- total da semana
- agenda Hoje / 7 dias / 30 dias / Todos
- pesquisa por cliente, telefone e serviço
- lista de clientes com total gasto e quantidade de visitas
- botão de WhatsApp
- concluir atendimento
- cancelar atendimento
- criar agendamento manual
- bloquear horário
- liberar horário bloqueado
- atualização em tempo real

## Segurança
O painel não é liberado por botão escondido, username ou JavaScript.
A autorização também é conferida pelas regras do servidor.

### Ativar sua conta como administrador
1. Entre no site com SUA conta.
2. Firebase Console > Authentication > Users.
3. Copie o UID da sua conta.
4. Firestore > Data.
5. Crie coleção: `admins`
6. Crie documento com ID igual ao seu UID.
7. Campo: `active` | tipo Boolean | valor `true`
8. Publique `firestore.rules`.
9. Saia e entre novamente no site.

Apenas essa conta verá `◆ Painel`.

## IMPORTANTE
Não permita que clientes escrevam na coleção `admins`.
As regras deste pacote bloqueiam qualquer escrita nessa coleção pelo site.

## Publicar regras
Firebase Console:
Firestore Database > Rules > cole firestore.rules > Publicar

Ou:
firebase deploy --only firestore:rules,firestore:indexes

## Agendamento manual
Agendamentos criados no painel também criam um bookingSlot.
Portanto o horário fica imediatamente ocupado para os clientes.

## Bloqueios
Bloquear um horário cria:
- `adminBlocks/{slotId}`
- `bookingSlots/{slotId}`

Assim, um intervalo bloqueado aparece indisponível no site do cliente.
