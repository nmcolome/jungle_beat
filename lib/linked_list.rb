
class LinkedList

    attr_accessor :head

    def initialize (head = nil)
        @head       = head
    end
    
    def append(data)
        if 
            @head == nil
            @head = Node.new(data)
        else
            while self.head.next_node != nil
                self.head = self.head.next_node
            end
            self.head.next_node = Node.new(data)
        end
    end
    
    def count
        if self.head == nil
            counter = 0
        else
            counter = 1
            while list.next_node != nil
                list = list.next_node
                counter +=1
            end
        end
        return counter
    end
    
    def to_string
        string = [@head.data]
        
        while self.head.next_node != nil
            self.head = self.head.next_node
            string << self.head.data
        end
        
        p string.join(" ")
        
    end

    def prepend(data)
        new_node = Node.new(data)
        new_node.next_node, @head = @head, new_node
    end

    def insert(position,data)
        new_node = Node.new(data)
        counter = 0

        while counter != position - 1
            counter +=1
            self.head = self.head.next_node
        end
        self.head.next_node, new_node.next_node = new_node, self.head.next_node
    end

    def find(first_position, amount) #tengo q modificar find porque hace dos funciones
        counter = 0
        data = []

        while counter != first_position
            counter +=1
            self.head = self.head.next_node
        end
        data << self.head.data
        amount_counter = 0

        while  amount_counter != amount -1
            amount_counter += 1
            self.head = self.head.next_node
            data << self.head.data
        end
        
        data.join(" ") #pasar a to_string

    end
    
    def includes?(value)
        data_list = to_string.split
        data_list.include?(value)
    end

    def pop
        position = 0
        previous_to_last = count - 2

        while  position != previous_to_last
            position += 1
            self.head = self.head.next_node
        end
        
        eliminated_node = self.head.next_node
        p eliminated_node.data

        self.head.next_node = nil
    end

    def init_append(string)
        sounds_allowed = ["tee", "dee", "deep","ditt", "doo", "dop", "doop", "bop", "boop", "hoo", "la", "na", "plop", "shi", "shu", "suu", "woo"]
        words = string.split
        words.each do |word| 
            if sounds_allowed.include?(word)
               append(word) 
            else
                return 0
            end
        end
    end
    
end