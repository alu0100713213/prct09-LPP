module Bibliografia
	Node = Struct.new(:value, :next, :prev){
		attr_accessor :prev
	}

	class Lista
		attr_reader :top, :tail, :size

		def initialize(top_)
			raise ArgumentError, "No puede ser nulo" unless (top_ != nil)
			@top = Lista::to_node(top_)
			@tail = @top
			@size = 1
		end

		def self.to_node(value)
			if(value.is_a? Node) then return value end
				return Node.new(value, nil, nil)
		end

		def pop
			aux = @top
			@top = @top.next
			if (@top != nil) then
				@top.prev = nil
			end
			return aux
		end

		def push(newNode, *args)
			@tail.next = Lista::to_node(newNode)
			@tail.next.prev = @tail
			@tail = @tail.next
			@size += 1
			args.each { |x| push(x) }
			@size
		end

		def each
			aux = top
			while aux != nil do
			yield aux 
			aux = aux.next
			end
		end
	end

end


