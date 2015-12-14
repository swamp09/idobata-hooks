require 'rspec/its'
require 'rack'
require 'active_support/core_ext/string/strip'
require 'active_support/core_ext/hash/conversions'
require 'linguist'
require 'tapp'
require 'pry'
require 'coveralls'
require 'rack/test'
require 'webmock'
require 'vcr'

Coveralls.wear!

require 'idobata/hooks'

Dir[Idobata::Hook.root.join('../spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include HookHelper, type: :hook
  config.include Rack::Test::Methods, type: :app
end

Idobata::Hook.load!
