it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "En la Juegoteca no hay mucha violencia porque TimbaElLeon no es violento"  do
  expect(Juegoteca.mucha_violencia?).to be false
end

it "La Juegoteca es muy difícil porque CarlosDuty y Metroide tienen más de 25 puntos de dificultad"  do
  expect(Juegoteca.muy_dificil?).to eq true
end