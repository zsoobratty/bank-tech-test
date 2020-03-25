require 'statement'
require 'account'

describe Statement do
  let(:account) { double("Account", transaction_history: ["2020-03-24 || 1000.0 ||  || 1000.0", "2020-03-24 ||  || 500.0 || 500.0"]) }
  let(:statement) { Statement.new(account) }

  describe '#print_statement' do
    it 'prints a statement of account transactions' do
      expect(statement.print_statement).to eq("date || credit || debit || balance\n2020-03-24 || 1000.0 ||  || 1000.0\n2020-03-24 ||  || 500.0 || 500.0") 
    end
  end
end
