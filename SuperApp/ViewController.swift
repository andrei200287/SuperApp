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
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet var myView: UIView!
    
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        
        switch segmentControlOutlet.selectedSegmentIndex {
        case 0:
            textLabel.text = getLabelText()
            myimage.image = UIImage (named: "kyiw")
            UIView.transition(with: myimage, duration: 0.75, options: .transitionCrossDissolve, animations: {
                self.myimage = self.myimage
            })
        case 1:
            textLabel.text = getLabelText()
            myimage.image = UIImage (named: "bangkok")
            UIView.transition(with: myimage, duration: 0.75, options: .transitionCrossDissolve, animations: {
                self.myimage = self.myimage
            })
        case 2:
            textLabel.text = getLabelText()
            myimage.image = UIImage (named: "istanbul")
                UIView.transition(with: myimage, duration: 0.75, options: .transitionCrossDissolve, animations: {
                    self.myimage = self.myimage
                })
        default:
            break
            
        }
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.startTimer()
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval:  1, repeats: true) { [self] (_) in
            
            textLabel.text = getLabelText()

        }
    }
    func getLabelText() -> String {
        
        let date = Date()
        
        var currentTime: String = ""
        if segmentControlOutlet.selectedSegmentIndex == 0 {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "hh:mm:ss"
            dateFormatter.timeZone = TimeZone(identifier: "Europe/Kyiv")
            currentTime = dateFormatter.string(from: date) }
        else {
            
        if segmentControlOutlet.selectedSegmentIndex == 2 {
                let dateFormatter3 = DateFormatter()
                dateFormatter3.dateFormat = "hh:mm:ss"
                dateFormatter3.timeZone = TimeZone(identifier: "Europe/Istanbul")
                currentTime = dateFormatter3.string(from: date)
            } else {
                let dateFormatter2 = DateFormatter()
                dateFormatter2.dateFormat = "hh:mm:ss"
                dateFormatter2.timeZone = TimeZone(identifier: "Asia/Bangkok")
                currentTime = dateFormatter2.string(from: date)
            }
    
        }
        return currentTime
    }
}
