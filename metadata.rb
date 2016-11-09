maintainer       'Klinche, Inc.'
maintainer_email 'dbrooks@klinche.com'
name             'OpsWorks'
license          'All rights reserved'
description      'Installs/Configures Klinche'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe 'OpsWorks::deploy', 'Creates and sets up the release directory'
recipe 'OpsWorks::base_package_install', 'Sets up all the packages needed for our OpsWorks'
recipe 'OpsWorks::php', 'Sets up php for our OpsWorks.'
recipe 'OpsWorks::elasticsearch', 'Sets up elasticsearch for our OpsWorks.'

depends 'swap'
depends 'supervisor'
depends 'php'
depends 'hostsfile'
depends 'apache2'
depends 'apt'
depends 'nodejs'
depends 'elasticsearch'
depends 'deploy'
depends 'apache2'
depends 'hostsfile'
depends 'supervisor'
depends 'rsyslog'