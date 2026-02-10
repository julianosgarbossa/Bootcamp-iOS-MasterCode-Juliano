//
//  QuintaViewController.swift
//  ExercicioStoryboardNavegate
//
//  Created by Juliano Sgarbossa on 09/02/26.
//

import UIKit

class QuintaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedGoRootButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
