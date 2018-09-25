//
//  ViewController.swift
//  Simon
//
//  Created by REGALADO-MORALES,ARM ADRIAN on 9/19/18.
//  Copyright © 2018 REGALADO-MORALES,ARM ADRIAN. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    
    
    @IBOutlet var colorDisplays: [UIView]!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var colorsFrame: UIView!
    
    var sound: AVAudioPlayer?
    var timer = Timer()
    var pattern = [Int]()
    var index = 0
    var playerTurn = false
    var gameOver = true
    
    
    @IBAction func onStartButtonTapped(_ sender: Any) {
    }
    
    @IBAction func onColorTapped(_ sender: UITapGestureRecognizer) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func playSound(fileName: String){
            if let path = Bundle.main.path(forResource: fileName, ofType: "wav"){
                let url = URL(fileURLWithPath: path)
                do{
                    self.sound = try AVAudioPlayer(contentsOf: url)
                    self.sound?.play()
                }
                catch {
                    print("Cant find file")
                }
            }
        }
        func addToPattern() {
            pattern.append(Int(arc4random_uniform(4)))
        }
        func restart() {
            pattern.removeAll()
            index = 0
            addToPattern()
            startButton.alpha = 1.0
        }
        
        func flashColor(number: Int) {
            self.playSound(fileName: String(number))
            UIView.transition(with: colorDisplays[numbers], duration: 0.2, options: transitionCrossDissolve, animations: {
                self.colorDisplays[numbers].alpha = 1.0
            }
            
        }
        
        
        
    }



}

