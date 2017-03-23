
class LinkedList

    attr_accessor :head

    def initialize (head = nil)
        @head       = head
    end
    
    def append(string)
        sounds_allowed = ["tee", "dee", "deep","ditt", "doo", "dop", "doop", "bop", "boop", "hoo", "la", "na", "plop", "shi", "shu", "suu", "woo"]

        if @head.nil? && sounds_allowed.include?(data)
            words = string.split
            @head = Node.new(words[0])
            words.each do |word| 
                while @head.next_node != nil
                @head = @head.next_node
            end
            @head.next_node = Node.new(data)
            
        else 
            sounds_allowed.include?(data)
            list = @head
            
            while list.next_node != nil
                list = list.next_node
            end
            list.next_node = Node.new(data)
        end

    end
    
    def count
        list = @head
        if @head.nil?
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
        words = []
        list = @head

        if @head == nil
            words
        else
            while list.next_node != nil
                words << list.data
                list = list.next_node
            end
            words << list.data
        end
        
        return words.join(" ")
    end

    def includes?(value)
        data_list = []
        list = @head

        if @head == nil
            nil
        else
            while list.next_node != nil
                data_list << list.data
                list = list.next_node
            end
            data_list << list.data
        end

        data_list.include?(value)
        
    end

    def prepend(data)
        temporary = @head
        @head = Node.new(data)
        @head.next_node = temporary
    end

    def insert(position, data)
        list = @head
        new_node = Node.new(data)
        counter = 0

        while counter != position - 1
            counter +=1
            list = list.next_node
        end
        list.next_node, new_node.next_node = new_node, list.next_node
    end

    def find(first_position, amount)
        list = @head
        counter = 0
        data = []

        while counter != first_position
            counter +=1
            list = list.next_node
        end
        data << list.data
        amount_counter = 0

        while  amount_counter != amount - 1
            amount_counter += 1
            list = list.next_node
            data << list.data
        end
        
        data.join(" ")

    end
    
    def pop
        list = @head

        while  list.next_node.next_node
            list = list.next_node
        end
        
        eliminated_node = list.next_node
        p eliminated_node.data

        list.next_node = nil
    end
    
end