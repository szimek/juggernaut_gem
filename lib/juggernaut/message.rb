module Juggernaut
  class Message
    attr_accessor :id
    attr_accessor :signature
    attr_accessor :data
    attr_reader   :created_at
    
    def initialize(id, data, signature)
     @id         = id
     @data       = data
     @signature  = signature
     @created_at = Time.now
    end
    
    def to_s
      { :id => @id.to_s, :data => @data, :signature => @signature }.to_json
    end
  end
end
