import UIKit

protocol SecondOnboardingView: AnyObject {
    
}

final class DefaultSecondOnboardingView: UIViewController {
    // MARK: Public
    var presenter: SecondOnboardingPresenter!
    
    // MARK: Private
    private let showWelcomViewButton = UIButton()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        setupConstraints()
        configureUI()
        setupBehavior()
    }
    // MARK: - API
    // MARK: - Setups
    private func setupSubviews() {
        view.addSubview(showWelcomViewButton)
    }
    private func setupConstraints() {
        showWelcomViewButton.pin
            .center(in: view)
            .width(to: 120)
            .height(to: 40)
    }
    private func configureUI() {
        title = "Second Onboarding View"
        view.backgroundColor = .white
        
        showWelcomViewButton.setTitle("Next View", for: .normal)
        showWelcomViewButton.setTitleColor(.white, for: .normal)
        showWelcomViewButton.backgroundColor = .systemBlue
        showWelcomViewButton.clipsToBounds = true
        showWelcomViewButton.layer.cornerRadius = 10
    }
    private func setupBehavior() {
        showWelcomViewButton.addTarget(self, action: #selector(showWelcomViewButtonDidTapped), for: .touchUpInside)
    }
    
    // MARK: - Helpers
    @objc private func showWelcomViewButtonDidTapped() {
        presenter.showNextDidTapped()
    }
}

// MARK: - Extensions
extension DefaultSecondOnboardingView: SecondOnboardingView {
    
}
