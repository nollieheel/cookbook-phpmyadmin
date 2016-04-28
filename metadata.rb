name             'cookbook-phpmyadmin'
maintainer       'Earth U'
maintainer_email 'iskitingbords@gmail.com'
license          'Apache License'
description      'Installs/Configures cookbook-phpmyadmin'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/nollieheel/cookbook-phpmyadmin'
issues_url       'https://github.com/nollieheel/cookbook-phpmyadmin/issues'
version          '0.1.0'

depends 'tar', '~> 0.7.0'

supports 'ubuntu', '>= 14.04'
