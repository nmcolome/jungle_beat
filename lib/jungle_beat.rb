class JungleBeat

    attr_accessor   :list, 
                    :rate,
                    :voice

    def initialize(data = nil)
            @list = LinkedList.new
            if data != nil
                @list.init_append(data)
            end
        @rate   = rate
        @voice  = voice
    end

    def append(string)
        sounds_allowed = ["tee", "dee", "deep","ditt", "doo", "dop", "doop", "bop", "boop", "hoo", "la", "na", "plop", "shi", "shu", "suu", "woo"]
        words = string.split
        words.each do |word| 
            if sounds_allowed.include?(word)
               @list.append(word) 
            else
                return 0
            end
        end
    end

    def count
        @list.count
        # # list = @list ---- useful for LinkedList method
        # info = []
        # while @list.head.next_node != nil
        #     info << @list.head.data
        #     @list = @list.head.next_node
        # end
        # info.count
    end

    def play
        beats = @list.to_string
        # self.rate = 500
        # self.voice = "Boing"
        puts `say -r #{@rate} -v #{@voice} #{beats}`
        return @list.count
    end

    def rate
        self.rate = 500
    end
    
    def voice
        self.voice = "Boing"
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

    def prepend(string)
        sounds_allowed = ["tee", "dee", "deep","ditt", "doo", "dop", "doop", "bop", "boop", "hoo", "la", "na", "plop", "shi", "shu", "suu", "woo"]
        words = string.split
        words.each do |word|
            if sounds_allowed.include?(word)
                @list.prepend(word)
            else
                return 0
            end
        end
    end
    
end
