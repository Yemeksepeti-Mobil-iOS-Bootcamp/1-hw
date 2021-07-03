import UIKit

func a(num1 :Int, num2 :Int, goal: Int)->Int{

    var numm1=num1
    var real1 = num1
    var numm2=num2
    var real2=num2
    var goall=goal
    var mul=0
    
    while  (numm1<goall){
        //ilk sayı goalden küçükken toplama ekle sonra num1 e 3 ekle
        //print(numm1)
        mul+=num1
        numm1 += real1
    }
    while  (numm2<goall){
        if numm2 % 3 != 0 {
            //5 katı olan gezdiğim sayılar üçe bölünemiyorsa toplama ekledim
           // print(numm2)
            mul+=num2
        }
        //5 in katı olan sayıma yine 5 ekliyorum
        numm2 += real2
    }
    //toplam return et
    return mul
    
}
print(a(num1: 3, num2: 5, goal:1000 ))
/**
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.
 TURKISH
 3 veya 5'in katı olan 10'un altındaki tüm doğal sayıları listelersek 3, 5, 6 ve 9 elde ederiz. Bu katların toplamı 23'tür. 1000'in altındaki 3 veya 5'in tüm katlarının toplamını bulun.
 */
