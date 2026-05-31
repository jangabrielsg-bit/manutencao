@echo off
chcp 65001 >nul
echo ===============================================
echo     ATUALIZADOR AUTOMÁTICO DO SISTEMA (GITHUB)
echo ===============================================
echo.

IF NOT EXIST ".git" (
    echo [!] Configurando a pasta para o Github pela primeira vez...
    git init
    git remote add origin https://github.com/jangabrielsg-bit/manutencao.git
    git branch -M main
)

echo Adicionando arquivos alterados...
git add .

echo.
echo Criando um registro da alteracao...
git commit -m "Atualizacao do sistema"

echo.
echo Enviando para a nuvem do Github (Forcando atualizacao)...
git push -u origin main --force

echo.
echo ===============================================
echo    Pronto! Seu site ja esta atualizado!
echo ===============================================
pause
