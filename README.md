# php_restaurante
Sistema de Gerenciamento de Restaurates em PHP

Requisitos para o funcionamento do script: Não tem como garantir o funcionamento fora desses requisitos abaixo: •Servidor Linux com cPanel da (cpanel.net) •PHP 5.4, 5.5, 5.6 ou superior •MySQL •Apache •phpMyAdmin

Instruções

Altere o arquivo database.php dentro da pasta app/config/database.php

As linhas 15, 16, 17 e 18 conforme abaixo.

$db['default']['hostname'] = 'localhost';
$db['default']['username'] = 'root';
$db['default']['password'] = '';
$db['default']['database'] = 'nome_do_banco';

Apos isto, abra o navegador localhost/phpmyadmin

digite um nome do banco para criar nome_do_banco

Clique em importar, clique em  escolher e selecione o arquivo banco_de_dados.sql que foi enviado junto no anexo.
