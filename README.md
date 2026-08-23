# CORREÇÃO DEFINITIVA DO ERRO `permission-denied`

Os erros que você enviou mostram que a autenticação funciona, mas o servidor está recusando
`users`, `bookingSlots` e `appointments`.

Isso só muda quando as regras do servidor são PUBLICADAS.

## Jeito mais fácil (sem terminal)
1. Abra Firebase Console
2. Projeto `eduardo-36ee6`
3. Firestore Database
4. Aba `Rules`
5. Apague as regras atuais
6. Cole TODO o conteúdo de `firestore.rules`
7. Clique em `Publish` / `Publicar`
8. Abra a V11 do site e atualize com Ctrl+F5

## Via terminal
Windows: execute `PUBLICAR_REGRAS.bat`

macOS/Linux:
chmod +x PUBLICAR_REGRAS.sh
./PUBLICAR_REGRAS.sh

## Por que o HTML sozinho não consegue corrigir?
As regras são executadas nos servidores do banco. O navegador não tem permissão para
alterá-las (e não deveria ter). Se o servidor responde HTTP 403, trocar JavaScript não pode
ignorar essa proteção.

## Depois de publicar
- usuário autenticado pode consultar horários ocupados
- pode criar seu próprio agendamento
- só vê seus próprios agendamentos
- outro usuário vê o slot como ocupado, mas não vê os dados pessoais
- o mesmo horário não pode ser criado duas vezes porque o documento de slot é único e a
  reserva usa uma transação

## Erros `content.js` / `polyfill.js`
Esses nomes normalmente pertencem a extensões do navegador, não ao site.
Teste também em janela anônima sem extensões se quiser deixar o Console limpo.
