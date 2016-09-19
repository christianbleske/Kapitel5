//
//  ViewController.swift
//  UIAlertControllerBsp
//
//  Created by Christian Bleske on 22.12.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStdUIAlertControllerPressed(_ sender: AnyObject) {
        let uiAlertController = UIAlertController(title: "Standard Alert", message: "Beispiel für einen Standard-Dialog.", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Abbrechen", style: .cancel) { (action) in
            // Code welcher bei Betätigung des Abbrechen-Button ausgeführt wird...
            self.uiLabel.text = "Abbrechen-Button wurde betätigt"
        }
        uiAlertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            // Code welcher bei Betätigung des Ok-Button ausgeführt wird...
            self.uiLabel.text = "Ok-Button wurde betätigt"
        }
        uiAlertController.addAction(OKAction)
        
        self.present(uiAlertController, animated: true) {
            // Code welcher nach Aufruf des Dialogs ausgeführt wird...
            self.uiLabel.text = "Dialog wird angezeigt!"
        }
    }

    @IBAction func btnAlert3Button(_ sender: AnyObject) {
        let uiAlertController = UIAlertController(title: "Beispiel", message: "Dialog mit drei Schaltflächen...", preferredStyle: .alert)
        
        let btnOneAction = UIAlertAction(title: "Eins", style: .default) { (action) in
            self.uiLabel.text = "Button 1 wurde betätigt"
        }
        let btnTwoAction = UIAlertAction(title: "Zwei", style: .default) { (action) in
            self.uiLabel.text = "Button 2 wurde betätigt"
        }
        let btnThreeAction = UIAlertAction(title: "Drei", style: .default) { (action) in
            self.uiLabel.text = "Button 3 wurde betätigt"
        }
        let btnCancelAction = UIAlertAction(title: "Abbrechen", style: .cancel) { (action) in
            self.uiLabel.text = "Abbrechen-Button wurde betätigt"
        }
        
        uiAlertController.addAction(btnOneAction)
        uiAlertController.addAction(btnTwoAction)
        uiAlertController.addAction(btnThreeAction)
        uiAlertController.addAction(btnCancelAction)
        
        self.present(uiAlertController, animated: true) {
            // Code welcher nach Aufruf des Dialogs ausgeführt wird...
            self.uiLabel.text = "Dialog mit Buttons wird angezeigt!"
        }
    }
    
    
    @IBAction func btnDialogWithTextFields(_ sender: AnyObject) {
       let uiAlertController = UIAlertController(title: "Beispiel", message: "Dialog mit Eingabefeldern...", preferredStyle: .alert)
        
        let uiAlertLogAction = UIAlertAction(title: "Anmeldung", style: .default) { (action) in
            let logTextField = uiAlertController.textFields![0] as UITextField
            let pwdTextField = uiAlertController.textFields![1] as UITextField
            
            self.uiLabel.text = "Anmeldung Action!"
        }
        uiAlertLogAction.isEnabled = false
        
        let changePwdAction = UIAlertAction(title: "Passwort vergessen", style: .destructive) { (action) in
            self.uiLabel.text = "Passwort vergssen Action!"
        }
        
        let cancelAction = UIAlertAction(title: "Abbrechen", style: .cancel) { (action) in
            self.uiLabel.text = "Abbrechen Action!"
        }
        
        uiAlertController.addTextField { (textField) in
            textField.placeholder = "Benutzername"
            
            NotificationCenter.default.addObserver(forName: NSNotification.Name.UITextFieldTextDidChange, object: textField, queue: OperationQueue.main) { (notification) in
                uiAlertLogAction.isEnabled = textField.text != ""
            }
        }
        
        uiAlertController.addTextField { (textField) in
            textField.placeholder = "Passwort"
            textField.isSecureTextEntry = true
        }
        
        uiAlertController.addAction(uiAlertLogAction)
        uiAlertController.addAction(changePwdAction)
        uiAlertController.addAction(cancelAction)
        
        self.present(uiAlertController, animated: true) {
            // Code welcher nach Aufruf des Dialogs ausgeführt wird...
            self.uiLabel.text = "Anmeldedialog wurde angezeigt!"
        }
        
    }
    
    
}

