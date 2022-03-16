//
//  SelectedColorViewController.swift
//  Colors
//
//  Created by Yashom on 15/03/22.
//

import UIKit

class SelectedColorViewController: UIViewController {
    
    var selectedColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = selectedColor
    }
    

  

}
