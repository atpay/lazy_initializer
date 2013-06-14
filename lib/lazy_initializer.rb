class LazyInitializer
  def initialize(kwargs={})
    kwargs.each do |k,v| 
      singleton_class.class_eval do
        attr_accessor k
      end

      instance_variable_set("@#{k}".to_sym, v)
    end
  end
end
