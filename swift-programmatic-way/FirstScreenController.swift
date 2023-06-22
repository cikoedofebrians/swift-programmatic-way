//
//  ViewController.swift
//  swift-programmatic-way
//
//  Created by Ciko Edo Febrian on 23/06/23.
//

import UIKit

class FirstScreenController: UIViewController {

    
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupButton()
    }

    
    func setupButton(){
        view.addSubview(button)
        button.configuration = .filled()
        button.configuration?.title = "Next"
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 8.0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreenController()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }

}

