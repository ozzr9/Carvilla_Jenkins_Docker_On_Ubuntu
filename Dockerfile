# Nginx imajını kullanıyoruz
FROM nginx:latest

# Çalışma dizinini ayarla
WORKDIR /usr/share/nginx/html

# Mevcut dizindeki (proje klasöründeki) tüm dosyaları Nginx'in web köküne kopyala
COPY . .

# Varsayılan olarak Nginx, 80 numaralı portu dinler
EXPOSE 80

# Nginx başlatma komutunu belirt
CMD ["nginx", "-g", "daemon off;"]
