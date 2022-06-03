//
//  DetailViewController.swift
//  WordGame4
//
//  Created by İrem Akgoz on 2.06.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let questions = ["Apple","Yellow","Summer","Red","Busy","Jail","Interrupt","Generate","Appointment","Ignorant","Result","Tangerina","Polar","Trash","Verb","Explore","Destiny","Amusing","Horror","Gardener","Subtitles","Dumb","Math","Cat","Ability","Adult","Battle","Clay","Drill","Elephant","Equal","Fabric","Flat","Gain","Hawk"]
    let answers = [["elma","armut","erik"],
                   ["Sarı","Yeşil","Mavi"],
                   ["Yaz","Kış","İlkbahar"],
                   ["kırmızı","Doğa","İlkbahar"],
                   ["Meşgul","Armut","Erik"],
                   ["Hapis","Kış","İlkbahar"],
                   ["Kesmek","Yeşil","Kapatmak"],
                   ["Üretmek","Kaybolmak","Sevmek"],
                   ["Randevu","Ayrılık","Macera"],
                   ["Cahil","Kaybolmak","kötü"],
                   ["Sonuç","Sebep","suçlu"],
                   ["Mandalina","Armut","Erik"],
                   ["Kutup","Kış","İlkbahar"],
                   ["Çöp","Kaybolmak","Kötü"],
                   ["Fiil","İsim","Zarf"],
                   ["Keşfetmek","Kaybolmak","Aramak"],
                   ["Kader","Kaybolmak","Karanlık"],
                   ["Eğlenceli","Neşeli","Macera"],
                   ["Korku","Çığlık","Katil"],
                   ["Bahçevan","Korkuluk","Güvenlik"],
                   ["Altyazı","Başlık","Eski"],
                   ["Sersem","Neşeli","Mutlu"],
                   ["Matematik","Türkçe","Fen"],
                   ["Kedi","Köpek","Fil"],
                   ["Beceri","Güç","Onur"],
                   ["Yetişkin","Ergen","Çocuk"],
                   ["Savaş","Barış","Devlet"],
                   ["Kil","Toprak","Çamur"],
                   ["Matkap","Toprak","Çamur"],
                   ["Fil","Köpek","Maymun"],
                   ["Eşit","Güç","Onur"],
                   ["Kumaş","Fabrika","İlkbahar"],
                   ["Daire","Başlık","Eski"],
                   ["Kazanmak","Kaybolmak","Aramak"],
                   ["Şahin","Köpek","Maymun"],]
    
    
    

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    
    
    var currentQuestion = 0
    var score = 0
    var righAnswer:UInt32 = 0
    var defaults = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnA.layer.cornerRadius = 10
        btnB.layer.cornerRadius = 10
        btnB.layer.cornerRadius = 10
        
        func viewWillAppear(_ animated: Bool) {
            nextQuestion()
        }


    }
    
    @IBAction func btn(_ sender: UIButton) {
        
        if sender.tag == Int(righAnswer) {
            
            print("RIGHT!!")
            score += 1
        }
        else {
            print("WRONG!!!!!")
        }
        
        if currentQuestion != questions.count {
            
            nextQuestion()
            
        }else {
            defaults.set(String(score), forKey: "score")
            defaults.synchronize()
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    @IBAction func btn1(_ sender: Any) {
        
        if (sender as AnyObject).tag == Int(righAnswer) {
            
            print("RIGHT!!")
            score += 1
        }
        else {
            print("WRONG!!!!!")
        }
        
        if currentQuestion != questions.count {
            
            nextQuestion()
            
        }else {
            defaults.set(String(score), forKey: "score")
            defaults.synchronize()
            self.dismiss(animated: true, completion: nil)
        }
    }
   
    @IBAction func btn2(_ sender: Any) {
        
        if (sender as AnyObject).tag == Int(righAnswer) {
            
            print("RIGHT!!")
            score += 1
        }
        else {
            print("WRONG!!!!!")
        }
        
        if currentQuestion != questions.count {
            
            nextQuestion()
            
        }else {
            defaults.set(String(score), forKey: "score")
            defaults.synchronize()
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func nextQuestion (){
        lblTitle.text = questions[currentQuestion]
        righAnswer = arc4random_uniform(3) + 1
        
        var button = UIButton()
        
        var x = 1
        
        for i in 1...3 {
            
            button = view.viewWithTag(i) as! UIButton
            
            if i == Int(righAnswer) {
                
                button.setTitle(answers[currentQuestion][0], for: .normal)
                
            }else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
            
        }
        
        currentQuestion += 1
        
    }
}
