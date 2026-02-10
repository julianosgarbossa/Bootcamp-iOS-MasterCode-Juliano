//
//  ViewController.swift
//  ExercicioStoryboardNavegate
//
//  Created by Juliano Sgarbossa on 09/02/26.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        print(#function)
        print("Da vida a view, nesse caso via storyboard")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        print("Renderiza os elementos da tela")
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
        print("Chamado quando a tela está prestes a aparecer")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
        print("Chamado quando a tela apareceu")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
        print("Chamado quando a tela está prestes a desaparecer")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
        print("Chamado quando a tela desapareceu")
    }

    @IBAction func tappedNextScreenButton(_ sender: UIButton) {
        let segundaViewController = UIStoryboard(name: "SegundaViewController", bundle: nil).instantiateViewController(withIdentifier: "SegundaViewController")
        
        navigationController?.pushViewController(segundaViewController, animated: true)
    }
}

