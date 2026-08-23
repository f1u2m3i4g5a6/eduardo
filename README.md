# EDUARDO • D'MASSA V17 — FOTO DIRETO DO CELULAR/PC

Esta versão NÃO usa Firebase Storage e NÃO usa serviço externo.

## Como funciona
Painel > Conteúdo > Foto/Novo destaque

1. Clique em Escolher arquivo.
2. Selecione uma foto do celular ou computador.
3. O site reduz a resolução e comprime a foto automaticamente.
4. A imagem otimizada é salva junto com o destaque.
5. A alteração aparece automaticamente no site.

## Limites
- arquivo original: até 15 MB
- resolução é reduzida para no máximo 1280 px no maior lado
- imagem final tenta ficar em aproximadamente 350 KB
- formato final: JPEG otimizado

Isso mantém cada documento abaixo do limite do Firestore.

## Também continua aceitando URL
Se preferir, o campo de URL continua disponível.

## Não precisa
- Firebase Storage
- plano Blaze
- ImgBB
- Cloudinary
- servidor de upload externo

## Atualização
1. Publique o novo index.html.
2. Publique firestore.rules.
3. Ctrl + Shift + R no navegador.

## Contato
+55 49 9838-4230

## V18 — acabamento visual e correções

- corrigido o HTML quebrado da imagem dos cards de serviços
- imagens individuais por serviço:
  - `imagens/cabelo.png`
  - `imagens/barba.png`
  - `imagens/cabelo-barba.png`
  - `imagens/completo.png`
- cards de serviço reorganizados para desktop, tablet e celular
- responsividade refinada de 280 px até telas grandes
- hero simplificado em celulares para carregar e navegar melhor
- modais adaptados a `100dvh` e safe-area em iPhone
- inputs com tamanho adequado no celular para evitar zoom involuntário
- avaliações com contraste corrigido
- imagens com fallback automático
- botão rápido Agendar agora abre o agendamento de verdade
- planos/assinaturas agora abrem uma conversa no WhatsApp
- botão atualizar recebeu feedback visual
- navegação por teclado e Escape melhorada
- melhorias no painel administrativo responsivo
- suporte a `prefers-reduced-motion`

### Imagens dos serviços

Mantenha na hospedagem:

```text
imagens/
├── cabelo.png
├── barba.png
├── cabelo-barba.png
├── completo.png
├── eduardo.png
└── cliente.png
```

Se algum serviço possuir um campo `image`, ele continua tendo prioridade.
