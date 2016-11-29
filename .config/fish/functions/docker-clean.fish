function docker-clean
  docker rm (docker ps -q -f 'status=exited')
  docker rmi (docker images -q -f "dangling=true")
  docker volume rm (docker volume ls -qf dangling=true)
end
