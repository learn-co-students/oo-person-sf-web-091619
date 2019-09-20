class Person
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def name 
        @name
    end
    def hygiene
        @hygiene 
    end
    def happiness
        @happiness 
    end
    def happiness=(happiness)
        if happiness >= 0 && happiness <= 10
            @happiness = happiness
        elsif happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        end
    end
    def hygiene=(hygiene)
        if hygiene >= 0 && hygiene <= 10
            @hygiene = hygiene
        elsif hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        end
    end
    def happy?
        @happiness > 7
    end
    def clean?
        @hygiene > 7
    end
    def get_paid(salary)
        @bank_account += salary
        p 'all about the benjamins'
    end
    def take_bath

        self.hygiene=@hygiene + 4
      
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
    end
    def call_friend(person)
        self.happiness = @happiness + 3
        person.happiness = person.happiness + 3
        "Hi #{person.name}! It's #{@name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            person.happiness = person.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = @happiness + 1
            person.happiness = person.happiness + 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

end


    




# your code goes here
# Person
#   instantiation
#     ::new
#       a new person is instantiated with a name (FAILED - 1)
#     #initialize
#       #name
#         a new person knows its name once he/she has been initialized (FAILED - 2)
#         a new person instance cannot overwrite the name it was instantied with (FAILED - 3)
#       #bank_account
#         a new person instance is initialized with a bank_account balance of $25 (FAILED - 4)
#         a person instance can change his/her bank_account amount (FAILED - 5)
#       #happiness
#         a new person instance is initialized with a happiness index of 8 (FAILED - 6)
#         a person instance can change his/her happiness index (FAILED - 7)
#         a person's happiness doesn't exceed 10 (FAILED - 8)
#         a person's happiness doesn't go below 0 (FAILED - 9)
#       #hygiene
#         a person instance is initialized with a hygiene index of 8 (FAILED - 10)
#         a person instance can change its hygiene index (FAILED - 11)
#         a person instance's hygiene index cannot exceed 10 (FAILED - 12)
#         a person instance hygiene index cannot be less than 0 (FAILED - 13)
#   non-attribute instance methods
#     #happy?
#       returns true if happiness is greater than seven, else false (FAILED - 14)
#     #clean?
#       returns true if hygiene is greater than seven, else false (FAILED - 15)
#     #get_paid
#       accepts an argument of salary (FAILED - 16)
#       increments bank_account by the salary (FAILED - 17)
#       returns 'all about the benjamins' (FAILED - 18)
#     #take_bath
#       makes the person cleaner by 4 points (FAILED - 19)
#       returns a song (FAILED - 20)
#       can't make a person cleaner by 10 points (hint: use the custom #hygiene= method) (FAILED - 21)
#       calls on the #hygiene= method to increment hygiene (FAILED - 22)
#     #work_out
#       makes the person dirtier by 3 points (FAILED - 23)
#       never makes the person have negative dirty points
#         (hint: use the #hygiene= method) (FAILED - 24)
#       calls on the #hygiene= method to decrease hygiene (FAILED - 25)
#       makes the person happier by 2 points (FAILED - 26)
#       never makes the person have more than 10 happiness points
#         (hint: use the #happiness= method) (FAILED - 27)
#       calls on the #happiness= method to increment happiness (FAILED - 28)
#       returns Queen lyrics (FAILED - 29)
#     #call_friend
#       accepts one argument, an instance of the Person class (FAILED - 30)
#       makes the person calling happier by three points (FAILED - 31)
#       makes the friend happier by three points (FAILED - 32)
#       never makes the happiness of either party exceed 10
#         (hint: use the cutom #happiness= method) (FAILED - 33)
#       calls on the #happiness= method to increment happiness (FAILED - 34)
#       returns a string that reflects the caller's side of the conversation (FAILED - 35)
#     #start_conversation
#       accepts two arguments, a person to strike a convo with and a topic (FAILED - 36)
#       topic: politics
#         returns 'blah blah partisan blah lobbyist' if the topic is politics (FAILED - 37)
#         if topic is politics, it makes both people in the convo two points less happy (FAILED - 38)
#         never makes either party less than 0 points happy (never negative)
#           (hint: use your #happiness= method) (FAILED - 39)
#         calls on the #happiness= method (FAILED - 40)
#       topic: weather
#         returns 'blah blah sun blah rain' if the topic is weather (FAILED - 41)
#         if topic is weather, it makes both people in the convo one point more happy (FAILED - 42)
#         never makes either party more than 10 points happy
#           (hint: use your #happiness= method) (FAILED - 43)
#         calls on the #happiness= method (FAILED - 44)
#       topic: other
#         returns 'blah blah blah blah blah' if the topic is not politics or weather (FAILED - 45)
#         if topic is not politics or weather, it doesn't affect happiness (FAILED - 46)

