require 'basic/greeting'

RSpec.describe Greeting do
  context "Lets begin with Rspec" do
    let(:greeting) { Greeting.new }
    it "#say_hello should return hello string" do
      expect(subject.say_hello).to eq("Hello")
    end
  end
end