# Main class for drupal module
#
# Installs basic configuration changes common for all drupal instances
#
class drupal (
  Boolean $manage_nginx_config = true,
) {
  require nginx

  if ($manage_nginx_config) {
    include drupal::nginx_config
  }
}
