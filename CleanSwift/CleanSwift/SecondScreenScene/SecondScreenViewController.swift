// SecondScreenViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Второй экран
final class SecondScreenViewController: UIViewController {
    // MARK: - Private Visual Components

    private let astronomyDescriptionTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        return textField
    }()

    // MARK: - Public Properties

    var interactor: SecondScreenBusinessLogic?
    var router: SecondScreenRoutingLogic?

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Public Methods

    func displayInitForm(_ viewModel: AstronomyDescriptionChanged.GetAstronomyDescription.ViewModel) {
        DispatchQueue.main.async {
            self.astronomyDescriptionTextField.text = viewModel.astronomyDescription
        }
    }

    // MARK: - Private Methods

    private func setupUI() {
        view.addSubview(astronomyDescriptionTextField)
        view.backgroundColor = .white
        setupConstraints()
        initForm()
    }

    private func initForm() {
        interactor?.requestInitForm()
    }

    private func setupConstraints() {
        astronomyDescriptionTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            astronomyDescriptionTextField.topAnchor.constraint(equalTo: view.topAnchor),
            astronomyDescriptionTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            astronomyDescriptionTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            astronomyDescriptionTextField.widthAnchor.constraint(equalToConstant: 300),
            astronomyDescriptionTextField.heightAnchor.constraint(equalToConstant: 500),
            astronomyDescriptionTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10)
        ])
    }
}

/// SecondScreenViewControllerProtocol
extension SecondScreenViewController: SecondScreenDisplayLogic {}
