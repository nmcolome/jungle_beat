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
        words = string.split
        words.each do |word| 
            @list.append(word)
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
    
end
