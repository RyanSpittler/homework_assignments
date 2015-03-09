require 'rspec'
require_relative('../../lib/mailbox')

describe Mailbox do
  let(:mailbox) { Mailbox.new }
  it 'can be created' do
    expect(mailbox).to be_a(Mailbox)
  end
end
