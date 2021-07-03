import UIKit

var greeting = "Hello, playground"
/**A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3-digit numbers.
 TURKISH
 Palindromik bir sayı her iki şekilde de aynı şekilde okunur. İki basamaklı iki sayının çarpımından yapılan en büyük palindrom 9009 = 91 × 99'dur. 3 basamaklı iki sayının çarpımından oluşan en büyük palindromu bulun.*/


var answer = 0
var k = 0
var s = ""
//bu ilk test caseye göre ayarlandı gerçek sonuç için 10 gördüğün yere 100 99 gördüğün yere 999 yaz
//i 10 dan 99 a kadar
for i in (10...99).reversed() {
    //j 10 dan 99 a kadar
    for j in (10...i).reversed() {
        //i j çarp k olsun bunu string yapıp ters çevirirp karşılaştır doğruysa answe
        k = i * j
        s = String(k)
        if s == String(s.reversed()) && k > answer {
            answer = k
        }
    }
}

print(answer)
