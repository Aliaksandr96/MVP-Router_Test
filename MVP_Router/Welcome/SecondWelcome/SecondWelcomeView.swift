import UIKit

protocol SecondWelcomeView: AnyObject {
    
}

final class DefaultSecondWelcomeView: UIViewController {
    // MARK: Public
    var presenter: SecondWelcomeViewPresenter!
    
    // MARK: Private
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        setupConstraints()
        configureUI()
        setupBehavior()

    }

    // MARK: - Setups
    private func setupSubviews() {
        
    }
    private func setupConstraints() {
        
    }
    private func configureUI() {
        title = "Second Welcome View"
        view.backgroundColor = .white
        
    }
    private func setupBehavior() {
        
    }
    // MARK: - Helpers
}

// MARK: - Extensions
extension DefaultSecondWelcomeView: SecondWelcomeView {
    
}
