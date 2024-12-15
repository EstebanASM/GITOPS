# Usamos una imagen base de Nginx
FROM nginx:alpine

# Copiamos el archivo index.html al directorio de Nginx que sirve archivos
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80
EXPOSE 80

# Iniciamos Nginx cuando el contenedor se ejecute
CMD ["nginx", "-g", "daemon off;"]
