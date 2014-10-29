class pgsqldpf::install  {
    
  package { "gzip": ensure => present }
  
 
    file { ["/tmp/loyalty.sql"]: # create script sql from template
    ensure  => present,
    content => template("pgsqldpf/loyalty.sql"),
    owner   => 'postgres'
  }

  exec { "Import_data":
    command => "/etc/init.d/postgresql start  && psql -f /tmp/loyalty.sql loyaltyweb",
    path    => "/usr/local/bin/:/bin/:/usr/sbin/:/usr/bin",
    require => [Package['postgresql-9.3'], Package['gzip'],File['/tmp/loyalty.sql']],
    user    => "postgres"
  }

 

}
