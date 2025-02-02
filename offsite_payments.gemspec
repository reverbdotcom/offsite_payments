$:.push File.expand_path("../lib", __FILE__)
require 'offsite_payments/version'

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'offsite_payments'
  s.version      = OffsitePayments::VERSION
  s.summary      = 'Framework and tools for dealing with offsite (hosted) payment pages.'
  s.description  = 'Offsite Payments is a simple abstraction library used in ' +
                   'and sponsored by Shopify. It is written by Tobias Luetke, ' +
                   'Cody Fauser, and contributors. The aim of the project is ' +
                   'to put as simple an abstraction as possible on top of ' +
                   'offsite (often called hosted) payment pages, and allow ' +
                   'contributors to easily help services such as Shopify ' +
                   'extend the number of offsite payment services they support.'
  s.license      = "MIT"

  s.author = 'Tobias Luetke'
  s.email = 'tobi@shopify.com'
  s.homepage = 'https://github.com/activemerchant/offsite_payments'

  s.files = Dir['CHANGELOG', 'README.md', 'MIT-LICENSE', 'lib/**/*']
  s.require_path = 'lib'

  s.metadata['allowed_push_host'] = "https://rubygems.org"

  unless defined?(Money)
    s.post_install_message = %q{
    In order to use `offsite_payments` gem, you need to either install or add to your Gemfile
    one of the two options for Money gem:
      - `gem 'money'`
      - `gem 'shopify-money', require: 'money'`

    Regardless of which gem you choose, please add them *before* `offsite_payments`.
    For more info, go to https://github.com/activemerchant/offsite_payments#money-gem-dependency

    It's also important to note that all Money object usage inside `offsite_payments` is being
    deprecated. We encourage you to use your own Money object inside your app instead of relying
    on `offsite_payments` doing it for you, e.g. `Money.from_amount(notification.gross)`
    }
  end

  s.add_dependency('activesupport', '>= 5.2.4.3')
  s.add_dependency('i18n', '>= 0.6.6')
  s.add_dependency('builder', '>= 2.1.2', '< 4.0.0')
  s.add_dependency('active_utils', '~> 3.3.0')
  s.add_dependency('nokogiri', ">= 1.11.1")
  s.add_dependency('actionpack', '>= 5.2.3')
  s.add_dependency('actionview','>= 5.1.6.2')

  s.add_development_dependency('rake')
  s.add_development_dependency('test-unit', '~> 3.0')
  s.add_development_dependency('mocha', '~> 1.0')
  s.add_development_dependency('rails', '>= 3.2.14')
  s.add_development_dependency('thor')
  s.add_development_dependency('webmock')
end
