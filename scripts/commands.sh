#!/bin/sh

# O shell irá encerrar a execução do script quando um comando falhar
set -e

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
    echo "🟡 Aguardando inicialização POSTGRES ($POSTGRES_HOST $POSTGRES_PORT)..." 
    sleep 2
done

echo "🟢 POSTGRES inicializado com sucesso ($POSTGRES_HOST:$POSTGRES_PORT)"

python manage.py collectstatic --noinput
python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py runserver 0.0.0.0:8000

# Lembrando que ja estamos dentro da pasta djangoapp, por isso aplicamos os comandos acima
# commands vai ser executado toda vez que subira imagem docker, comando: docker compose up