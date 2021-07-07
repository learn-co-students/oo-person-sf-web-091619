# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    def initialize(name)
       @name = name 
       @bank_account = 25
       @happiness = 8 
       @hygiene = 8
    end
    def bank_account=(bank_acount)
        @bank_account = 25
    end
    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end
    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(salary)
        @salary = salary
        @bank_account += salary
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        @hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        @hygiene
        self.happiness += 2
        @happiness
        return "♪ another one bites the dust ♫"
    end 
    def call_friend(friend)
        self.happiness += 3
        @happiness
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end
    end
end