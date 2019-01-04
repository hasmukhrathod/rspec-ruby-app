require 'account/account'

RSpec.describe Account do
  describe "#current_balance" do
    context "While opening a new account, balance should be zero" do
      let(:account) {Account.new}
      subject {account.current_balance}
      it 'should have balance 0' do
        should eq(0)
      end
    end
    context "Open an account with 1000" do
      let(:account) {Account.new(balance: 1000)}
      subject {account.current_balance}
      it 'should have balance 1000' do
        should eq(1000)
      end
    end
  end
  describe '#transaction' do
    let(:account) {Account.new}
    it "should add balance to current amount" do
      #should eq(account.transaction(type: 'deposite',amount: 1000))
      expect(account.transaction(type: 'deposite', amount: 500)).to eq(500)
      expect(account.transaction(type: 'withdrawn', amount: 500)).to eq(0)
      expect(account.transaction(type: 'withdrawn', amount: 500)).to be_nil
    end
    
    
  end
  
end
