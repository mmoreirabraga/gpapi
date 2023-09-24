# Use a imagem oficial do Python como base
FROM python:latest

# Define um diretório de trabalho no contêiner
WORKDIR /app

# Copie o arquivo requirements.txt para o contêiner
COPY requirements.txt .

# Instale as dependências do projeto
RUN pip install -r requirements.txt

# Copie todos os arquivos do diretório atual para o diretório de trabalho no contêiner
COPY . .

# Exponha a porta em que o aplicativo FastAPI irá rodar (substitua a porta pelo valor correto do seu projeto)
EXPOSE 8000

# Comando para iniciar o servidor FastAPI (substitua "main.py" pelo nome do seu arquivo principal)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]