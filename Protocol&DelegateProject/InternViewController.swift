//
//  ViewController.swift
//  Protocol&DelegateProject
//
//  Created by Sadia on 8/8/23.
//

import UIKit

class InternViewController: UIViewController {
    
    @IBOutlet weak var selectedImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        
        let bossViewController = self.storyboard?.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
        bossViewController.seletectedDelegate = self
                
        self.navigationController?.pushViewController(bossViewController, animated: true)
    }
    

}

extension InternViewController: SelectionDelegate{
    func didChoice(image: UIImage, backgroundColor: UIColor) {
        selectedImageView.image = image
        view.backgroundColor = backgroundColor
    }
    
    
}

