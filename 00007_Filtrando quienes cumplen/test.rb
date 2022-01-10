it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "CarlosDuty es el único juego violento"  do
  expect(Juegoteca.juegos_violentos).to eq [CarlosDuty]
end