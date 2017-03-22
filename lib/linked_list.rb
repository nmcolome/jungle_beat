
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
        string = [@head.data]
        list = @head
        
        while list.next_node != nil
            list = list.next_node
            string << list.data
        end
        
        string.join(" ")
        
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
    
    def includes?(value) #true or false if its in the list
        list = @head
        data_list = []
        
        while list.next_node != nil
            data_list << list.data
            list = list.next_node
        end
        data_list << list.data
        
        data_list.include?(value)
    end

    def pop
        list = @head
        
        while list.next_node != nil
            list = list.next_node
        end
        list
        

#   def insert(position,data)
#         list = @head
#         new_node = Node.new(data)
#         counter = 0

#         while counter != position - 1
#             counter +=1
#             list = list.next_node
#             # counter +=1
#         end
#         list.next_node, new_node.next_node = new_node, list.next_node
#     end

    end
    
end