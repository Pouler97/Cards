//
//  CardsButtons.swift
//  CardFlipper
//
//  Created by Павел Ершов on 27.02.2024.
//

import UIKit

class CardsButtons: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        backgroundColor = .blue
        setTitleColor(.black, for: .normal)
        titleLabel?.text = "Button"
        tintColor = .black
        translatesAutoresizingMaskIntoConstraints = false
    }
}
