pokemons = @pokemon.dup

pokemons.each do |poke|
    poke.image_url = "/images/unknown.png" if !poke.captured
end


json.array! pokemons, :id, :number, :name, :image_url, :captured

