apt-get install docker docker.io &&

cd grn &&

nuxt generate &&

cd .. &&

docker build -t app:1.0.0 . &&

docker run -p 8080:80 app:1.0.0 