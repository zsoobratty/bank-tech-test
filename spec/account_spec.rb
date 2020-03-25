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

  describe '#log_transaction' do
    it 'saves a transaction to the history' do
      allow(Date).to receive(:today).and_return Date.new(2020,3,23)
      account.credit(1000)
      account.debit(500)
      expect(account.transaction_history).to eq(["2020-03-23 || 1000.0 ||  || 1000.0", "#{Date.today} ||  || 500.0 || 500.0"])
    end
  end
end
