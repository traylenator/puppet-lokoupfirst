class lookupparam::lookupfirst {

  $notusedlookup = lookup('lookupparam::notusedlookup',String,'first',foobar)

  $notusedhiera = hiera('lookupparam::notusedhiera',foobar)

  $testparam = lookup('lookupparam::testparam')

  notify{$testparam:}

}
