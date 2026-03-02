# Setup script para BOT FOXBIT
# Use: .\setup.ps1

Write-Host "╔════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   BOT FOXBIT - SCRIPT DE SETUP        ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════╝" -ForegroundColor Cyan

# Verifica se Python está instalado
Write-Host "`n🔍 Verificando Python..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ $pythonVersion encontrado" -ForegroundColor Green
} catch {
    Write-Host "❌ Python não encontrado! Instale de: https://www.python.org" -ForegroundColor Red
    exit
}

# Criar ambiente virtual
Write-Host "`n📦 Criando ambiente virtual..." -ForegroundColor Yellow
if (Test-Path ".\.venv") {
    Write-Host "✅ Ambiente virtual já existe" -ForegroundColor Green
} else {
    python -m venv .venv
    Write-Host "✅ Ambiente virtual criado" -ForegroundColor Green
}

# Ativar ambiente virtual
Write-Host "`n🔄 Ativando ambiente virtual..." -ForegroundColor Yellow
& .\.venv\Scripts\Activate.ps1
Write-Host "✅ Ambiente ativado" -ForegroundColor Green

# Instalar dependências
Write-Host "`n📥 Instalando dependências..." -ForegroundColor Yellow
pip install -r requirements.txt --quiet
Write-Host "✅ Dependências instaladas" -ForegroundColor Green

# Verificar se .env existe
Write-Host "`n🔐 Verificando arquivo .env..." -ForegroundColor Yellow
if (Test-Path ".\.env") {
    Write-Host "✅ Arquivo .env existe" -ForegroundColor Green
} else {
    Write-Host "⚠️  Arquivo .env não encontrado" -ForegroundColor Yellow
    Write-Host "   Será criado com valores padrão" -ForegroundColor Yellow
}

# Mostrar próximos passos
Write-Host "`n" -ForegroundColor Green
Write-Host "╔════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "║      ✅ SETUP CONCLUÍDO!              ║" -ForegroundColor Green
Write-Host "╠════════════════════════════════════════╣" -ForegroundColor Green
Write-Host "║  Próximos passos:                      ║" -ForegroundColor Green
Write-Host "║                                        ║" -ForegroundColor Green
Write-Host "║  1. Configure suas credenciais:       ║" -ForegroundColor Green
Write-Host "║     Edite o arquivo .env              ║" -ForegroundColor Green
Write-Host "║                                        ║" -ForegroundColor Green
Write-Host "║  2. Teste a conexão:                  ║" -ForegroundColor Green
Write-Host "║     python main.py                    ║" -ForegroundColor Green
Write-Host "║     Escolha opção 3 (Testar conexão)  ║" -ForegroundColor Green
Write-Host "║                                        ║" -ForegroundColor Green
Write-Host "║  3. Inicie o bot:                     ║" -ForegroundColor Green
Write-Host "║     python main.py                    ║" -ForegroundColor Green
Write-Host "║     Escolha opção 1                   ║" -ForegroundColor Green
Write-Host "║                                        ║" -ForegroundColor Green
Write-Host "╚════════════════════════════════════════╝" -ForegroundColor Green

Write-Host "`n💡 Dica: Mantenha este terminal aberto para usar o bot!" -ForegroundColor Cyan
