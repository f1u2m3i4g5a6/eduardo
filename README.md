# EDUARDO • D'MASSA V14 — ADMIN POR CONTA EDUARDO

O print mostrou no Console:
`Conta autenticada sem acesso administrativo.`

Isso confirma que o site V13 estava funcionando, mas o UID da conta atualmente logada não era o mesmo UID configurado anteriormente.

A V14 elimina esse problema.

## Como o ADM é reconhecido agora
A conta administrativa é a conta autenticada internamente como:

eduardo@usuarios.eduardo.app

Essa é exatamente a identidade técnica gerada quando você entra com usuário:

Eduardo

O cliente continua vendo e digitando apenas `Eduardo` + senha.

## O que fazer
1. Substitua seu index.html pela V14.
2. Firestore > Rules.
3. Cole o firestore.rules da V14.
4. Clique em Publicar.
5. No site, saia da conta.
6. Atualize com Ctrl+Shift+R.
7. Entre novamente como Eduardo.

O botão `◆ Painel` deve aparecer.

## Segurança
A senha NÃO está no HTML.
O painel depende de uma conta autenticada real.
As regras do servidor também conferem a identidade autenticada antes de liberar leitura de todos os agendamentos e funções administrativas.
