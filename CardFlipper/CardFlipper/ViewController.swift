//
//  ViewController.swift
//  CardFlipper
//
//  Created by Павел Ершов on 27.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var touchesLabel = TouchesLabel()
    private var stackView = StackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        configureLabel()
        configureStackView()
    }
    
    private func configureLabel() {
        
        view.addSubview(touchesLabel)
        
        NSLayoutConstraint.activate([
            touchesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            touchesLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
        ])
    }
    
    private func configureStackView() {
     
        view.addSubview(stackView)
        
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
                stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                stackView.heightAnchor.constraint(equalToConstant: 320)
            ])
    }
}

