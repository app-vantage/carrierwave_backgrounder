require 'active_support/core_ext/object'
require 'backgrounder/orm/base'
require 'backgrounder/delay'

module CarrierWave
  module Backgrounder
    include ORM::Base

    def self.configure
      yield self
    end

  end
end

require 'backgrounder/railtie' if defined?(Rails)
