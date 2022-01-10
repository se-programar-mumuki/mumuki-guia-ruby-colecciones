module CarlosDuty
  @cantidad_logros = 0
  
  def self.violento?
    #<elipsis-for-student@
    true
    #@elipsis-for-student>
  end
  
  def self.dificultad
    #<elipsis-for-student@
    30 - @cantidad_logros * 0.5
    #@elipsis-for-student>
  end
  
  def self.jugar!(un_tiempo)
    #<elipsis-for-student@
    if un_tiempo > 2
      @cantidad_logros += 1   
    end
    #@elipsis-for-student>
  end
end

module TimbaElLeon
  @dificultad = 25
  
  def self.violento?
    #<elipsis-for-student@
    false
    #@elipsis-for-student>
  end
  
  def self.dificultad
    #<elipsis-for-student@ 
    @dificultad 
    #@elipsis-for-student>
  end
  
  def self.jugar!(un_tiempo)
    #<elipsis-for-student@
    @dificultad += un_tiempo 
    #@elipsis-for-student>
  end
end

module Metroide
  @nivel_espacial = 3
  
  def self.violento?
    #<elipsis-for-student@
    @nivel_espacial > 5
    #@elipsis-for-student>
  end
  
  def self.dificultad
    #<elipsis-for-student@
    100
    #@elipsis-for-student>
  end
  
  def self.jugar!(un_tiempo)
    #<elipsis-for-student@
    @nivel_espacial += 1
    #@elipsis-for-student>
  end
end