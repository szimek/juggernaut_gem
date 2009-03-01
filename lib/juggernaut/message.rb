module Juggernaut
  class Message
    attr_accessor :id
    attr_accessor :signature
    attr_accessor :data
    attr_accessor :channel
    attr_reader   :created_at
    
    
    def initialize(id, data, signature, channel=nil)
     @id         = id
     @data       = data
     @signature  = signature
     @channel    = channel
     @created_at = Time.now      
    end
    
    def to_s
      { :id => @id.to_s, :data => @data, :signature => @signature, :channel => @channel }.to_json
    end
  end
end
