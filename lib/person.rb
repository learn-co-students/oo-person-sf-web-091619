class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account, :bank_account

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end


    def bank_account=(bank_account)
        @bank_account = 25
    end
    
    def happiness=(happiness_index)
        if happiness_index > 10
            @happiness = 10
            elsif happiness_index < 0
            @happiness = 0
            else
            @happiness = happiness_index
        end
        
    end


    def happy?
        if happiness > 7
            return true
        else happiness < 7
            return false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else hygiene < 7
            return false
        end
    end


    def get_paid(salary)
        @salary = salary
       @bank_account += salary
       p "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3
        self.happiness += 2
        p "♪ another one bites the dust ♫"
    end


    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def hygiene=(hygiene_index)
        if hygiene_index > 10
            @hygiene = 10
        elsif hygiene_index < 0
            @hygiene = 0
        else
            @hygiene = hygiene_index
        end
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



    def happy=(happy_index)
        if happy_index > 7
            return true
        
        else happy_index < 7
            return false

        end

        def happy
            p happy
        end
   
    end
    
    


end