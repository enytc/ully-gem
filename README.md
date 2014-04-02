# Ully [![Build Status](https://secure.travis-ci.org/enytc/ully-gem.png?branch=master)](http://travis-ci.org/enytc/ully-gem) [![GEM version](https://badge-me.herokuapp.com/api/gem/ully.png)](http://badges.enytc.com/for/gem/ully)

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

#### #login(email, password)


**Parameter**: `email`
**Type**: `String`
**Example**: `example@example.com`


**Parameter**: `password`
**Type**: `String`
**Example**: `123456test`


The `login` method is responsible to login in accounts

How to use this method

```ruby

api.login("email", "123456test")
```

#### #logged_in?

The `logged_in?` method is responsible to check if user is logged in

How to use this method

```ruby

api.logged_in?
```

#### #signup(name, email, username, password, format=false)


**Parameter**: `name`
**Type**: `String`
**Example**: `myname`


**Parameter**: `email`
**Type**: `String`
**Example**: `example@example.com`


**Parameter**: `username`
**Type**: `String`
**Example**: `myusername`


**Parameter**: `password`
**Type**: `String`
**Example**: `123456test`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `signup` method is responsible for create accounts

How to use this method

```ruby

api.signup("myname", "email", "myusername", "123456test", "yaml")
```

#### #forgot(email, username, format=false)


**Parameter**: `email`
**Type**: `String`
**Example**: `example@example.com`


**Parameter**: `username`
**Type**: `String`
**Example**: `myusername`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `forgot` method is responsible for reset passwords

How to use this method

```ruby

api.forgot("example@example.com", "myusername", "yaml")
```

#### #stats(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `stats` method is responsible for showing statistics of Ully

How to use this method

```ruby

api.stats("yaml")
```

#### #stats_by_username(username, format=false)


**Parameter**: `username`
**Type**: `String`
**Example**: `myusername`


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `stats` method is responsible for showing statistics of Ully

How to use this method

```ruby

api.stats("myusername", "yaml")
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

#### #me(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `me` method is responsible for showing profile info

How to use this method

```ruby

api.me("yaml")
```

#### #update_me(current_password, name="", email="", username="", password="", format=false)


**Parameter**: `current_password`
**Type**: `String`
**Example**: `123456test`


**Parameter**: `name`
**Type**: `String`
**Example**: `myname`


**Parameter**: `email`
**Type**: `String`
**Example**: `example@example.com`


**Parameter**: `username`
**Type**: `String`
**Example**: `myusername`


**Parameter**: `password`
**Type**: `String`
**Example**: `123456test`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `update_me` method is responsible for update profile info

How to use this method

```ruby

api.update_me("123456test", "myname", "email", "myusername", "123456test", "yaml")
```

#### #delete_me(format=false)


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `delete_me` method is responsible for delete profile info

How to use this method

```ruby

api.delete_me("yaml")
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

#### #collections_by_username(username, format=false)


**Parameter**: `username`
**Type**: `String`
**Example**: `myusername`


**Parameter**: `format`
**Type**: `String`
**Example**: `"yaml"`


The `collections_by_username` method is responsible for list all collections of a specific user

How to use this method

```ruby

api.collections_by_username("username", "yaml")
```

#### #create_collections(name, slug, public_collection, format=false)


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


The `create_collections` method is responsible for create a new collection

How to use this method

```ruby

api.create_collections("name", "slug", true, "yaml")
```

#### #update_collections(collection_slug, name="", slug="", public_collection=true, format=false)


**Parameter**: `collection_slug`
**Type**: `String`
**Example**: `favorites`


**Parameter**: `name`
**Type**: `String`
**Example**: `My Favorites`


**Parameter**: `slug`
**Type**: `String`
**Example**: `myfavorites`


**Parameter**: `public_collection`
**Type**: `Boolean`
**Example**: `true`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `update_collections` method is responsible for update a specific collection

How to use this method

```ruby

api.update_collections("collection_slug", "name", "slug", true, "yaml")
```

#### #delete_collections(collection_slug, format=false)


**Parameter**: `collectionSlug`
**Type**: `String`
**Example**: `favorites`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `delete_collections` method is responsible for delete a specific collection

How to use this method

```ruby

api.delete_collections("collection_slug", "yaml")
```

#### #create_urls(collection_slug, url, title, description)


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


The `create_urls` method is responsible for create a new url

How to use this method

```ruby

api.create_urls("collection_slug", "http://example.com", "Title of url", "My example page", "yaml")
```

#### #update_urls(collection_slug, url_id, url, title="", description="", format=false)


**Parameter**: `collection_slug`
**Type**: `String`
**Example**: `favorites`


**Parameter**: `url_id`
**Type**: `String`
**Example**: `url_id`


**Parameter**: `url`
**Type**: `String`
**Example**: `http://example.com`


**Parameter**: `title`
**Type**: `String`
**Example**: `Title of url`


**Parameter**: `description`
**Type**: `String`
**Example**: `My example page`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `update_urls` method is responsible for update a specific url

How to use this method

```ruby

api.update_urls("collection_slug", "url_id", "Title of url", "http://example.com", "My example page", "yaml")
```

#### #delete_urls(collection_slug, url_id)


**Parameter**: `collectionSlug`
**Type**: `String`
**Example**: `favorites`


**Parameter**: `urlid`
**Type**: `String`
**Example**: `urlid`


**Parameter**: `format`
**Type**: `String`
**Example**: `yaml`


The `delete_Urls` method is responsible for delete a specific url

How to use this method

```ruby

api.delete_urls("collection_Slug", "url_id")
```

## Contributing

1. Fork it [enytc/ully-gem](https://github.com/enytc/ully-gem/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Support
If you have any problem or suggestion please open an issue [here](https://github.com/enytc/ully-gem/issues).

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

