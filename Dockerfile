# Imagem base com PHP e Apache
FROM php:8.1-apache

# Instala extensões do PHP necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia o código do ChurchCRM para o Apache
COPY . /var/www/html/

# Ajusta permissões
RUN chown -R www-data:www-data /var/www/html

# Expõe a porta padrão do Apache
EXPOSE 80

# Comando padrão
CMD ["apache2-foreground"]
