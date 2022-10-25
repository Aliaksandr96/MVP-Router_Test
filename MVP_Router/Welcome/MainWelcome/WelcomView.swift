import UIKit

protocol MainWelcomeView: AnyObject {
    
}

final class DefaultMainWelcomeView: UIViewController {
    // MARK: - Properties
    
    // MARK: Public
    var presenter: MainWelcomePresenter!
    
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
        title = "Welcome View"
        view.backgroundColor = .white
        
    }
    private func setupBehavior() {
        
    }
    // MARK: - Helpers
}
// MARK: - Extensions
extension DefaultMainWelcomeView: MainWelcomeView {
    
}
