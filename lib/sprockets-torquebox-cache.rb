require 'base64'
module Sprockets
  module Cache
    # Utilites Torquebox Infinispan Cache for Sprocket caching
    #
    #     environment.cache = Torquebox::Infinispan::Cache.new(...)
    #
    class Torquebox
      VERSION = "0.0.3"

      def initialize(cache)
        @cache = cache
      end

      # Lookup value in cache
      def [](key)
        data = @cache.get key
        Marshal.load Base64.decode64(data) if data
      end

      # Save value to cache
      def []=(key, value)
        @cache.put key, Base64.encode64(Marshal.dump(value))
        value
      end
    end
  end
end
