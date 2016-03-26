#def method (encrypt)

#index=0


#while index < encrypt.length
# encrypt[index] = encrypt[index].next
# index += 1
# end
# puts encrypt
#end


# method "abc" "zed"





#def decrypt(str)

#    y=0
 #   alph="abcdefghijklmnopqrstuvwxyz" 

 
  #   while y < str.length 
   #   str[y] = alph[alph.index(str[y])-1] 
    #  y += 1
     #end

    #str 
#end
#decrypt "abc" "zed"

#decrypt(encrypt("The duck flies at midnight"))






puts "Would you like to encrypt or decrypt a password?"
action=gets.chomp
puts "What is your password?"
password=gets.chomp

if action=encrypt
  puts #{encrypt #{password}}
else
  puts #{decrypt#{password}}
end

def encrypt (str)

index=0


  while index < str.length
    str[index] = str[index].next
    index += 1
  end
  puts str
end

def decrypt(str)

     y=0 
    alph="abcdefghijklmnopqrstuvwxyz"


  while y < str.length 
      str[y] = alph[alph.index(str[y])-1] 
      y += 1
     end
   puts str 
end



  
  












