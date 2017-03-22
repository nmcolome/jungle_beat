class JungleBeat

    def initialize(data = nil)
            if data != nil
                @list = LinkedList.new
                @list.append(data)
            else
                @list = LinkedList.new
            end
        
    end

    def list
        @list
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
        puts `say -r 500 -v Boing #{beats}`
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
