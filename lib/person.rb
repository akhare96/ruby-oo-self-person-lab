# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def hygiene=(points)
        @hygiene = points.clamp(0, 10)
    end

    def happiness=(points)
        @happiness = points.clamp(0, 10)
    end
    
    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            [self, friend].each {|x| x.happiness -= 2}
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, friend].each {|x| x.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
