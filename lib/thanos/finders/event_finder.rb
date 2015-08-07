require 'thanos/api/client'
require 'thanos/response_holder'
require 'thanos/factories/event'

module Thanos
  class EventFinder
    define_method('find_by_name') do |value|
      options = { name: value }
      response = Thanos::API::Client.new.get(:events, options)
      results = Thanos::ResponseHolder.new(response).results
      Thanos::Factory::Event.new(results).build
    end
  end
end