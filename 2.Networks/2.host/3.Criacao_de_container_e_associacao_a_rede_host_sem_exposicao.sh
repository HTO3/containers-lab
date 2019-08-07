### Demo Setup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

#Firing up a Nginx without exposing to the host by using the host network

clear >$(tty)

printf " \ndocker \n"
printf " run                                                          ${GREEN} # Sobe um novo Container${NC}\n"
printf " -d                                                           ${GREEN} # 'Desatacha' o Terminal do Container, retornando ao Host${NC}\n"
printf " --name container_3                                           ${GREEN} # Determina o ID do Container${NC}\n"
printf " --hostname container_3                                       ${GREEN} # Determina o nome do Host no Container${NC}\n"
printf " --network host                                               ${GREEN} # Conecta o Container na rede do Host${NC}\n"
printf " -v $(pwd)/container_3.html:/usr/share/nginx/html/index.html  ${GREEN} # Faz o mapeamento do arquivo './container_3.html' do Host para o arquivo index.html padrão do Nginx${NC}\n"
printf " nginx                                                        ${GREEN} # Imagem composta por REPOSITORY:TAG${NC}\n\n"

printf "docker run -d --name container_3 -h container_3 --network host -v $(pwd)/container_3.html:/usr/share/nginx/html/index.html nginx"

docker run -d --name container_3 -h container_3 --network host -v $(pwd)/container_3.html:/usr/share/nginx/html/index.html nginx