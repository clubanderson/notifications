class notifyme (
  $text        = $notifyme::params::text,
  $method      = $notifyme::params::method,
) inherits notifyme::params {

  validate_string($text)
  validate_string($method)

  anchor { 'notifyme::begin': } ->
  class { '::notifyme::install': } ->
  class { '::notifyme::config': } ~>
  class { '::notifyme::service': } ->
  anchor { 'notifyme::end': }

}
