//
//  ViewController.swift
//  WordGame4
//
//  Created by İrem Akgoz on 2.06.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblScore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let score = UserDefaults.standard.string(forKey: "score") ?? "0"
        
        lblScore.text = "Last Score: \(score)"
        
    }

    
}
