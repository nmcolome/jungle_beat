class JungleBeat

    def initialize(list = LinkedList.new)
        @list = list
    end

    def list
        @list
    end

    def append(string)
        strings_not_allowed = ["Mississippi"]
        words = string.split
        words.each do |word| 
            if strings_not_allowed.include?(word)
               p 0
            else 
                @list.append(word) 
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
        beats = @list.to_string
        beats
    end

    def prepend
        
    end
    
end
