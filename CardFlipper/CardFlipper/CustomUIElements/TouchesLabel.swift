//
//  TouchesLabel.swift
//  CardFlipper
//
//  Created by Павел Ершов on 27.02.2024.
//

import UIKit

class TouchesLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
     
        text = "Touches: 0"
        font = .boldSystemFont(ofSize: 30)
        textColor = .black
        sizingRule = .typographic
        translatesAutoresizingMaskIntoConstraints = false
    }
}
