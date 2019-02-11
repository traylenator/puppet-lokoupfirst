Simple module test case to trigger bug which is fairly
hard to trigger.

In a nutshell if the first lookup on a module space e.g
`foobar::whatever` is done with the `hiera` function and not the
`lookup` function then a `lookup_options` for all variables on the
`foobar` name space which were in the module level data are never loaded.

This example module shows two manifests `hierafirst` and `lookupfirst`
In both cases they should merge data from both the module level data
and general data. In the `hierafirst` only the general level data is loaded.
