
$:.unshift "../lib"
require "juggernaut"
require "test/unit"
require "shoulda"
require "mocha"

class TestMessage < Test::Unit::TestCase
  
  context "Message" do
    
    setup do
      @msg = Juggernaut::Message.new(1, "A pre-determined message body", "a81fef13919", "test_channel")
      assert_not_nil @msg
    end
    
    should "generate valid JSON" do
      obj = {"signature" => "a81fef13919", "data" => "A pre-determined message body", "id" => "1", "channel" => "test_channel"}
      assert_nothing_raised do
        assert_equal obj, JSON.parse(@msg.to_s)
      end
    end
    
  end
  
end
