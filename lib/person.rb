
class Person

    attr_reader :name
    attr_accessor :bank_account

    @@MAX = 10
    @@MIN = 0

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= (input)
        if input < @@MIN
            @happiness = @@MIN
        elsif input > @@MAX
            @happiness = @@MAX
        else 
            @happiness = input
        end
    end
    def happiness
        @happiness
    end

    def hygiene= (input)
        if input < @@MIN
            @hygiene = @@MIN
        elsif input > @@MAX
            @hygiene = @@MAX
        else
            @hygiene = input
        end
    end
    def hygiene
        @hygiene
    end

    def happy?
        @happiness > 7 ? (return true) : (return false)
    end

    def clean?
        @hygiene > 7 ? (return true) : (return false)
    end

    def get_paid(money)
        @bank_account += money
        return "all about the benjamins"
    end

    def take_bath
        #@hygiene += 4
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif  topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        elsif topic == "programming"
            return "blah blah blah blah blah"
        end
    end
end