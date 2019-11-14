
# RankingScraper

This web scraper scrapes the top 50 books on the https://thegreatestbooks.org/ and presents the titles and ranks to the user. There is a command line interface where the the user can select a rank (1 -50) and then be provided the title and a short description of the book. 
The user can continue selecting ranks to get more book titles and descriptions infinitely, until they type exit. 

## Tech/framework used

Built with: Ruby, Nokogiri and HTTParty for web scraping and parsing data. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ranking_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ranking_scraper

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'indykiss'/ranking_scraper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RankingScraper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'indykiss'/ranking_scraper/blob/master/CODE_OF_CONDUCT.md).
