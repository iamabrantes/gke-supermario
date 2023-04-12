Docker & Kubernetes
https://hub.docker.com/r/bharathshetty4/supermario

1-Criar o projeto
2-Fazer o download do repositório do git "git clone https://github.com/iamabrantes/gke-supermario.git"
3-IAM->service accounts-crie o usuário terraform com permissões de dono-> acessar o usuário e criar uma chave em formato JSON-> renomear o arquivo baixado para credentials.json
e adicionar dentro do repositorio do git que foi clonado
4-Abrir o nosso VSCode e dar o comando "export GOOGLE_APPLICATION_CREDENTIALS=./credentials.json" para que as credenciais sejam utilizadas
5-Habilitar o kubernetes engine no projeto da gcp
6-Alterar o nome do projeto dentro do arquivo main.tf - linha 2
7-terraform apply -auto-approve    -geralmente leva 5 minutos para subir esse cluster
8-Acessar através da console a conexão do cluster e copiar os dois manifestos do kubernetes para dentro do cli

O arquivo relacionado ao provisionamento pode ser utilizado para qualquer laboratório, o exemplo do jogo do supermario é apenas um para ter ideia de como o kubernetes funciona
