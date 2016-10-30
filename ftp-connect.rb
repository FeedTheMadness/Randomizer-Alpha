require 'net/ftp'
require 'base62'

def ftpconnect(domain, login, password)
  # LOGIN and LIST available files at default home directory
  Net::FTP.open(domain, login, password) do |ftp|
    files = !(ftp.closed?())
    return files
  end
end

def random()
  loop do
    #Génération de la suite de caractères
    row = Array.new(Random.rand(16)){rand(62).base62_encode}.join
    return row
  end


puts "Entre le nom de domaine"
domain = gets.chomp

puts "Entre le login"
login = gets.chomp

loop do
  password = random
  state = ftpconnect domain, login, password
  break if state == true
end

puts password
