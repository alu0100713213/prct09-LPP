Node = Struct.new(:value, :next, :prev)

module Bibliografia
	class Lista
		include Enumerable
		attr_reader :top, :tail, :size

		def initialize()

			@top = nil
			@tail = nil
			@size = 0
		end

		def pop
			if(@top != nil)
				aux = @top
				@top = @top.next
				return aux
			else
				return nil
			end
		end

		def push(newNode)
			nodo = Node.new(newNode, nil, nil)
			if(@top == nil)
				@top = nodo
				@tail = nodo
			else
				aux = @top
				@top = nodo
				@top.next = aux
				@top.prev = @top
			end
		end

		def each
			aux = @top
			if(@top == nil and @tail == nil)
				yield nil
			elsif (@top == @tail)
				yield @top.value
			else
				while (aux != nil)
					yield aux.value
					aux = aux.next
				end
			end
		end
	end

end
