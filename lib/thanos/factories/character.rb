require 'thanos/resources/character'

module Thanos
  module Factory
    class Character
      def initialize(results)
        @results = results
      end

      def build
        Thanos::Character.new
      end
    end
  end
end
