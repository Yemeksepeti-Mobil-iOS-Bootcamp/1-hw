//
//  ViewController.swift
//  svc
//
//  Created by Umut Öçgüder on 26.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var puan: UILabel!
    @IBOutlet weak var nicknameilk: UITextField!
    @IBOutlet weak var ilkbuton: UIButton!
    @IBOutlet weak var dslider: UISlider!
    @IBOutlet weak var dval: UILabel!
    @IBOutlet weak var deltaslider: UISlider!
    @IBOutlet weak var deltavar: UILabel!
    @IBOutlet weak var vslider: UISlider!
    @IBOutlet weak var vvalue: UILabel!
    @IBOutlet weak var tetaslider: UISlider!
    @IBOutlet weak var tetavalue: UILabel!
    @IBOutlet weak var trowbutton: UIButton!
    @IBOutlet weak var sisekaldirbutton: UIButton!
    @IBOutlet weak var res: UILabel!
    var  counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        struct player{
            
        }
    }

    @IBAction func dchange(_ sender: UISlider) {
        let dvalu = sender.value
        dval.text = "\(dvalu)"
    }
    
    @IBAction func deltachan(_ sender: UISlider) {
        let deltavalu = sender.value
        deltavar.text = "\(deltavalu)"
    }
    
    @IBAction func vchange(_ sender: UISlider) {
        let vvalu = sender.value
        vvalue.text = "\(vvalu)"
    }
    
    @IBAction func tetachange(_ sender: UISlider) {
        let tetavalu = sender.value
        tetavalue.text = "\(tetavalu)"
    }
    
    @IBAction func changefirstbotton(_ sender: Any) {
        let name = nicknameilk.text
        nickname.text = name
        counter = 0
        puan.text = "\(counter)"

        
    }
    
    @IBAction func trow(_ sender: Any) {
        
        var R:Float = 0.0
        var V:Float = vslider.value
        var a:Float = 0.0
        var c:Float = 0.0
        var d:Float = dslider.value
        var teta:Float = tetaslider.value
        var delta:Float = deltaslider.value
        let g:Float = 10
        
        R=V*V*sin(2.0*teta)/g
        print(V)
        print(d)
        print(teta)
        print(delta)
        print(R)
        if R<=d+delta && R>=d-delta {
            res.text = "Düştü"
            counter+=1
            puan.text = "\(counter)"
        }else{
            print("miss")
        }
     
    }
    
    
    @IBAction func sisekaldirfunc(_ sender: Any) {
        res.text = "Ayakta"
    }
    
}

