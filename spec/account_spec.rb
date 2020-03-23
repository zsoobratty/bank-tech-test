require 'account'

describe Account do
  let (:account) { Account.new }
  describe '#initialize' do
    it 'has a starting balance of 0' do
      expect(account.balance).to eq 0
    end
  end
 
end