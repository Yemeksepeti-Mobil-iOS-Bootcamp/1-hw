import UIKit
/**
 Elimizde uzun bir cümle olsun, Bazı kelimeler tekrar edecek bir cümle düşünün. İstediğimiz ise, hangi kelimeden kaç tane kullanıldığını bulmanız.
*/
//dictionarry kullandım
func wordCount(s: String) -> Dictionary<String, Int> {
 
    var words = s.components(separatedBy: NSCharacterSet.whitespaces)
    var wordDictionary = Dictionary<String, Int>()
    //wordde gezerken
    for word in words {
        if let count = wordDictionary[word] {
            //eğer varsa count arttır
            wordDictionary[word] = count + 1
        } else {
            //yoksa oluştur
            wordDictionary[word] = 1
        }
    }
    return wordDictionary
}

print(wordCount(s: "asd asd asd . ss ss w"))
/**
 "merhaba nasılsınız iyiyim siz nasılsınız bende iyiyim a a a"
 out :
 merhaba 1
 nasılsınız 2
 iyiyim 2
 siz 1
 bende 1
 a 3
*/


/**
 import UIKit

var last: String = ""
func a(Str: String){
    let Arr = Str.split{$0 == " "}.map(String.init)
    var counter=0
    var isWrited = false
   
    for i in Arr {
        for a in Arr {
            if i==a {
                counter+=1
            }
        }
        //daha önceden yazılmamışsa
        if isWrited==false {
//            last = i
//            last = counter(String)
            print(i)
            print(counter)
        }
        isWrited=false
        counter=0
    }
}
a(Str: "merhaba nasılsınız iyiyim . siz nasılsınız . bende iyiyim a a a")
*/
