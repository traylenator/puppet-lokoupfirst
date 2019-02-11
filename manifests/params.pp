class lookupparam::params {

  # This line is fine.
  $a = hiera('whatever',['theta'])

  # This line is the breaker if it's the first call.
  # If you do call for $b before $c then everything is okay.
  $c = hiera('lookupparam::whatever',['omega'])

  # This following line is okay.
  $b = lookup('lookupparam::whatever',Array,'unique',['zeta'])


  $testparam = ['alpha']

}
