name             'vault-cli'
maintainer       'Peter Abbott'
maintainer_email 'peter@piemanpete.com'
license          'All rights reserved'
description      'Installs/Configures vault-cli'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

if File.exist?(File.join(File.dirname(__FILE__), 'VERSION'))
  version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))
else
  version '0.0.1'
end

depends 'ark'
depends 'java'

%w(ubuntu, centos).each do |os|
  supports os
end

sugggests 'windows'
