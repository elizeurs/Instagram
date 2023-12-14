//
//  ViewController.swift
//  Instagram
//
//  Created by Elizeu RS on 12/12/23.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    handleNoAuthenticated()
  }
  
  private func handleNoAuthenticated() {
    // Check auth status
    if Auth.auth().currentUser == nil {
      // Show log in
      let loginVC = LoginViewController()
      loginVC.modalPresentationStyle = .fullScreen
      present(loginVC, animated: false)
    }
  }
}

