class augeas::debian inherits augeas::base {

  package {
    ['augeas-lenses', 'libaugeas0', 'augeas-tools', 'libaugeas-dev']:
      ensure => $augeas::base::version,
      before => File['/usr/share/augeas/lenses'],
  }

  package {'ruby-augeas':
    provider  => gem,
    ensure => $augeas::base::rubylib_version,
  }

}
