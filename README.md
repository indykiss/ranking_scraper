Notes: 
Started Nov 3

Project plan:

Scrap the Forbes Global 2000 largest company list CLI: Hi! Welcome to Indy's web scraper of *insert thing being scraped. Please input rank number and I will provide which company (or thing) has that ranking. To add complexity... Would you like to know Forbes's top 100 largest public companies, all of the list, or a specific rank? If top 100, output top 100 If all, output all If rank number, output the company in that rank Notes from Avi's video walkthrough:

Plan project + expected outcome 
Start with project structure. Google is ok. Look at guides and the restaurant example. 
Start with entry point- the file run 
Force that into CLI interface 
Stub out interface M
ake things real Make objects 
Program

How do I want the gem to function?

I want to ask the user which ranking they'd like, then provide the company that fits that ranking
Once I have their input, I match it to the "rank" class then output the company name, "name" class
(For more complexity could also output company's profits OR add more options than just ranking. Can output all the 200 companies or top 100, etc)
Can I do that? Not 100% sure how to connect the exact ranking with the correct company name. Maybe push all companies/ rankings into arrays then output by indexing, ex: rank[input + 1] - company[input + 1].
What classes am I using?

# RankingScraper

Add final project plan here. 

Should in total have:
- Short description
- Install instructions 
- Contributor's guide 
- Link to the license to the code 

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
