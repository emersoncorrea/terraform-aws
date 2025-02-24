Projeto Terraform AWS

Este projeto demonstra a criação de uma instância basica EC2 na AWS utilizando Terraform.

Tecnologias Utilizadas

Terraform
Docker e Docker Compose - Para execução do ambiente

AWS - Provedor de infraestrutura


Estrutura do Projeto:
/
|-- infra/
|   |-- main.tf             # Definição da infraestrutura AWS
|   |-- user_data.sh        # Script de inicialização da instância EC2
|-- docker-compose.yml      # Configuração do ambiente Docker
|-- Dockerfile             # Construção da imagem Terraform
|-- entrypoint.sh          # Script de inicialização do contêiner
|-- README.md              # Documentação do projeto

Configuração da Infraestrutura

O arquivo main.tf define os seguintes recursos:

aws_security_group.securitygroup:

Permite tráfego HTTP (porta 80)

Permite conexões SSH (porta 22)

Permite tráfego de saída irrestrito

aws_instance.servidor:

Instância EC2 baseada na AMI ami-0c101f26f147fa7fd

Tipo de instância: t2.nano

Carrega um script de inicialização user_data.sh

Execução do Projeto

1. Configurar Credenciais AWS

Certifique-se de ter um par de chaves de acesso configurado. Substitua AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY no docker-compose.yml pelas suas credenciais.

2. Construir e Subir o Contêiner

docker-compose up --build

Este comando irá:

Construir a imagem Docker do Terraform

Criar e rodar um contêiner com as configurações necessárias

Executar automaticamente os comandos terraform init, terraform plan e terraform apply

3. Destruir a Infraestrutura

Não esqueça de remover os recursos criados, edite entrypoint.sh e descomente a linha:

# terraform destroy -auto-approve

Em seguida, rode novamente o contêiner.

Observação

Certifique-se de que sua conta AWS permite a criação de instâncias EC2.

O uso inadequado pode gerar custos na AWS.

Autor
Emerson Correa
