//
//  BossViewController.swift
//  Protocol&DelegateProject
//
//  Created by Sadia on 8/8/23.
//

import UIKit

protocol SelectionDelegate {
    func didChoice(image:UIImage, backgroundColor: UIColor)
}

class BossViewController: UIViewController {
    
    var seletectedDelegate: SelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func uiKitButtonTapped(_ sender: UIButton) {
        
        seletectedDelegate.didChoice(image: UIImage(named: "uikit")!, backgroundColor: UIColor.orange)
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func swiftUIuttonTapped(_ sender: UIButton) {
        
        seletectedDelegate.didChoice(image: UIImage(named: "swiftUI")!, backgroundColor: UIColor.blue)
        navigationController?.popViewController(animated: true)
    }
    

}
