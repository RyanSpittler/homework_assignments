require 'rspec'
require_relative('../../lib/mailbox')

describe Mailbox do
  context 'can be created' do
    it 'without mail' do
      mailbox = Mailbox.new
      expect(mailbox).to be_a(Mailbox)
    end

    it 'with mail already' do
      mailbox = Mailbox.new(1)
      expect(mailbox.mail).to eq(1)
    end

    it 'with a different keycode' do
      mailbox = Mailbox.new(0, 5678)
      expect(mailbox.unlock(5678)).to eq('Your mailbox is unlocked.')
      expect(mailbox.locked).to be_falsey
    end
  end

  context 'after being created' do
    let(:mailbox) { Mailbox.new }
    it 'should hold mail' do
      expect(mailbox.mail).to eq(0)
    end

    it 'should receive mail' do
      expect(mailbox.deliver(1)).to eq(1)
    end

    it 'should start locked' do
      expect(mailbox.locked).to be_truthy
    end

    it 'should lock' do
      expect(mailbox.lock).to eq('Your mailbox is locked.')
      expect(mailbox.locked).to be_truthy
    end

    context 'when provided a keycode' do
      it 'that is correct, unlock' do
        expect(mailbox.unlock(1234)).to eq('Your mailbox is unlocked.')
        expect(mailbox.locked).to be_falsey
      end

      it 'that is incorrect, complain' do
        expect(mailbox.unlock(0000)).to eq('Your keycode is incorrect.')
        expect(mailbox.locked).to be_truthy
      end
    end

    context 'when there is mail' do
      before do
        mailbox.deliver(1)
      end
      context 'and the user collects' do
        it 'should relinquish the mail' do
          expect(mailbox.collect).to eq('You collect the mail.')
          expect(mailbox.mail).to eq(0)
        end
      end
    end

    context 'when there is no mail' do
      context 'and the user collects' do
        it 'should report that there is no mail' do
          expect(mailbox.collect).to eq('There is no mail.')
        end
      end
    end
  end
end
