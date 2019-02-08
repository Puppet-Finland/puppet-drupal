
# drupal

Welcome to your new module. A short overview of the generated parts can be found in the PDK documentation at https://puppet.com/pdk/latest/pdk_generating_modules.html .

The README template below provides a starting point with details about what information to include in your README.

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with drupal](#setup)
    * [What drupal affects](#what-drupal-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with drupal](#beginning-with-drupal)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Description

This module installs and configures Drupal sites on Nginx and PHP-FPM. Nginx configuration is based on https://github.com/perusio/drupal-with-nginx

## Setup

### What drupal affects **OPTIONAL**

Nginx module should _not_ manage Nginx configuration at all. This module will override the global nginx.conf file, among other Nginx configuration files.

Drupal sites will be installed to /var/www/site_name/.

### Setup Requirements **OPTIONAL**

Required modules: `puppetfinland/nginx` and `puppet/php`

Required configuration for puppetfinland/nginx module:

`nginx::manage_config: false`



## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should consider using changelog). You can also add any additional sections you feel are necessary or important to include here. Please use the `## ` header.
