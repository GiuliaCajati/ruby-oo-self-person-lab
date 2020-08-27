class Person 
    
    
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

   


    attr_accessor :hygiene, :happiness, :bank_account 
    attr_reader :name
    

    def happiness=(happiness)
        if happiness < 0 
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else 
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene < 0 
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else 
            @hygiene = hygiene
        end
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

    def take_bath
        @hygiene = @hygiene + 4
        hygiene=(@hygiene)

        returns '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    

end



