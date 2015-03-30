# Personal Puppet module for Boxen

Forked from https://github.com/sergiobuj/puppet-sergiobuj

A personal Puppet module is a great way to keep Boxen clean from many
pesonal manifests.
This means that adding a personal configuration is done by adding the module in
the `Puppetfile`.

```
github "buritica", "1.0.0", :repo => "buritica/puppet-buritica"
```

## Tags

Remember to tag the version so that you can use it later in the `Puppetfile`.

```
git tag 1.0.0
git push --tags
```

## Get your own

Get the puppet-template from https://github.com/boxen/puppet-template and start
making your own Puppet module.

## Required Puppet Modules

* `boxen`

