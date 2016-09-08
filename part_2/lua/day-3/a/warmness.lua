song = require 'notation'

song.set_tempo(116)

song.part {
  E2q, B5e, Fs6e, E6e, B5e, G5e, Fs5e,
  E5q, E4q, E5q, D5e, C5e,
  D5q, D4e, B4q, A4e, G4e,
  D4q, D4s, E4s,
}

song.part {
  E2q, B5e, Fs6e, E6e, B5e, G5e, Fs5e,
  G5q, G4q, G4q, G4e, C5e,
  B4q, D4e, B4q, A4e, G4e,
  Fs4q, D4s, E4s, Fs4s, G4s, A4s, B4s, C5s, D5s, E5s
}

song.part {
  E2q, G6e, Fs6e, E6e, B5e, G5e, Fs5e,
  C5q, C5q, C5q, G4e, C5e,
  G4q, D4e, B4q, A4e, G4e,
  A4q, D4s, E4s,
}

song.part {
  E2h
}

song.part {
  E1h
}

song.go()
