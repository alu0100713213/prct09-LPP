module Bibliografia
	require_relative "Bibliografia"

	class Revista < Bibliografia
		attr_accessor :pub

		def initialize(tp, pp, t, a, r, n, f, i, ref)
			@tipo_pub = tp
			@pp = pp
			@autor = t
			@titulo = a
			@revista = r
			@num_edicion = n
			@fecha_publicacion = f
			@issn = i
			@referencia = ref
		end

	end
end
