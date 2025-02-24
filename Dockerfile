FROM hashicorp/terraform:latest

# Copiar o script para o container
COPY entrypoint.sh /entrypoint.sh

# Garantir permissões de execução
RUN chmod +x /entrypoint.sh

RUN dos2unix entrypoint.sh

# Definir o diretório de trabalho
WORKDIR /workspace

# Definir o script como entrypoint
ENTRYPOINT ["/entrypoint.sh"]