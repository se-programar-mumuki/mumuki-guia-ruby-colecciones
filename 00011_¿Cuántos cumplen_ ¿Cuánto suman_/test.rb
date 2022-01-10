it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "El promedio de violencia es 30"  do
  expect(Juegoteca.promedio_de_violencia).to eq 30
end

it "El promedio de violencia es 62.5 si agrego un juego violento de dificultad 95"  do
  Juegoteca.juegos.push(JuegoViolento)
  expect(Juegoteca.promedio_de_violencia).to eq 62.5
end