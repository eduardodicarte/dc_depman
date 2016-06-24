class dc_depman::maven::install {
  archive { '/tmp/apache-maven-3.3.9-bin.tar.gz':
    ensure        => present,
    extract       => true,
    extract_path  => '/opt/',
    source        => 'https://archive.apache.org/dist/maven/maven-3/3.0.4/binaries/apache-maven-3.0.4-bin.tar.gz',
    checksum      => 'e513740978238cb9e4d482103751f6b7',
    checksum_type => 'md5',
    cleanup       => false
  }

  file_line { 'm2_home':
    path => '/etc/bashrc',
    line => 'export M2_HOME=/opt/apache-maven-3.3.9'
  }

  file_line { 'm2_home_path':
    path  => '/etc/bashrc',
    line  => 'export PATH=$PATH:$M2_HOME/bin',
  }
}
