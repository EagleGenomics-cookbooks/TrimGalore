name 'TrimGalore'
maintainer 'Eagle Genomics'
maintainer_email 'chef@eaglegenomics.com'
license 'apache2'
description 'Installs/Configures TrimGalore'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.2'

depends 'build-essential'
depends 'magic_shell'
depends 'FastQC'
depends 'cutadapt'
