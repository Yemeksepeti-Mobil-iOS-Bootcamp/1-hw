import UIKit

func s(str: String,count: Int)-> String{
    
    var newstr=" "
    var count2=0;
    //tüm karakterlerde gezerken
    for char in str {
        //gezdiğim karakterin asciisini bul
        var ascii = char.asciiValue
        //sonra bir daha harfleri baştan gez
        for char2 in str {
            //asciinle yeniden gezdiğin asciiyi karşılaştır aynıysa counter arttır
            if  ascii==char2.asciiValue && ascii != 32 {
                    count2+=1
            }
        }
        //print("\(char) karakterin countu \(count2)")
        //son counterinle girilen değeri karşılaştır
        if count-1>=count2 {
            //strye ekle
            newstr += String(char)
        }
        //Reset the counter
        count2=0
    }
    //return the result
    return newstr
}

print(s(str: "aaba kouq bux",count: 2))
print(s(str: "aaba kouq bux",count: 3))
print(s(str: "aaba kouq bux",count: 4))
/*
Tekrar sayısı 2 verildiğinde : a,b,u silinmeli ve ekrana "koqx" yazmalı
Tekrar sayısı 3 verildiğinde : a silinmeli ve ekrana "b kouq bux"
tekrar sayısı 4 verildiğinde  :  hiç bir harf silinmemeli aynı stringi yazmalı
 */
