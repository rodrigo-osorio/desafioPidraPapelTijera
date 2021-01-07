#Diagrama de flujo/Pseudocodigo

# Algoritmo juego
#     Solicitar dato (piedra/papel/tijera)
#     Varificar si dato != (piedra/papel/tijera)
#     Mostrar Argumento invalido
#     Solicitar dato nuevamente
#     Validar si dato == (piedra/papel/tijera)
#     Generar variable juego = random(0..2)

#         Validar si dato == piedra && juego == 0
#         Mostrar computador juega piedra
#         Mostrar Empataste
#         Validar si dato == piedra && juego == 1
#         Mostrar computador juega papel
#         Mostrar Perdiste
#         Validar si dato == piedra && juego == 2
#         Mostrar computador juega tijera
#         Mostrar Ganaste
#         .
#         .
#         .
#         (*Misma logica para todas las opciones de papel y tijera)
# FinAlgoritmo


#Programacion

# 0 = piedra
# 1 = papel
# 2 = tijera

user_game = ARGV[0]

if user_game != "piedra" && user_game!= "papel" && user_game != "tijera"
    puts "Argumento invalido: Debe ser piedra, papel o tijera."
else
    pc_game = rand(0..2)
    if user_game == "piedra"
        if pc_game == 0 then puts "Computador juega piedra \nEmpataste"
        elsif pc_game == 1 then puts "Computador juega papel \nPerdiste."
        elsif pc_game == 2 then puts "Computador juega tijera \nGanaste!"
        end
    elsif user_game == "papel"
        if pc_game == 0 then puts "Computador juega piedra \nGanaste!"
        elsif pc_game == 1 then puts "Computador juega papel \nEmpataste."
        elsif pc_game == 2 then puts "Computador juega tijera \nPerdiste."
        end
    elsif user_game == "tijera"
        if pc_game == 0 then puts "Computador juega piedra \nPerdiste."
        elsif pc_game == 1 then puts "Computador juega papel \nGanaste!"
        elsif pc_game == 2 then puts "Computador juega tijera \nEmpataste."
        end    
    end
end