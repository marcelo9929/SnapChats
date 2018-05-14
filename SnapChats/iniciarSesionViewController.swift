//
//  iniciarSesionViewController.swift
//  SnapChats
//
//  Created by MAC19 on 14/05/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user, error) in
            print("intentando iniciar sesion")
            if error != nil{
                print("Se presento el siguiente error:\(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
    
}

