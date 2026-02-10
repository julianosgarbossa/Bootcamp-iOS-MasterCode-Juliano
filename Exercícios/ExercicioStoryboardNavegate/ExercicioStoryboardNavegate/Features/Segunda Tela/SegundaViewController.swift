//
//  SegundaViewController.swift
//  ExercicioStoryboardNavegate
//
//  Created by Juliano Sgarbossa on 09/02/26.
//

import UIKit

class SegundaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedNextScreenButton(_ sender: UIButton) {
        let terceiraViewController = UIStoryboard(name: "TerceiraViewController", bundle: nil).instantiateViewController(withIdentifier: "TerceiraViewController")
        
        navigationController?.pushViewController(terceiraViewController, animated: true)
    }
    
    @IBAction func tappedBackScreenButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
