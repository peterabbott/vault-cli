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

  desc 'ci', 'CI Tasks'
  def ci
    invoke "rubocop"
    invoke "foodcritic"
  end

  desc 'publish', 'Publish cookbook to supermarket.getchef.com'
  method_options 'username' => :string, :required => true, :desc => 'Chef Supermarket username'
  method_options 'client_pem' => :string, :required => true, :desc => 'Path to client.pem associated with Chef Supermarket'
  def publish
    # invoke "ci"
    require 'stove/cli'
    # Make sure that the VERSION file exists and is accurate.
    ThorSCMVersion::Tasks.new.current

    unless options['client_pem']
      say '--client_pem is required', :red
      exit 20
    end

    stove_opts = [
      '--no-git',
      '--username',
      options['username'],
      '--key',
      options['client_pem']
    ]
    Stove::Cli.new(stove_opts).execute!
  end
end
