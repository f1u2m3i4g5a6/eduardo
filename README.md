# EDUARDO • D'MASA V20 — HORÁRIOS EDITÁVEIS NO PAINEL

## Novo no Painel
Abra:

Painel > Horários

Agora é possível:
- abrir ou fechar qualquer dia da semana
- editar hora de abertura
- editar hora de fechamento
- restaurar o horário padrão
- cadastrar feriados
- cadastrar dias específicos sem atendimento
- remover um fechamento especial

## Integração automática
Ao salvar, a mesma configuração é usada por:
- calendário de agendamento do cliente
- horários disponíveis
- indicador “Aberto agora”
- criação manual de agendamento pelo painel
- bloqueio de horários pelo painel
- quadro público de horários do studio

## Horário inicial
O padrão continua:
- Segunda: 14:00–21:00
- Terça: fechado
- Quarta: 14:00–21:00
- Quinta: 14:00–21:00
- Sexta: 14:00–21:00
- Sábado: 09:00–17:00
- Domingo: fechado

Depois que você salvar pelo painel, o Firestore passa a ser a configuração principal.

## Firestore
A V20 usa o documento:

settings / business

Você NÃO precisa criar esse documento manualmente.
Ao clicar em “Salvar horários”, ele é criado automaticamente.

### IMPORTANTE
A V20 precisa das novas regras porque o painel agora grava em `settings/business`.

Faça:
1. substitua o `index.html`
2. Firebase > Firestore Database > Regras
3. cole o `firestore.rules` da V20
4. clique em Publicar
5. faça Ctrl + Shift + R no site
6. entre como Eduardo
7. abra Painel > Horários

## Dias específicos
Se você fechar uma data que já possui clientes agendados, o sistema avisa antes.
O fechamento impede NOVOS agendamentos, mas não cancela automaticamente os existentes.
