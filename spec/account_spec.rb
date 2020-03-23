require 'account'

describe Account do
  let (:account) { Account.new }
  describe '#initialize' do
    it 'has a starting balance of 0' do
      expect(account.balance).to eq 0
    end
  end
  describe '#credit' do
    it 'increases balance by an amount' do
      account.credit(100)
      expect(account.balance).to eq 100
    end
  end
  
  describe '#debit' do
    it 'decreases the balance by an amount' do
      account.credit(500)
      account.debit(100)
      expect(account.balance).to eq 400
    end
  end
end