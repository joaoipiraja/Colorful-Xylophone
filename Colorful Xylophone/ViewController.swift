//
//  ViewController.swift
//  Colorful Xylophone
//
//  Created by João Victor Ipirajá de Alencar on 14/12/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    func playSound(note:String) {
           let url = Bundle.main.url(forResource: note, withExtension: "wav")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
                   
       }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
     
        UIView.animate(withDuration: 0.3) {
             sender.alpha = 0.5
         }

         DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
             UIView.animate(withDuration: 0.3) {
                 sender.alpha = 1.0
             }
         }
        
        playSound(note: sender.currentTitle!)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

