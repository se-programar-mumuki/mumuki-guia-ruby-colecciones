it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "Jugar a todo baja un punto la dificultad a CarlosDuty y sube en 5 la de TimbaElLeon"  do
  Juegoteca.jugar_a_todo!
  expect(CarlosDuty.dificultad).to eq 29.5
  expect(TimbaElLeon.dificultad).to eq 30
end