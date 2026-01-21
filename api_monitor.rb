require 'httparty'
require 'json'

def buscar_asteroides_simples
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=2024-01-20&end_date=2024-01-21&api_key=DEMO_KEY"

    respostas = HTTParty.get(url)
    dados = JSON.parse(respostas.body)

    puts "Monitoramento Universal"
    puts "=" * 40

    if dados["near_earth_objects"]
        dados["near_earth_objects"].each do |data, asteroides|
            puts "\nData: #{data}"
            puts "Asteroides próximos: #{asteroides.length}"

            asteroides.each do |a|
                nome = a["name"]
                perigoso = a["potencialmente_perigoso"] ? "Sim" : "Não"


    if a["close_approach_data"] && a["close_approach_data"][0]
                
                velocidade = a["close_approach_data"][0]["relative_velocity"]["kilometers_per_hour"].to_f.round(2)
                puts "- #{nome}: Perigoso? #{perigoso} | Velocidade: #{velocidade} km/h"
    else
                puts "- #{nome}: Perigoso? #{perigoso} | Velocidade: N/A"
    end
            end
        end
    end
end

buscar_asteroides_simples

