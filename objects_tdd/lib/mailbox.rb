class Mailbox
  attr_reader :mail, :locked

  def initialize(mail = 0, keycode = 1234)
    @mail = mail
    @locked = true
    @keycode = keycode
  end

  def deliver(parcels)
    @mail += parcels
  end

  def collect
    if @mail > 0
      @mail = 0
      'You collect the mail.'
    else
      'There is no mail.'
    end
  end

  def lock
    @locked = true
    'Your mailbox is locked.'
  end

  def unlock(keycode)
    if keycode == @keycode
      @locked = false
      'Your mailbox is unlocked.'
    else
      @locked = true
      'Your keycode is incorrect.'
    end
  end
end
