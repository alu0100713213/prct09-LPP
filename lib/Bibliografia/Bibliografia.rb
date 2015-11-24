module Bibliografia
	class Bibliografia
	  attr_reader :tipo_pub, :autor, :titulo, :editorial, :num_edicion,
	              :serie, :fecha_publicacion, :isbn,
	              :isbn13

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
	def GetAutor()
		@autor
	end

	def SetAutor(valor)
		@autor = valor
	end
		
	  def SetTitulo(valor)
	    @titulo = valor
	  end

	  def GetTitulo()
	    @titulo
	  end

	  def SetEditorial(valor)
	    @editorial = valor
	  end

	  def GetEditorial()
	    @editorial
	  end

	  def SetEditorial(valor)
	    @editorial = valor
	  end

	  def GetNum_edicion()
	    @num_edicion
	  end

	  def SetNum_edicion(valor)
	    @num_edicion = valor
	  end

	  def GetSerie()
	    @serie
	  end

	  def SetSerie(valor)
	    @serie = valor
	  end

	  def GetFecha_publicacion()
	    @fecha_publicacion
	  end

	  def SetFecha_publicacion(valor)
	    @fecha_publicacion = valor
	  end

	  def GetIsbn()
	    @isbn
	  end

	  def SetIsbn(valor)
	    @isbn = isbn
	  end

	  def GetIsbn13()
	    @isbn13
	  end

	  def SetIsbn13(valor)
	    @isbn13 = valor
	  end
	  
	  def to_s(valor)
	    "(#{@valor})"
   	  end
 	  
	  def PrintReference()
	    @salida =  GetAutor() + "\n" + GetTitulo() + "\n" + "Editorial: " + GetEditorial() + "\n" + "Fecha de publicación: " + "{@fecha_publicacion}" + "\n" + "ISBN: " + "#{@isbn}" + "\n" +"Referencia: " + "#{@isbn13}" + "\n"
	    @salida
	  end	
	end
end
	
