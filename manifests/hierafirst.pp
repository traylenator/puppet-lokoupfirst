class lookupparam::hierafirst {


  $notusedhiera = hiera('lookupparam::notusedhiera',foobar)

  $notusedlookup = lookup('lookupparam::notusedlookup',String,'first',foobar)

  $testparam = lookup('lookupparam::testparam')

  notify{$testparam:}

}
