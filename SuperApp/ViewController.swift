//
//  ViewController.swift
//  SuperApp
//
//  Created by Andrei Solovjev on 05/10/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segmentControlOutlet: UISegmentedControl!
   
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        let date = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss"
        dateFormatter.timeZone = TimeZone(identifier: "Europe/Kyiv")
        let currentTime = dateFormatter.string(from: date)
        
        
        let dateFormatter2 = DateFormatter()
        dateFormatter2.dateFormat = "hh:mm:ss"
        dateFormatter2.timeZone = TimeZone(identifier: "Asia/Bangkok")
        let currentTime2 = dateFormatter2.string(from: date)
        
        if sender.selectedSegmentIndex == 0 {
            self.textLabel.text = "\(currentTime)" }
        if sender.selectedSegmentIndex == 1 {
            self.textLabel.text = "\(currentTime2)" }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.startTimer()
        
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval:  1, repeats: true) { [self] (_) in
            textLabel.text = self.textLabel.text
        
            
        }
    }
    
    
}
