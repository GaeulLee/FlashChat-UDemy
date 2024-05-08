//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // titleAnimation()
        // 위의 함수와 동일한 효과를 주는 코코아팟 사용
        titleLabel.text = "⚡️FlashChat"
    }
    
    func titleAnimation(){
        titleLabel.text = ""
        var strIndex = 0.0
        let titleText = "⚡️FlashChat"
        for str in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.15 * strIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(str)
            }
            strIndex += 1.0
        }
    }
    

}
