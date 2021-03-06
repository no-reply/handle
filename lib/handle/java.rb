require 'java'
# Load all jarfiles in $HDL_HOME/lib
Dir[File.join(Handle::HOME,'lib','*.jar')].each { |f| require f }

module Handle
  module Java
    module Native
      java_import     'net.handle.hdllib.HandleException'
      java_import     'net.handle.hdllib.HandleValue'
      java_import     'net.handle.api.HSAdapter'
      java_import     'net.handle.api.HSAdapterFactory'
    end
  end
end

require 'handle/java/connection'
require 'handle/java/persistence'
