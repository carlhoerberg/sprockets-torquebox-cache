module Sprockets
  module Cache
    # Utilites Torquebox Infinispan Cache for Sprocket caching
    #
    #     environment.cache = Torquebox::Infinispan::Cache.new(...)
    #
    class Torquebox
      VERSION = "0.0.1"

      def initialize(cache)
        @cache = cache
      end

      # Lookup value in cache
      def [](key)
        @cache.get path_for(key)
      end

      # Save value to cache
      def []=(key, value)
        @cache.put key, value
        value
      end
    end
  end
end
