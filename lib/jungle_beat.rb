class JungleBeat

    attr_accessor   :list, 
                    :rate,
                    :voice

    def initialize(data = nil)
            @list = LinkedList.new
            if data != nil
                @list.init_append(data)
            end
        # @rate   = rate
        # @voice  = voice
    end

    def append(string)
        sounds_allowed = ["tee", "dee", "deep","ditt", "doo", "dop", "doop", "bop", "boop", "hoo", "la", "na", "plop", "shi", "shu", "suu", "woo"]
        words = string.split
        words.each do |word| 
            @list.append(word) if sounds_allowed.include?(word)
        end
    end

    def count
        @list.count
    end

    def play
        beats = @list.to_string
        puts `say -r #{@rate} -v #{@voice} #{beats}`
        return @list.count
    end

    def rate
        @rate
    end
    
    def voice
        @voice
    end

    def reset_rate
        self.rate = 500
    end
    
    def reset_voice
        self.voice = "Boing"
    end

    def all 
        @list.to_string
    end

    def included?(data)
        @list.includes?(data)
    end
    
    def insert(position, data) #edit as hash
        sounds_allowed = ["tee", "dee", "deep","ditt", "doo", "dop", "doop", "bop", "boop", "hoo", "la", "na", "plop", "shi", "shu", "suu", "woo"]
        data = string.split
        data.each do |word| 
            @list.insert(position, data) if sounds_allowed.include?(word)
        end
    end
    
    def find(first_position, amount)
        @list.find(first_position, amount)
    end
    
    def pop
        @list.pop
    end
    
end
