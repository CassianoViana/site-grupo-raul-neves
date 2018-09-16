cd grn &&

npm install &&

node_modules/nuxt/bin/nuxt generate &&

cd .. &&

docker build -t app:1.0.0 . &&

docker run -p 8081:80 app:1.0.0 
