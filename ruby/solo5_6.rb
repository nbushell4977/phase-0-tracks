#Create 2 arrays
#split real name into characters
#set up vowel list
#which letters are vowels?
#Move vowels forward 1 index
#move consonants forward 1 index, if a 'z' make it a 'b'
#create interface
#break loop at 'quit'
#print 'thank you' message
#print alias 



real_name = []
$alias_list = []

def new_real_name(name)
    real_name = ""
    split_name = name.split('')
    vowel = "aeiou"
     
    count = 0 
    while count < split_name.length
        
       
        if vowel.index(split_name[count])
            
            if split_name[count] == "u"
                real_name = real_name + "a"
            else 
                 real_name = real_name + vowel[vowel.index(split_name[count]) + 1]
            end
        
        elsif split_name[count] == " "
            real_name = real_name + " "
        
        else 
            consonants = split_name[count].next 
            if vowel.index(consonants.downcase)
                real_name = real_name + consonants.next
            elsif split_name[count] == "z"
                real_name = real_name + "b"
            elsif split_name[count] == "Z"
                real_name = real_name + "B"
            else
                 real_name = real_name +  consonants
            end
        end
        count += 1
    end
     $alias_list << name =  real_name
end

#interface
p "Enter your name"
p "Or enter 'quit'"

name = ''
until name == 'quit'
    orginal_name = gets.chomp
    name = orginal_name
    swap_names = name.split(' ')
    first_name = swap_names[0]
    last_name = swap_names[1]
    if last_name != nil
        name = last_name  + " " + first_name
    end
    if name == 'quit'
        break
    end
    real_name << orginal_name
    new_real_name(name)
    p "Enter your name"
    p "Or enter 'quit'"
end


p "Thank you for generating your alias..."


count = 0
while count < real_name.count
    p "Your name is #{real_name[count]} with an alias of #{$alias_list[count]}"
    count += 1
end