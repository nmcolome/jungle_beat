require '.lib/node'
class LinkedList

    attr_reader :head,
                :data,
                :next_node

    def initialize (head = nil)
        @head       = head
        @data       = data
        @next_node  = next_node             
    end
    
    def append(data)
        @head = Node.new(data)
    end
    
    def count
        counter = 0
        if @head.data != nil
            counter +=1
        end
        count
        # while list.head.next_node != nil
        #     count +=1
        # end  
    end
    
    def to_string
        puts "#{@head.data}"
    end
    
end