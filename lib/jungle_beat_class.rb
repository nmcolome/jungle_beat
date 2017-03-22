class JungleBeat

    def initialize(list = LinkedList.new)
        @list = list
    end

    def list
        @list
    end

    def append(string)
        words = string.split
        words.each {|word| @list.append(word)}
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
end
