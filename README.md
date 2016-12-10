# Installation
git clone git@github.com:ismailmechbal/ob_rake.git && cd ob_rake
rake install

# Configuration

1. Create a Rakefile inside the project you want to run the preconfigured ob_rake tasks and insert into:

spec = Gem::Specification.find_by_name 'ob_rake'
load "#{spec.gem_dir}/lib/ob_rake.rb"

2. "rake -T" to get a list of available rake tasks