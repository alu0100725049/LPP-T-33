class Complex
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end
  def to_s
    "(#{@x},#{@y})"
  end
  
  #Suma
  def + (other)	
    Complex.new(@x + other.x, @y + other.y)
  end
  
  #Resta
  def - (other)	
    Complex.new(@x - other.x, @y + other.y)
  end
  
  def *(other)	
    
    #Multiplicación
    if other.is_a?(Complex)
    Complex.new((@x * other.x) - (@y * other.y), (@x * other.y) - (@y * other.x))
    end
    #Producto escalar
    if other.is_a?(Fixnum)
    Complex.new(@x * other, @y * other)
    end
  end
  
  #División
  def / (other)	
    Complex.new(((@x * other.x) + (@y * other.y)) / ( (other.x*other.x) + (other.y*other.y)) ,( (@y * other.x) - (@x * other.y)) / ( (other.x*other.x) + (other.y*other.y)))
  end
    
  def -@	#Inverso
    Complex.new(@x * -1, @y * -1)
  end 

end
