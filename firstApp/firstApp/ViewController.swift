//
//  ViewController.swift
//  firstApp
//
//  Created by Blair Jordan on 2/19/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
        @IBAction func clickButton(_ sender: Any) {
            imageView.image = UIImage(named:"tarislayup")
            
            print("change clicked")
        }
        
    }

