import UIKit

// MARK:- İki parametreli ve FARKLI tipli bir generic örneği yapınız... (T, U) ???
func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
let doubleIndex = findIndex(of: 9.3, in: [3.14159, 0.1, 0.25])
// doubleIndex is an optional Int with no value, because 9.3 isn't in the array
let stringIndex = findIndex(of: "Andrea", in: ["Mike", "Malcolm", "Andrea"])
print(stringIndex)
// stringIndex is an optional Int containing a value of 2
/**
 
 
 func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
     // function body goes here
 }
 
 */


/*
The sum of the squares of the first ten natural numbers is,

The square of the sum of the first ten natural numbers is,

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

*/
var smaller = 0
var bigger = 0
//first case için 100 ü 10 yap
for num in 1...100 {
    //1'den 100 e kadar gezerken smaller number a gezdiğim sayıların çarpımını attım ve topladım
    smaller+=num*num
    //1'den 100 e kadar gezerken sayıları toplayıp biggera attım
    bigger+=num
}
//toplanan sayıların karesini aldım
bigger*=bigger
//büyük değerden küçük değeri çıkarttım
bigger-smaller


/**
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

 What is the 10 001st prime number?
 */
func is_prime(n : Int) -> Bool{
    //prime olup olmadığını bool döndüren func
    if n <= 1{
        return false
    }
    if n <= 3{
        return true
    }
   var  i = 2
        while i*i <= n{
            if n % i == 0{
                return false
            }
            i = i + 1
        }
        return true
}

var counterPrime = 0
var num = 1

while 1 == 1 {
    //her döngüder num arttırdım her sayıyı kontrol etmek için
    num += 1
    if is_prime(n: num) {
        // primeyse counterımı arttırdım ve eğer sayacım istediğimci primeye geldiyse o sayıyı yazdırıp sonsuz döngüyü break ettim.
        counterPrime += 1
        //10001 yerine 6 yazabilirsin first test-case için
        if counterPrime == 10001 {
            print(num)
            break
            break
        }
    }
   
}



//MARK: girilen bir sayının asal olup olmadığını bulan ext
extension Int{
    func isasal() -> Bool {
        
        var i = self-1
        
        while i != 1 {
            //  1 e gelene kadar kontrol et
            if self % i == 0 {
                //herhangi bir i ye bölünüyorsa false returnle
                return false
            }else{
                //bölünmüyorsa 1 azalt bir daha dönsün
                i -= 1
            }
            
        }
        //hiç false dönmemişse true dir
        return true
       
    }
    
}
9.isasal()

//MARK: If let - guard let kullanım tercihini neye göre belirlersiniz?
/**
 Genel olarak, if-let bloğu işlevin geri kalanı olacaksa veya onun else cümleciği içinde bir return veya abort olacaksa, bunun yerine guard kullanmanız gerekir.
 */

//MARK: static keyword neden kullanırız. Örnek bir kullanım yapınız
//o classa ait bir özellikse statik kullanırım
struct insan {
    static var hobi = "Yemeksepeti'nden yemek söylemek"
    var name: String
}

let umut = insan(name: "Umut")
