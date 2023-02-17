// MainScreenViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Стартовый экран приложения
final class MainScreenViewController: UIViewController {
    // MARK: - Private Visual Components

    private let astronomyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let astronomyTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()

    private let astronomyDescriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        label.numberOfLines = 10
        return label
    }()

    // MARK: - Public Properties

    var mainScreenInteractor: MainScreenBusinessLogic?
    var mainScreenRouter: MainScreenRoutingLogic?
    var astronomy: Astronomy?

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Public Methods

    func displayInitForm(_ viewModel: MainScreenInputModel.InitForm.ViewModel) {
        DispatchQueue.main.async {
            self.astronomy = viewModel.astronomyInfo
            self.astronomyTitleLabel.text = self.astronomy?.title
            self.astronomyDescriptionLabel.text = self.astronomy?.explanation
        }
    }

    func displayWebURL(_ viewModel: MainScreenInputModel.InitForm.ViewModel) {
        DispatchQueue.main.async {
            self.astronomyImageView.image = UIImage(data: viewModel.astronomyImage ?? Data())
        }
    }

    // MARK: - Private Methods

    @objc private func routToSecondScreenAction(_ sender: UITapGestureRecognizer) {
        mainScreenRouter?.routToSecondScreenViewController()
    }

    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(astronomyImageView)
        view.addSubview(astronomyTitleLabel)
        view.addSubview(astronomyDescriptionLabel)
        setupConstraints()
        initForm()
        setupGestureRecogniser()
    }

    private func setupGestureRecogniser() {
        let tapGestureRecogniser = UITapGestureRecognizer(
            target: self,
            action: #selector(routToSecondScreenAction)
        )
        astronomyImageView.isUserInteractionEnabled = true
        astronomyImageView.addGestureRecognizer(tapGestureRecogniser)
    }

    private func initForm() {
        mainScreenInteractor?.requestInitForm()
        mainScreenInteractor?.requestWebURL()
    }

    private func setupConstraints() {
        astronomyImageView.translatesAutoresizingMaskIntoConstraints = false
        astronomyTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        astronomyDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            astronomyImageView.topAnchor.constraint(equalTo: view.topAnchor),
            astronomyImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            astronomyImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            astronomyImageView.widthAnchor.constraint(equalToConstant: 300),
            astronomyImageView.heightAnchor.constraint(equalToConstant: 150),
            astronomyTitleLabel.topAnchor.constraint(equalTo: astronomyImageView.bottomAnchor, constant: 10),
            astronomyTitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            astronomyTitleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
            astronomyTitleLabel.widthAnchor.constraint(equalToConstant: 200),
            astronomyTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            astronomyDescriptionLabel.topAnchor.constraint(equalTo: astronomyTitleLabel.bottomAnchor, constant: 10),
            astronomyDescriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            astronomyDescriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
            astronomyDescriptionLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10),
            astronomyDescriptionLabel.widthAnchor.constraint(equalToConstant: 200),
            astronomyDescriptionLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

/// MainScreenViewControllerProtocol
extension MainScreenViewController: MainScreenDisplayLogic {}

/// DeepLink
extension MainScreenViewController {
    func handleDeepLink(_ deepLink: DeepLink) {
        switch deepLink {
        case .home:
            break
        case .scan:
            break
        }
    }
}
