import UIKit
// bu ilk tast caseye göre ayarlandı tam sonuç için 10 gördüğün her yere 20 yaz
var num=10

var flag=0

while(flag==0){
    num+=10
    //10 dan 1 e kadar git
    for number in (1...10).reversed()  {
            //tam bölünmediği birşey bulursan dur
            if(num % number != 0){
                break
            }
            //1 e  kadar tam bölündüyse yazdır ve tüm döngülerden çık
            if number==1 {
                print(num)
                flag=1
                break
                
            }
    }
}
/**
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */
