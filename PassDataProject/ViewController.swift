//
//  ViewController.swift
//  PassDataProject
//
//  Created by Alex Kulish on 26.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func unwindToMainVC(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwind" else { return }
        guard let sourceVC = segue.source as? SecondViewController else { return }
        resultLabel.text = sourceVC.greetingLabel.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

