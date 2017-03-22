
class LinkedList

    attr_reader :head

    def initialize (head = nil)
        @head       = head
    end

    def append(data)
        if @head == nil
            @head = Node.new(data)
        else
            list = @head
            while list.next_node != nil
                list = list.next_node
            end
            list.next_node = Node.new(data)
        end
    end
    
    def count
        list = @head
        if @head == nil
            counter = 0
        else
            counter = 1
            while list.next_node != nil
                list = list.next_node
                counter +=1
            end
        end
        counter
    end
    
    def to_string
        string = "#{@head.data}"
        list = @head
        
        while list.next_node != nil
            list = list.next_node
            string = string + " " + list.data
        end
        string
    end

    def prepend(data)
        # list = @head
        # new_node = Node.new(data)
        # new_node.next_node = list
        # list.head = list
    end

    def insert(position,data)
        counter = 1
            while list.next_node != nil
                list = list.next_node
                counter +=1
            end
        list.count == position
            end
            
    end
end