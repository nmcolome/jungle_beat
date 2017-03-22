
class LinkedList

    attr_accessor :head

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
        
        p string.join(" ")
        
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
        end
        list.next_node, new_node.next_node = new_node, list.next_node
    end

    def find(first_position, amount) #tengo q modificar find porque hace dos funciones
        list = @head
        counter = 0
        data = []

        while counter != first_position
            counter +=1
            list = list.next_node
        end
        data << list.data
        amount_counter = 0

        while  amount_counter != amount -1
            amount_counter += 1
            list = list.next_node
            data << list.data
        end
        
        data.join(" ") #pasar a to_string

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
        position = 0
        previous_to_last = count - 2

        while  position != previous_to_last
            position += 1
            list = list.next_node
        end
        
        eliminated_node = list.next_node
        p eliminated_node.data

        list.next_node = nil
    end
    
end