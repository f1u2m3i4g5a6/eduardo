@echo off
echo ========================================
echo EDUARDO D'MASSA - Publicar configuracao
echo ========================================
echo.
where firebase >nul 2>nul
if %errorlevel% neq 0 (
  echo Firebase CLI nao encontrado.
  echo Instalando...
  npm install -g firebase-tools
)
echo.
firebase login
firebase use eduardo-36ee6
firebase deploy --only firestore:rules,firestore:indexes
echo.
echo Concluido. Atualize o site no navegador.
pause
