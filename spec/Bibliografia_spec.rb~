require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do

#DECLARACIÓN DE LOS LIBROS
	l1 = Bibliografia::Libro.new('Libro', 'Dave Thomas, Andy Hunt, Chad Fowler', 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide (The Facets of Ruby)', 'Pragmatic Bookshelf', '4 edition', '','July 7 2013', '978-1937785499', '1937785491')
	l2 = Bibliografia::Libro.new('Libro', 'Scott Chacon', 'Pro Git 2009th Edition', '(Pro) Apress', '2009 edition', '', 'August 27, 2009', '978-1430218333', '1430218339')
	l3 = Bibliografia::Libro.new('Libro', 'David Flanagan, Yukihiro Matsumoto','The Ruby Programming Language', '(Pro) Apress', '1 edition', '', '(Fe-bruary 4, 2008)', '0596516177', '978-059651')
	l4 = Bibliografia::Libro.new('Libro', 'David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy', 'The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)', 'Pragmatic Bookshelf', '', '1 edition' ,'December 25, 2010' ,'1934356379', '978-1934356371')
	l5 = Bibliografia::Libro.new('Libro', 'Richard E. Silverman', 'Git Pocket Guide','O’Reilly Media', '1 edition' , '', 'August 2, 2013', '1449325866', '978-1449325862')
	r1 = Bibliografia::Revista.new('Publicación Periodica', 'Artículo de Revista', 'Sarah Romero', '15 años a bordo de la EEI', 'Muy Interesante', '2212844', '15 Septiembre de 2015', '2323123', 'EAS-2828391')
	r2 = Bibliografia::Revista.new('Publicación Periodica', 'Artículo de Periodico', ' Javier Palazón / Laura Pajuelo ', 'El primer móvil con Android One', 'El Pais', '8889221', '16 Noviembre de 2015', '2929332', 'EAS-1447241991')
	r3 = Bibliografia::Articulo_Digital.new('Publicación Periodica', 'Documento electronico', 'Juan Carlos González', 'Yamaha está desarrollando un espectacular robot capaz de conducir motos de alta cilindrada', 'http://www.xataka.com/robotica-e-ia/yamaha-esta-desarrollando-un-espectacular-robot-capaz-de-conducir-motos-de-alta-cilindrada', '1', '28 de Octubre de 2015')

# Se inicializa los nodos con cada libro

	nodo1 = Bibliografia::Node.new(l1,nil,nil)
	nodo2 = Bibliografia::Node.new(l2,nil,nil)
	nodo3 = Bibliografia::Node.new(l3,nil,nil)
	nodo4 = Bibliografia::Node.new(l4,nil,nil)
	nodorevista1 = Bibliografia::Node.new(r1, nil, nil)
	nodorevista2 = Bibliografia::Node.new(r2, nil, nil)
	nodourl1 = Bibliografia::Node.new(r3,nil,nil)
	milista = Bibliografia::Lista.new(nodo1)

# Pruebas

	describe "Pruebas de la clase Nodo" do
		it '# Prueba de la declaración de la clase nodo' do 
			expect(nodo1).to respond_to(:value)
			expect(nodo1.value).to eq(l1)	
		end
		it '# Debe existir un nodo de la lista con sus datos y su siguiente' do
			expect(nodo1).to respond_to(:value)
			expect(nodo1).to respond_to(:next)
			expect(nodo1).to respond_to(:prev)
		end
	end
	describe "Prueba clase Lista" do
		it '# Prueba de la declaración de la clase Lista' do
			#expect(milista.top).to eq(nodo)
		end
		it '# Se puede insertar un elemento en la lista' do
			expect(milista).to respond_to(:push)
			milista.push(l1)
		end
		it '# Se puede insertar varios elementos en la lista' do
			expect(milista).to respond_to(:push)
			milista.push(nodo2)
			milista.push(nodo3)
		end
		it '# Se puede extraer un elemento de la lista' do
			aux1 = milista.pop()
			aux1 = aux1.value
			expect(aux1.GetTitulo).to eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide (The Facets of Ruby)')
			expect(aux1.GetAutor).to eq('Dave Thomas, Andy Hunt, Chad Fowler')
			expect(aux1.GetEditorial).to eq('Pragmatic Bookshelf')
		end
	end

	describe "Prueba con las Publicaciones Periodicas" do
		it '# Agregar el primer articulo de revista' do
			milista.push(r1)
		end
		it '# Agregar el segundo articulo de revista y probar titulo' do
			milista.push(r2)
			expect(r2.GetTitulo).to eq('El primer móvil con Android One')
		end
	end
	
	describe "Prueba con los Documentos electrónicos" do 
		it '# Prueba con el primer documento' do
			milista.push(r3)			
			expect(r3.GetTitulo).to eq('Yamaha está desarrollando un espectacular robot capaz de conducir motos de alta cilindrada')
		end
		it '# Comprueba que el articulo pertenece a la jerarquia' do
			expect(r3).to be_kind_of(Bibliografia::Bibliografia)
		end	
	end
end


