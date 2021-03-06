module Fastr
  class Controller
    attr_accessor :env, :params
    
    include Fastr::Template
    include Fastr::Deferrable
    
    def self.inherited(kls)
      kls.instance_eval('include Fastr::Log')
    end
  end
end