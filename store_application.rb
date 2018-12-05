class StoreApplication
  #   Custom Singleton example
  class << self
    def config
      unless @instance
        puts 'loading files...'
        puts self.class
        require_relative 'string'
        require_relative 'item_container'
        require_relative 'item'
        require_relative 'virtual_item'
        require_relative 'real_item'
        require_relative 'antique_item'
        require_relative 'cart'
        require_relative 'order'
      end
      @instance ||= self # instance variable
    end

    attr_accessor :name, :environment

    def admin
      @instance ||= Admin.new(&block)
    end

    class Admin
      class << self
        def new
          unless @instance
            yield
          end
          @instance ||= self
        end
      end
    end
  end
end
