FROM python:3.13-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos da aplicação
COPY . .

# Expõe a porta que a aplicação vai rodar
EXPOSE 8000

# Comando para iniciar a aplicação quando o container for executado
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]