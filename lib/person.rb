require "pry"

class Person 
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize name
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else @happiness = happiness 
    end
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
  
  def get_paid amount
    @bank_account = @bank_account + amount
    "all about the benjamins"
  end
  
  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else @hygiene = hygiene
    end
  end

  def take_bath
    hyg_num = (@hygiene + 4)
    self.hygiene = hyg_num  
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    hap_num = @happiness + 2
    self.happiness = hap_num
    hyg_num = @hygiene - 3
    self.hygiene = hyg_num
    "♪ another one bites the dust ♫"
  end

  def call_friend friend
    self_hap_num = @happiness + 3
    self.happiness = self_hap_num
    friend_hap_num = friend.happiness + 3
    friend.happiness = friend_hap_num
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation friend, topic
    if topic == "politics"
      self_hap_num = @happiness - 2
      self.happiness = self_hap_num
      friend_hap_num = friend.happiness - 2
      friend.happiness = friend_hap_num
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self_hap_num = @happiness + 1
      self.happiness = self_hap_num
      friend_hap_num = friend.happiness + 1
      friend.happiness = friend_hap_num
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end