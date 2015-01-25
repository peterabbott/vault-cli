# encoding: utf-8

require 'bundler'
require 'bundler/setup'
require 'berkshelf/thor'
require 'foodcritic'
require 'thor'
require 'thor/rake_compat'
require 'thor/scmversion'

class Default < Thor
  include Thor::RakeCompat

  desc 'foodcritic', 'Lint Chef cookbooks'
  def foodcritic
    FoodCritic::Rake::LintTask.new
    say 'Running foodcritic...', :white
    Rake::Task['foodcritic'].execute
  end

  desc 'rubocop', 'Run Rubocop on all Ruby files'
  def rubocop
    say 'Performing linting and style checking with rubocop...', :white
    success = system 'rubocop'
    exit(10) unless success
  end

   desc 'kitchen', 'Run test-kitchen'
  def kitchen
    # TODO
  end
end
