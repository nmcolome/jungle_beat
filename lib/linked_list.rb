class LinkedList

    attr_reader :head,
                :data

    def initialize (head = nil)
        @head   = head
        @data   = data             
    end
    
    def append(data)
        @head = Node.new(@data)
    end
    
    def count
    end
    
    def to_string
        @data.to_s
    end

    def next_node
    end
    
end