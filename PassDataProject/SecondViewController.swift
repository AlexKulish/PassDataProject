//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Alex Kulish on 26.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String?

    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = login else { return }
        greetingLabel.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwind", sender: nil)
    }
    
}
