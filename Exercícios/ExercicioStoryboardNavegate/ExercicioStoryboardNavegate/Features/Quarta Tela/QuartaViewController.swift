//
//  QuartaViewController.swift
//  ExercicioStoryboardNavegate
//
//  Created by Juliano Sgarbossa on 09/02/26.
//

import UIKit

class QuartaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNextScreenButton(_ sender: UIButton) {
        let quintaViewController = UIStoryboard(name: "QuintaViewController", bundle: nil).instantiateViewController(withIdentifier: "QuintaViewController")
        
        navigationController?.pushViewController(quintaViewController, animated: true)
    }
    
    @IBAction func tappedBackScreenButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
