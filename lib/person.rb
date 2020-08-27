class Person 
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    attr_accessor :hygiene, :happiness, :bank_account, :take_bath
    attr_reader :name
    

    def happiness=(new_happiness)
        @happiness = new_happiness.clamp(0, 10)
    end

    def hygiene=(new_hygiene)
        @hygiene=new_hygiene.clamp(0, 10)
    end

    def clean?
        @hygiene > 7
    end

    def happy?
         @happiness > 7
    end


    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath #new_person.take_bath
        self.hygiene = self.hygiene + 4
         '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(callee)
        self.happiness += 3
        callee.happiness += 3
        "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(other_person, topic)
        if topic == "politics"
            self.happiness -= 2
            other_person.happiness -= 2
           'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            other_person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

end



