import UIKit

var greeting = "Hello, playground"
/**The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143 ?
 */
var n=600851475143
var i=2
while i<n {//i n den küçük oldukça
    
    while(n % i == 0)
    {//tam  bölüündükçe yeni n kendisnin i ye bölümü olacak
        n=n/i;
    }
    i+=1 // n i arttır
}
print(n)
