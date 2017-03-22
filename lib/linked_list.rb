
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
        list = @head
        new_node = Node.new(data)
        new_node.next_node, @head = @head, new_node
    end

    def insert(position,data)
        list = @head
        new_node = Node.new(data)
        counter = 0

        while counter != position - 1
            counter +=1
            list = list.next_node
            # counter +=1
        end
        list.next_node, new_node.next_node = new_node, list.next_node
    end

    def find(first_position, elements_amount)

    end
    
    def includes?(value) #true or false if its in the list
        list = @head
        p list.data
       p list.data == value
            list = list.next_node
            puts "ok"
        
        
            # if list.data == value
            #     true
            #     break
            # else 
            #     list = list.next_node
            # end

        # end
    end
    
# list = @head
#             while list.next_node != nil
#                 list = list.next_node
#             end
#             list.next_node = Node.new(data)

    def pop
    end
    
end