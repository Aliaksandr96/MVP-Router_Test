import UIKit

protocol FirstWelcomeView: AnyObject {
    
}

final class DefaultFirstWelcomeView: UIViewController {
    // MARK: - Properties
    // MARK: Public
    var presenter: FirstWelcomeViewPresenter!
    
    // MARK: Private
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
        
    }
    private func setupConstraints() {
        
    }
    private func configureUI() {
        title = "First Welcome View"
        view.backgroundColor = .white
        
    }
    private func setupBehavior() {
        
    }
    // MARK: - Helpers
}

// MARK: - Extensions
extension DefaultFirstWelcomeView: FirstWelcomeView {
    
}
