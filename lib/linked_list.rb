
class LinkedList

    attr_reader :head,
                :data,
                :next_node

    def initialize (head = nil)
        @head       = head
        @next_node  = next_node             
    end
    
    def append(data)
        @head = Node.new(data) if @head == nil
        @next_node = Node.new(data) if @head != nil
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