require 'factorial/factorial'

RSpec.describe Factorial do
  let(:inst_obj_factorial) {Factorial.new}
  describe "#get_factorial" do
    it 'factorial of negative no is nil' do
      expect(inst_obj_factorial.get_factorial(number: -2)).to be_nil
    end
    it 'factorial of 5 should be 120' do
      expect(inst_obj_factorial.get_factorial(number: 5)).to eq(120)
    end
    it 'factorial of 6 should not be 120' do
      expect(inst_obj_factorial.get_factorial(number: 6)).not_to eq(700)
    end
  end
end