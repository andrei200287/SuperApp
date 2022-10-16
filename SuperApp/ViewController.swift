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
        self.startTimer()
            
        
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval:  1, repeats: true) { (_) in
            
            self.textLabel.text = self.getLabelText()
        }
    }
    func getLabelText() -> String {
        let date = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss"
        dateFormatter.timeZone = TimeZone(identifier: "Europe/Kyiv")
        let currentTime = dateFormatter.string(from: date)
        
        
        let dateFormatter2 = DateFormatter()
        dateFormatter2.dateFormat = "hh:mm:ss"
        dateFormatter2.timeZone = TimeZone(identifier: "Asia/Bangkok")
        let currentTime2 = dateFormatter2.string(from: date)
        
        self.textLabel.text = "Kyiw:\(currentTime)\nBangkok:\(currentTime2)"
    
        return "Kyiw:\(currentTime)\nBangkok:\(currentTime2)"
    }
    
}
