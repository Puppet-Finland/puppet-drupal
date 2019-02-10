# Override Nginx configuration for Drupal sites
#
# @summary 
#
# @example
#   include drupal::nginx_config
class drupal::nginx_config (
  String  $set_real_ip_from = '0.0.0.0/32',
  String  $real_ip_header = 'X-Forwarded-For',
)
{

  File {
    user => 'root',
    group => 'root',
    permissions => '0644',
  }

  file {'/etc/nginx/nginx.conf':
    content => template('drupal/nginx/nginx.conf.erb')
  }
  file {'/etc/nginx/fastcgi.conf':
    content => template('drupal/nginx/fastcgi.conf.erb')
  }
  file {'/etc/nginx/upstream_phpcgi_unix.conf':
    content => template('drupal/nginx/upstream_phpcgi_unix.conf.erb')
  }

  file {'/etc/nginx/dh_param.pem':
    source => 'puppet:///modules/drupal/nginx/dh_param.pem.erb'
  }
  file {'/etc/nginx/map_block_http_methods.conf':
    source => 'puppet:///modules/drupal/nginx/map_block_http_methods.conf.erb'
  }
  file {'/etc/nginx/mime.types':
    source => 'puppet:///modules/drupal/nginx/mime.types.erb'
  }
  file {'/etc/nginx/apps/drupal/map_cache.conf':
    source => 'puppet:///modules/drupal/nginx/drupal/map_cache.conf'
  }

  file {'/etc/nginx/sites-enabled/000-default-site':
    content => template('drupal/nginx/site/000-default-site.erb')
  }
  file {'/etc/nginx/apps/drupal/drupal.conf':
    content => template('drupal/nginx/drupal/drupal.conf.erb')
  }
  file {'/etc/nginx/apps/drupal/fastcgi_drupal.conf':
    content => template('drupal/nginx/drupal/fastcgi_drupal.conf.erb')
  }
  file {'/etc/nginx/apps/drupal/fastcgi_noargs_drupal.conf':
    content => template('drupal/nginx/drupal/fastcgi_noargs_drupal.conf.erb')
  }
  file {'/etc/nginx/apps/drupal/microcache_fcgi.conf':
    content => template('drupal/nginx/drupal/microcache_fcgi.conf.erb')
  }

}
