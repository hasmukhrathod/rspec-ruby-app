require 'factorial/factorial'

RSpec.describe Factorial do
  let(:inst_obj_factorial) {Factorial.new}
  describe "#get_factorial" do
    it 'factorial of 5 should be 120' do
      expect(inst_obj_factorial.get_factorial(number: 5)).to eq(120)
    end
  end
end