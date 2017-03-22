
class LinkedList

    attr_reader :head #,
                # :data,
                # :next_node

    def initialize (head = nil)
        @head       = head
    end

    def append(data)
        if @head == nil
            @head = Node.new(data)
        else
            temporary = @head
            while temporary.next_node != nil
                temporary = temporary.next_node
            end
            temporary.next_node = Node.new(data)
        end
    end
    
    def count
        counter = 1
        if @head != nil
            counter +=1
        else
            1
        end
        
        # while list.head.next_node != nil
        #     count +=1
        # end  
    end
    
    def to_string
        "#{@head.data}"
    end
    
end