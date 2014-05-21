module SimpleTokenAuthentication
  module Configuration

    mattr_accessor :header_names
    mattr_accessor :sign_in_token
    mattr_accessor :lookup_column

    # Default configuration
    @@header_names = {}
    @@sign_in_token = false
    @@lookup_column = 'email'

    def configure
      yield self if block_given?
    end
  end
end
