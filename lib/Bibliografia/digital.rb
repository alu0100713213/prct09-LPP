module Bibliografia
	require_relative "Bibliografia"

	class Articulo_Digital < Bibliografia
		attr_accessor :pub

		def initialize(tp, pp, t, a, url, n, f)
			@tipo_pub = tp
			@pp = pp
			@autor = t
			@titulo = a
			@url = url
			@num_edicion = n
			@fecha_publicacion = f
		end

	end
end
