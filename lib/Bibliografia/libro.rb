module Bibliografia
	require_relative "Bibliografia"

	class Libro < Bibliografia
		attr_accessor :pub

		def initialize(tp, t, a, e, n, s, f, i, r)
			@tipo_pub = tp
			@autor = t
			@titulo = a
			@editorial = e
			@num_edicion = n
			@serie = s
			@fecha_publicacion = f
			@isbn = i
			@isbn13 = r
		end

	end
end
