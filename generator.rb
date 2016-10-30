#Librairies
require 'net/ftp'
require "base62"
#Initialisation du compteur
n = 0

#Démarage de la loop
loop do
  #Génération de la suite de caractères
  row = Array.new(Random.rand(6..14)){rand(62).base62_encode}.join
  puts row
  #Initeration du compteur
  n += 1
  #Arrête la boucle si le compteur atteint 100
  break if n == 100
end
