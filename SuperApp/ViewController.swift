//
//  ViewController.swift
//  SuperApp
//
//  Created by Andrei Solovjev on 05/10/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func clickButton(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
       
        
        Timer.scheduledTimer(withTimeInterval:  1, repeats: true) { (_) in
            
            let date = Date()
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "hh:mm:ss"
            dateFormatter.timeZone = TimeZone(identifier: "Europe/Kyiv")
            let currentTime = dateFormatter.string(from: date)
            
            
            let dateFormatter2 = DateFormatter()
            dateFormatter2.dateFormat = "hh:mm:ss"
            dateFormatter2.timeZone = TimeZone(identifier: "Asia/Bangkok")
            let currentTime2 = dateFormatter2.string(from: date)
            
            
            self.textLabel.text = "Kyiv: \(currentTime)\nBangkok: \(currentTime2)"
            
            
        }
    }
}
