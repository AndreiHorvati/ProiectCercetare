//
//  ViewController.swift
//  IncrementUIKit
//
//  Created by Andrei Horvati on 27.11.2022.
//

import UIKit

class ViewController: UIViewController {
    private var count = 0
    private var mainVStack: UIStackView!
    private var label: UILabel!
    private var hStack: UIStackView!
    private var incrementButton: UIButton!
    private var decrementButton: UIButton!
    
    @objc private func increment() {
        count += 1
        label.text = "Count: \(count)"
        
        if count % 2 == 0 {
            label.textColor = .green
        } else {
            label.textColor = .red
        }
    }
    
    @objc private func decrement() {
        count -= 1
        label.text = "Count: \(count)"
        
        if count % 2 == 0 {
            label.textColor = .green
        } else {
            label.textColor = .red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel()
        label.text = "Count: \(count)"
        label.font = .preferredFont(forTextStyle: .title1)
        label.textColor = .green
        
        mainVStack = UIStackView()
        mainVStack.axis = .vertical
        mainVStack.backgroundColor = .gray
        mainVStack.frame = view.bounds
        mainVStack.alignment = .center
        
        hStack = UIStackView()
        hStack.axis = .horizontal
        hStack.spacing = 20
        hStack.alignment = .center
        
        incrementButton = UIButton(configuration: .borderedProminent())
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.titleLabel?.font = .preferredFont(forTextStyle: .title3)
        incrementButton.addTarget(self, action: #selector(increment), for: .touchUpInside)
        
        decrementButton = UIButton(configuration: .borderedProminent())
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.titleLabel?.font = .preferredFont(forTextStyle: .title3)
        decrementButton.addTarget(self, action: #selector(decrement), for: .touchUpInside)
        
        hStack.addArrangedSubview(incrementButton)
        hStack.addArrangedSubview(decrementButton)
        mainVStack.addArrangedSubview(label)
        mainVStack.addArrangedSubview(hStack)
        view.addSubview(mainVStack)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: mainVStack.topAnchor, constant: 100)
        ])
    }
}

