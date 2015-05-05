# Markdownplus::Webshots

[Webshot](https://github.com/vitalie/webshot) plugin for [Markdownplus](https://github.com/cpetersen/markdownplus). Allows for dynamically updatable screenshots of webpages, directly from markdown.

## Installation

Add this line to your application's Gemfile:

    gem 'markdownplus-webshots'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markdownplus-webshots

## Usage

The following embeds a screen shot of google.com into the current markdown file.

```
  ```webshot("http://www.google.com")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
