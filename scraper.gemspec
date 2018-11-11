require_relative "./lib/ranking_scraper/version.rb"
require 'nokogiri'


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ranking_scraper"
  spec.version       = RankingScraper::VERSION
  spec.authors       = ["'Indira Kissoondyal'"]
  spec.email         = ["'indirak@alumni.princeton.edu'"]

  spec.summary       = %q{Scraping a book site.}
  spec.description   = %q{Scraping a test book site for name, price, and availability.}
  spec.homepage      = "https://github.com/indykiss/ranking_scraper"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/indykiss/ranking_scraper"
  #idk what this is so comment out  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "HTTPARTY"
end
