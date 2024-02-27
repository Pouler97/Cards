//
//  StackView.swift
//  CardFlipper
//
//  Created by Павел Ершов on 28.02.2024.
//

import UIKit

class StackView: UIStackView {
    
    var stackView = UIStackView()
    var button = CardsButtons()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureStackView() {
     
        addSubview(stackView)
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        addButtonToStackView()
        setStackViewConstraints()
    }
    
    func addButtonToStackView() {
        let numberOfButtons = 5
        
        for i in 1...numberOfButtons {
            let button = button
            button.setTitle("\(i)", for: .normal)
            stackView.addArrangedSubview(button)
        }
    }
    
    func setStackViewConstraints() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: bottomAnchor , constant: 30),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -50),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30)
            
        ])
    }
}

