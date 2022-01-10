it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "Si se borra CarlosDuty la Juegoteca queda con dos juegos" do
  Juegoteca.borrar_juego!(CarlosDuty)
  expect(Juegoteca.juegos.include?(CarlosDuty)).to be false
  expect(Juegoteca.juegos.size()).to eq 2
  expect(Juegoteca.puntos()).to eq 0
  Juegoteca.juegos.push(CarlosDuty)
end

it "Si se adquiere otro juego se agrega a los juegos y suma puntos"  do
  Juegoteca.adquirir_juego!(OtroJuego)
  expect(Juegoteca.juegos.include?(OtroJuego)).to be true
  expect(Juegoteca.puntos()).to eq 150
  Juegoteca.juegos.delete(OtroJuego)
end

it "La Juegoteca no es completa al iniciar" do
  expect(Juegoteca.completa?).to be false
end

it "La Juegoteca no es completa si tiene 5 juegos o menos" do
	Juegoteca.adquirir_juego!(OtroJuego)
  	Juegoteca.adquirir_juego!(OtroJuego)
  	Juegoteca.instance_variable_set('@puntos', 1001)
  	expect(Juegoteca.completa?).to be false
  	2.times { Juegoteca.juegos.delete(OtroJuego) }
end

it "La Juegoteca no es completa si tiene 1000 puntos o menos" do
	Juegoteca.adquirir_juego!(OtroJuego)
	Juegoteca.adquirir_juego!(OtroJuego)
	Juegoteca.adquirir_juego!(OtroJuego)
	Juegoteca.instance_variable_set('@puntos', 1000)
	expect(Juegoteca.completa?).to be false
  	3.times { Juegoteca.juegos.delete(OtroJuego) }
end

it "La Juegoteca es completa si tiene más de 5 juegos y más de 1000 puntos" do
	Juegoteca.instance_variable_set('@puntos', 1001)
	Juegoteca.adquirir_juego!(OtroJuego)
	Juegoteca.adquirir_juego!(OtroJuego)
	Juegoteca.adquirir_juego!(OtroJuego)
	expect(Juegoteca.completa?).to be true
  	3.times { Juegoteca.juegos.delete(OtroJuego) }
end

it "CarlosDuty es recomendable si no está en la Juegoteca" do
  expect(Juegoteca.juego_recomendable?(CarlosDuty)).to be false
  Juegoteca.borrar_juego!(CarlosDuty)
  expect(Juegoteca.juego_recomendable?(CarlosDuty)).to be true
end

it "TimbaElLeon no es recomendable porque no es violento aunque no esté en la Juegoteca" do
  Juegoteca.borrar_juego!(TimbaElLeon)
  expect(Juegoteca.juego_recomendable?(TimbaElLeon)).to be false
end