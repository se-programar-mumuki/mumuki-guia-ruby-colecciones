module CarlosDuty
  @cantidad_logros = 0
  
  def self.violento?
    true
  end
  
  def self.dificultad
    30 - @cantidad_logros * 0.5
  end
  
  def self.jugar!(un_tiempo)
    if un_tiempo > 2
      @cantidad_logros += 1   
    end
  end
end

module TimbaElLeon
  @dificultad = 25
  
  def self.violento?
    false
  end
  
  def self.dificultad
    @dificultad
  end
  
  def self.jugar!(un_tiempo)
    @dificultad += un_tiempo
  end
end

module Metroide
  @nivel_espacial = 3
  
  def self.violento?
    @nivel_espacial > 5
  end
  
  def self.dificultad
    100
  end
  
  def self.jugar!(un_tiempo)
    @nivel_espacial += 1
  end
end

module OtroJuego
  def self.violento?
    false
  end
end
