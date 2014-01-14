# Bosh::Manifests

# Usecases

## Bosh-release repo
_bosh make manifest:_
Will create a manifest for the targeted bosh (using the correct infrastructure)

## Bosh-manifests repo
make manifests from the stubs inside the repo.
Have some sort of `Gemfile` to specify the del

## Installation

Add this line to your application's Gemfile:
```
gem 'bosh-manifests'
```

And then execute:
```
$ bundle
```

Or install it yourself as:
```
$ gem install bosh-manifests
```

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## To Be Implmeneted:

```
bosh deployment
1) Prod2
2) Prod3

bosh deployment deployment/prod2.yml
# Deployment set to prod2.yml
# By using .deployment/prod2.yml

bosh prepare deployment
# resolve external templates
# build manifest
# resolve/upload stemcell
# resolve/upload release

bosh deploy
```
