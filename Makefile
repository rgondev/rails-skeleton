build:
  docker build --build-arg RUBY_VERSION=${ruby_version} -t ${project_name}:${ruby_version} .

project:
  docker compose run --service-ports --rm web rails new . --name=${project_name}
