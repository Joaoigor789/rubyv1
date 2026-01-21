require 'httparty'
require 'json'
require 'date'

def buscar_asteroides_tempo_real
    hoje = Date.today.strftime("%Y-%m-%d")
    amanha = (Date.today + 1).strftime("%Y-%m-%d")


    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{hoje}&end_date=#{amanha}&api_key=DEMO_KEY"

    respostas = HTTParty.get(url)
    dados = JSON.parse(respostas.body)

    puts "Monitoramento Universal"
    puts "=" * 50
    puts "Tempo real: #{hoje} a #{amanha}"
    puts "=" * 50

    if dados["near_earth_objects"]
        dados["near_earth_objects"].each do |data, asteroides|
            puts "\nData: #{data}"
            puts "Asteroides próximos: #{asteroides.length}"

            asteroides.each do |a|
                nome = a["name"]
                perigoso = a["potencialmente_perigoso"] ? "Sim" : "Não"


    if a["close_approach_data"] && a["close_approach_data"][0]
                
                velocidade = a["close_approach_data"][0]["relative_velocity"]["kilometers_per_hour"].to_f.round(2)
                distancia = a["close_approach_data"][0]["miss_distance"]["kilometers"].to_f.round(2)

                puts " #{nome}"
                puts " Perigoso? #{perigoso}"
                puts " Velocidade? #{velocidade} km/h"
                puts " Distância? #{distancia} km"
                puts " =================="
    
    else
                puts "- #{nome}: Perigoso? #{perigoso} | Dados não disponiveis"
    end
            end
        end
    end
end

buscar_asteroides_tempo_real