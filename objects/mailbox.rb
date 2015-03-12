#!/usr/bin/env ruby

# A class that simulates postal mail.
class Mailbox
  def initialize(key = '1234', parcels = 0)
    @key = key
    @mail = parcels
    @locked = true
    puts "Your mailbox has been created with the key, #{@key}."
  end

  def mail?
    puts @mail > 0 ? "You've got mail!" : "The mailbox is empty."
  end

  def locked?
    puts @locked ? "Your mailbox is locked." : "Your mailbox is unlocked."
  end

  def lock
    @locked = true
    puts "Your mailbox has been locked."
  end

  def unlock(attempt)
    if attempt.to_s == @key
      @locked = false
      puts "Your mailbox has been unlocked."
    else
      puts "Your key is incorrect. The mailbox remains locked."
    end
  end

  def deliver_mail(parcels)
    @mail += parcels
    puts "Your mailbox has received mail."
  end

  def collect_mail
    if @locked
      puts "You must unlock the mailbox first. Use .unlock(key)"
    else
      puts "You have collected #{@mail} parcels from your mailbox."
      @mail = 0
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  # You can create a mailbox!
  # This mailbox will begin defaulted with no mail and a code key of 1234.
  # Use the methods .mail? and .locked? to check the status of the box.
  # A postmaster can use the method .deposit_mail to insert parcels.
  # The user can use .collect_mail to get their parcels.
  # Keep track of your key, as you need it to unlock your box!

  mailbox = Mailbox.new
  mailbox.locked?
  mailbox.mail?
  mailbox.deliver_mail(3)
  mailbox.mail?
  mailbox.collect_mail
  mailbox.unlock(1234)
  mailbox.collect_mail
  mailbox.locked?
  mailbox.lock
end
