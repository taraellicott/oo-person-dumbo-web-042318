require "pry"

class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
  end

  def happiness
    @happiness
  end

  # def hygiene
  #    @hygiene
  #    # = [0, @hygiene, 10].sort[1]
  #    # if @hygiene < 0
  #    #   @hygiene = 0
  #    # elsif @hygiene > 10
  #    #   @hygiene = 10
  #    # else
  #    #   @hygiene
  #    # end
  # end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  #setter method
  def hygiene=(points)
    @hygiene = points

    @hygiene = [0, @hygiene, 10].sort[1]
  end

  # setter method
  def happiness=(points)
    @happiness = points

    @happiness = [0, @happiness, 10].sort[1]
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

   def start_conversation(person, topic)
     if topic == "politics"
       self.happiness -= 2
       person.happiness -= 2
       "blah blah partisan blah lobbyist"
     elsif topic == "weather"
       self.happiness += 1
       person.happiness += 1
       "blah blah sun blah rain"
     else
       "blah blah blah blah blah"
     end
   end






end
