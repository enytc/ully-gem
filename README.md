# Ully [![Build Status](https://secure.travis-ci.org/ullyin/ully-gem.png?branch=master)](http://travis-ci.org/ullyin/ully-gem) [![GEM version](https://badge-me.herokuapp.com/api/gem/ully.png)](http://badges.enytc.com/for/gem/ully)

> Ruby Gem for abstracting the use of Ully API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ully'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install ully
```

## Getting Started

```ruby
require "ully"
# Create new instance of Ully
api = Ully::Client.new("access_token")
```

## Documentation

#### #stats(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `stats` method is responsible for showing statistics of Ully

How to use this method

```ruby

api.stats("yaml")
```

#### #status(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `status` method is responsible for showing status of the api

How to use this method

```ruby

api.status("yaml")
```

#### #account(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `account` method is responsible for showing profile info

How to use this method

```ruby

api.account("yaml")
```

#### #collections(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `collections` method is responsible for list all collections

How to use this method

```ruby

api.collections("yaml")
```

#### #create_collection(name, slug, public_collection, format=false)


**Parameter**: `name`
**Type**: `String`
**Example**: `My Favorites`


**Parameter**: `slug`
**Type**: `String`
**Example**: `favorites`


**Parameter**: `public_collection`
**Type**: `Boolean`
**Example**: `true`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `create_collection` method is responsible for create a new collection

How to use this method

```ruby

api.create_collection("name", "slug", true, "yaml")
```

#### #add_url(collection_slug, url, title="", description="", format=false)


**Parameter**: `collectionSlug`
**Type**: `String`
**Example**: `favorites`


**Parameter**: `title`
**Type**: `String`
**Example**: `Title of url`


**Parameter**: `url`
**Type**: `String`
**Example**: `http://example.com`


**Parameter**: `description`
**Type**: `String`
**Example**: `My example page`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `add_url` method is responsible for create a new url

How to use this method

```ruby

api.add_url("collection_slug", "http://example.com", "Title of url", "My example page", "yaml")
```

#### #shortened_urls(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `shortened_urls` method is responsible for list all shortened urls

How to use this method

```ruby

api.shortened_urls("yaml")
```

#### #shorten_url(url, shortcode="", password="", format=false)


**Parameter**: `url`
**Type**: `String`
**Example**: `http://example.com/pages/about/ully`


**Parameter**: `shortcode`
**Type**: `String`
**Example**: `ully`


**Parameter**: `password`
**Type**: `String`
**Example**: `12345678`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `shorten_url` method is responsible for shorten urls

How to use this method

```ruby

api.shorten_url("http://example.com/pages/about/ully", "ully", "12345678", "yaml")
```

## Contributing

1. Fork it [ullyin/ully-gem](https://github.com/ullyin/ully-gem/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Support
If you have any problem or suggestion please open an issue [here](https://github.com/ullyin/ully-gem/issues).

## License

The BSD License

Copyright (c) 2014, EnyTC Corporation

All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this
  list of conditions and the following disclaimer in the documentation and/or
  other materials provided with the distribution.

* Neither the name of the EnyTC Corporation nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES
LOSS OF USE, DATA, OR PROFITS OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

