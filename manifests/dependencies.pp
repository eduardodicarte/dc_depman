class dc_depman::dependencies {
  package { "java-1.6.0-openjdk-devel": 
    ensure => present 
  }

  file_line { 'java_home':
    path => '/etc/bashrc',
    line => 'export JAVA_HOME=/etc/alternatives/jre_1.6.0_openjdk',
    require => Package['java-1.6.0-openjdk-devel']
  }
}
