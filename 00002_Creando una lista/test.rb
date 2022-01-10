it "El primer juego de la la Juegoteca es el CarlosDuty" do
  expect(Juegoteca.juegos.shift).to be CarlosDuty
end

it "El segundo juego de la Juegoteca es TimbaElLeon"  do
  expect(Juegoteca.juegos.shift).to be TimbaElLeon
end

it "El tercer juego de la Juegoteca es Metroide"  do
  expect(Juegoteca.juegos.shift).to be Metroide
end

it "La Juegoteca tiene únicamente esos tres juegos"  do
  expect(Juegoteca.juegos.empty?).to be true
end
