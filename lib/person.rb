class Person 
  attr_accessor :get_paid
  attr_reader :name 
  attr_writer :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def happiness
    @happiness = @happiness.clamp(0,10)
  end

  def hygiene
    @hygiene = @hygiene.clamp(0,10)
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end
  
  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(amount) 
    amount + @bank_account
    "all about the benjamins"
  end

  def take_bath 
    @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out 
    @happiness + 2 && @hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def self.call_friend(friend) 
    @friend
  end

  def self.start_conversation(friend, topic)
    if topic = politics
      self.friend && self {@happiness - 2}
      "blah blah partisan blah lobbyist"
      # happiness()
    elsif topic = weather
      self.friend && self {@happiness + 1}
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
  
end