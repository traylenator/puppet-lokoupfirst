class lookupparam (
  $testparam = lookupparam::params::testparam,
) inherits lookupparam::params {

  notify{$testparam:}

}
