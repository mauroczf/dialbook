dial_book = { 
    "ro" => "69",
    "sp" => "11",
    "pr" => "43",
    "rj" => "21"
}
def get_state_names(somehash)
    somehash.keys
end

def get_area_code(somehash, key)
    somehash[key]
end

loop do 
    puts "Deseja encontrar um código de área de um estado? (S/N)"
    answer = gets.chomp.downcase
    break if answer != "s"
    puts "Insira a sigla do estado em que você deseja encontrar o código de área"
    puts get_state_names(dial_book)
    prompt = gets.chomp
    if dial_book.include?(prompt)
        puts "O código de área para o estado #{prompt} é #{get_area_code(dial_book, prompt)}"
    else
        puts "Você inseriu um estado no qual não está listado"
    end
end