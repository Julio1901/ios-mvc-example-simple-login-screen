//
//  ViewController.swift
//  MVCSimpleStudyExample
//
//  Created by Julio Cesar Pereira on 19/04/24.
//

import UIKit

class LoginViewController: UIViewController {

    //When I type, the View notifies the Controller, and then the Controller performs the necessary logic. That is MVC flow.
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBAction func loginButtonAction(_ sender: Any) {
        //Ignore the force unwrap operator in this example
        NetworkService.shared.login(email: emailTextField.text!, password: passwordtextField.text!, completion: { success in
            if success{
                self.goToHomePage()
            }else{
                print("Invalid credentials")
            }
            
        })
    }
    
    private func goToHomePage() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        passwordtextField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
    }
    
    
    //This is a simple validation, not important for the example
    @objc private func validateFields() {
        loginBtn.isEnabled = emailTextField.text != "" && passwordtextField.text != ""
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

