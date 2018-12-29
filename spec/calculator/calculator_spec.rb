require 'calculator/calculator'

RSpec.describe Calculator do
  context "Test Sum of Numbers" do
    let(:inst_obj_calculator) {Calculator.new}
    
    describe "#addition" do
      it '2+2 should not return 5' do
        expect(inst_obj_calculator.addition(2,2)).not_to eq(5)
      end
      it '2+3 should return 5' do
        expect(inst_obj_calculator.addition(2,3)).to eq(5)
      end
      it '2+3+7 should return 12' do
        expect(inst_obj_calculator.addition(2,3,7)).to eq(12)
      end
      it '2-1+4-5 should return 0' do
        expect(inst_obj_calculator.addition(2,-1,4,-5)).to eq(0)
      end
    end
  end
end