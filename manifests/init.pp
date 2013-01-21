class augeas {
  $subclass = $::operatingsystem ? {
    /RedHat|CentOS|Fedora/    => "augeas::redhat",
    /Debian|Ubuntu|kFreeBSD/  => "augeas::debian",
    default                   => "augeas::base",
  }
  class {$subclass: }  
  anchor { 'augeas::end':
    require => Class[$subclass],
  }  
}
