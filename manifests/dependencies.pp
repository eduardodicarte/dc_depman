class dc_depman::dependencies {
  package { "java-1.6.0-openjdk": 
    ensure => present 
  }

  file_line { 'java_home':
    path => '/etc/bashrc',
    line => 'export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.39.x86_64/',
    require => Package['java-1.6.0-openjdk']
  }
}
