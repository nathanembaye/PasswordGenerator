#list data structure to represent alphabet lowecase and uppercase letters, digits, and special characters
$lowercase = ("a".."z").to_a
$uppercase = ("A".."Z").to_a
$numbers =  ("0".."9").to_a
$special = ["!", "#", "$", "%", "&", "'", "(", ")", "*", "+","-", ".", "/", ":", ";", "<", "=", ">", "?", "@", "[", "]", "^", "_", "{", "|", "}", "~"]


$length = 0
$password = []


#minumum of 10 characters to ensure maximum strength
while $length < 10
    #prompting user to choose random password generator length
    puts "Please enter your desired password length (must be >= 10 characters): "
    $length = gets.chomp.to_i 
end


#loop over collection charactersets [lowercase, uppercase, numbers, special]
#randomly choose which of these to pick character from
#another random index selection for the character in that set
#do this 1*length times

$i = 0
while $i < $length  do

    characterSet = rand(0..3)

    if characterSet == 0 
        #lowercase
        $password.insert($password.length, $lowercase[rand(0..25)])

    elsif characterSet == 1 
        #upperrcase
        $password.insert($password.length, $uppercase[rand(0..25)])

    elsif characterSet == 2 
        #numbers
        $password.insert($password.length, $numbers[rand(0..9)])

    else
        #special 
        $password.insert($password.length, $special[rand(0..27)])
    end

   $i +=1

end

#print password in one line for account to use
puts "Your randomly generated password is: "+ $password.join('')
