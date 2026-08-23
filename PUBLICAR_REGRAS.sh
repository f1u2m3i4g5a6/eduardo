#!/usr/bin/env bash
set -e
if ! command -v firebase >/dev/null 2>&1; then
  npm install -g firebase-tools
fi
firebase login
firebase use eduardo-36ee6
firebase deploy --only firestore:rules,firestore:indexes
echo "Concluído. Atualize o site no navegador."
