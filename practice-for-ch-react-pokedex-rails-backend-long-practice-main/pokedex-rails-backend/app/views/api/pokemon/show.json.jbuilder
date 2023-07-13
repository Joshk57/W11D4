@pokemon.image_url = "/images/unknown.png" if !@pokemon.captured

json.extract! @pokemon, :image_url, :id, :number, :attack, :defense, :name
json.type @pokemon.poke_type
json.moves @pokemon.moves.map {|move| move.name}
json.captured @pokemon.captured

