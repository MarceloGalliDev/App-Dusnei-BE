# App-Dusnei-BE

### Docker
> Estrutura
- criamos uma pasta para receber a estrutura Django, pois a pasta raiz é onde estruturaremos os dados de config do Docker

> Build Docker
- docker-compose up --build

> Stop all containers
- docker stop $(docker ps -a -q); 

> Remove all containers
- docker rm $(docker ps -a -q);

> Stop and Remove all containers
- docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

> Remove all images
- docker rmi $(docker images -q);

> Cada vez que alterar dotenv , docker-compose ou Dockerfile
- docker-compose build

> Ligar/Desligar o container
- docker-compose up/down

> Consultar Container
- docker ps


### Django
> Executando Django
- python djangoapp/manage.py {comandos}

> Criando app dentro do docker
- docker-compose run djangoapp python manage.py startapp blog
- docker-compose run djangoapp python manage.py makemigrations

### Comandos GIT
> Iniciando Git
- git init

> Conferindo Branch
- git branch

> Mudando nome do branch para main
- git branch -m main

> Adicionando arquivo
- git add {nome do arquivo} ou . (todos)

> Comitando arquivo
- git commit -m '{texto}'

> Incluíndo repositório
- git remote add origin {link github}
- git push origin main -u (o -u serve para salvar o restante do codigo, na próxima vez que for dar o comando push ele ja sabe que é 'origin main')

### Comandos flake8
 """
    Lista completa de opções e suas descrições
    flake8 --version
    flake8 --help
    flake8 --verbose
    flake8 --quiet
    flake8 --color
    flake8 --count
    flake8 --exclude
    flake8 --filename
    flake8 --stdin-display-name
    flake8 --format
    flake8 --hang-closing
    flake8 --ignore
    flake8 --extend-ignore
    flake8 --per-file-ignores
    flake8 --max-line-length
    flake8 --max-doc-length
    flake8 --indent-size
    flake8 --select
    flake8 --extend-select
    flake8 --disable-noqa
    flake8 --show-source
    flake8 --statistics
    flake8 --require-plugins
    flake8 --enable-extensions
    flake8 --exit-zero
    flake8 --jobs
    flake8 --output-file
    flake8 --tee
    flake8 --append-config
    flake8 --config
    flake8 --isolated
    flake8 --builtins
    flake8 --doctests
    flake8 --include-in-doctest
    flake8 --exclude-from-doctest
    flake8 --benchmark
    flake8 --bug-report
    flake8 --max-complexity
 """

 ### Comandos Terminal
 > criando chave aleatória
 - python -c "import string as s; from secrets import SystemRandom as SR; print(''.join(SR().choices(s.ascii_letters + s.digits + s.punctuation, k=64)));"


### 