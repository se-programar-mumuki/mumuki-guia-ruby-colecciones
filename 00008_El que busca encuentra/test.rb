it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "CarlosDuty es más difícil que 10"  do
  expect(Juegoteca.juego_mas_dificil_que(10)).to eq CarlosDuty
end

it "Metroide es más difícil que 90"  do
  expect(Juegoteca.juego_mas_dificil_que(90)).to eq Metroide
end

it "Ningún juego es más difícil que 110"  do
  expect(Juegoteca.juego_mas_dificil_que(110)).to eq nil
end