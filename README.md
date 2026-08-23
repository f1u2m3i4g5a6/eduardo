# EDUARDO • D'MASSA V13 — ADMIN DIRETO

Esta versão já está configurada para reconhecer como administrador a conta com UID:

QXZ3Xq4gaKgFeN9JW8jjFrvMB7x1

Não precisa mais consultar a coleção `admins` para mostrar o painel.

## Para o painel aparecer
1. Publique este `index.html`.
2. Publique o `firestore.rules` desta V13.
3. Saia da conta no site.
4. Entre novamente com a conta Eduardo que possui o UID acima.
5. O botão `◆ Painel` aparecerá no topo.
6. No celular também aparece um botão `◆ PAINEL` flutuante.

## IMPORTANTE
O UID não é senha. Ele pode estar nas regras.
A senha continua somente no sistema de autenticação.

## Publicar as regras
Firebase Console:
Firestore Database → Rules → cole todo o conteúdo de `firestore.rules` → Publicar.

## Se ainda não aparecer
Authentication → Users → confirme que o UID da conta logada é exatamente:
QXZ3Xq4gaKgFeN9JW8jjFrvMB7x1

Se o UID for diferente, você está entrando em outra conta Eduardo.
