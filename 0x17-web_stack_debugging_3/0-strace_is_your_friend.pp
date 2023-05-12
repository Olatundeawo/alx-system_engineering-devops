# A puppet file that fix 500 error

exec { 'delete a letter':
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => '/bin';
}
