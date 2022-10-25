import UIKit
import EasyAutolayout

protocol FirstOnboardingView: AnyObject {
    
}

class DefaultFirstOnboardingView: UIViewController {
    // MARK: - Properties
    // MARK: Public
    var presenter: FirstOnboardingPresenter!
    
    // MARK: Private
    private let nextViewButton = UIButton()
    
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
        view.addSubview(nextViewButton)
        
    }
    private func setupConstraints() {
        nextViewButton.pin
            .center(in: view)
            .width(to: 120)
            .height(to: 40)
    }
    private func configureUI() {
        view.backgroundColor = .white
        title = "First Onboarding View"
        
        nextViewButton.setTitle("Next View", for: .normal)
        nextViewButton.setTitleColor(.white, for: .normal)
        nextViewButton.backgroundColor = .systemBlue
        nextViewButton.clipsToBounds = true
        nextViewButton.layer.cornerRadius = 10
    }
    private func setupBehavior() {
        nextViewButton.addTarget(self, action: #selector(nextViewButtonDidTapped), for: .touchUpInside)
    }
    // MARK: - Helpers
    @objc private func nextViewButtonDidTapped() {
        presenter.nextButtonDidTapped()
    }
}
// MARK: - Extensions
extension DefaultFirstOnboardingView: FirstOnboardingView {
    
}
