//1. use .split("") (does .split work in js?) to create an //array of letters.  
//2. make word index <= 44  (//PNEUMONOULTRAMICROSCOPICSILICOVOLCANOCONIOSIS the longest //word in the english language is 45 letters).
//3. use i-- to count backwards and print from [44], use .join (//does .join work in js?) to reform a string from the array.
//-- This doesn't work.
//1. create empty array
//2. set i to word.length - 1
//3.use i-- countdown function
//4.return using .join 


function reverse(word) {
  var x = [];
  for (var i = word.length - 1, y = 0; i >= 0; i--, y++)
    x[y] = word[i];
  return x.join('');
}
  word = "code";
  reverse(word);