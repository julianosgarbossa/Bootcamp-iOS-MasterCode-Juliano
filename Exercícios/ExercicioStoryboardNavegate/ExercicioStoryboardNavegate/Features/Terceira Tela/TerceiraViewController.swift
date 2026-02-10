//
//  TerceiraViewController.swift
//  ExercicioStoryboardNavegate
//
//  Created by Juliano Sgarbossa on 09/02/26.
//

import UIKit

class TerceiraViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNextScreenButton(_ sender: UIButton) {
        let quartaViewController = UIStoryboard(name: "QuartaViewController", bundle: nil).instantiateViewController(withIdentifier: "QuartaViewController")
        
        navigationController?.pushViewController(quartaViewController, animated: true)
    }
    
    @IBAction func tappedBackScreenButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
