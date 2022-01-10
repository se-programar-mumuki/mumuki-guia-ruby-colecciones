it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "La dificultad violenta del único juego violento es 30"  do
  expect(Juegoteca.dificultad_violenta).to eq [30]
end

it "Si CarlosDuty no estuviera en la Juegoteca no habría dificultad violenta"  do
  Juegoteca.juegos.shift
  expect(Juegoteca.dificultad_violenta).to eq []
end