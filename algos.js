1. //create an array
2. //set length variable to 0
3. //create variable 'longest'
4. //set 'for' loop with i at 0 and < array.length, use i++
5. //use console.log to print

var array = ['word', 'woord', 
           'wooord'];

var length = 0;
var longest;

for(var i=0; i < array.length; i++){
    if(array[i].length > length){
        var length = array[i].length;
        longest = array[i];
    }      
} 
console.log(longest);

//-----------------------------------------------------
//1.create 2 objects
//2.use JSON.parse function (I did have to google 
//a bit to find JSON.parse)
//3. print whether some key, value pairs are ===



var object1 = '{"name":"nick","age":"37","gender":"male"}';
var object2 = '{"name":"bill","age":"32","gender":"male"}';

var object1 = JSON.parse(object1);
var object2 = JSON.parse(object2);

console.log(Object.keys(object1) . some(k1 => 
  Object.keys(object2). some(k2 => object1[k1] === object2[k2])
));
//returns true

var object1 = '{"name":"nick","age":"37","gender":"male"}';
var object2 = '{"name":"bill","age":"32","gender":"ale"}';

var object1 = JSON.parse(object1);
var object2 = JSON.parse(object2);

console.log(Object.keys(object1) . some(k1 => 
  Object.keys(object2). some(k2 => object1[k1] === object2[k2])
));  
//returns false

//--------------------------------------------------------
//1. look up random number generator
// var randomNumber = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
// console.log (randomNumber);
//2. define a random array and define alphabet in an array 
//   var alph = [''a," "b", "c", "d", "e", "f", "g", "h",
// "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", 
// "t", "u", "v", "w", "x", "y", "z"]
// or use CharCode(97 + n) 
// 97 = a 
//3. put the two functions together
// var chr = String.fromCharCode(97 + Math.floor(Math.random() * (10 - 1 + 1)) + 1);
// console.log(chr);
//4. make it produce random string between 1 and 10 letters
//   var times = (Math.floor((Math.random() * 10) + 1));
//for(var i=0; i < times; i++){
//   var chr = String.fromCharCode(97 + Math.floor(Math.random() * (10 - 1 + 1)) + 1);
//console.log(chr);
//}
//5. push the returns into array.
//6. print the array and feed it into the first 
//   function (10 times)


array = [];
var times = (Math.floor((Math.random() * 10) + 1));
for(var i=0; i < times; i++){
var chr = String.fromCharCode(97 + Math.floor(Math.random() * (10 - 1 + 1)) + 1);
array.push(chr);
console.log(array);
}

var times = (Math.floor(10);
for(var i=0; i < times; i++)
var array1 = [];

var length = 0;
var longest;

for(var i=0; i < array1.length; i++){
    if(array1[i].length > length){
        var length = array1[i].length;
        longest = array1[i];
    }      
} 
console.log(longest);




