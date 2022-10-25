import UIKit

protocol MainWelcomeView: AnyObject {
  
}

final class DefaultMainWelcomeView: UIViewController {
    // MARK: - Properties
    
    // MARK: Public
    var presenter: MainWelcomePresenter!
    
    // MARK: Private
    private let showFirstWelcomeButton = UIButton()
    private let showSecondWelcomeButton = UIButton()
    
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
        [showFirstWelcomeButton, showSecondWelcomeButton].forEach { view.addSubview($0) }
    }
    private func setupConstraints() {
        showFirstWelcomeButton.pin
            .center(in: view)
            .width(to: 150)
            .height(to: 40)
        showSecondWelcomeButton.pin
            .below(of: showFirstWelcomeButton, offset: 20)
            .centerX(in: showFirstWelcomeButton)
            .width(to: 150)
            .height(to: 40)
    }
    private func configureUI() {
        title = "Welcome View"
        view.backgroundColor = .white
        
        showFirstWelcomeButton.setTitle("First Welcome", for: .normal)
        showFirstWelcomeButton.setTitleColor(.white, for: .normal)
        showFirstWelcomeButton.backgroundColor = .systemBlue
        showFirstWelcomeButton.clipsToBounds = true
        showFirstWelcomeButton.layer.cornerRadius = 10
        
        showSecondWelcomeButton.setTitle("Second Welcome", for: .normal)
        showSecondWelcomeButton.setTitleColor(.white, for: .normal)
        showSecondWelcomeButton.backgroundColor = .systemBlue
        showSecondWelcomeButton.clipsToBounds = true
        showSecondWelcomeButton.layer.cornerRadius = 10
    }
    private func setupBehavior() {
        showFirstWelcomeButton.addTarget(self, action: #selector(showFirstWelcomeButtonDidTapped), for: .touchUpInside)
        showSecondWelcomeButton.addTarget(self, action: #selector(showSecondWelcomeButtonDidTapped), for: .touchUpInside)

    }
    // MARK: - Helpers
    @objc private func showFirstWelcomeButtonDidTapped() {
        presenter.showFirstWelcomeView()
    }
    @objc private func showSecondWelcomeButtonDidTapped() {
        presenter.showSecondWelcomeView()
    }
}
// MARK: - Extensions
extension DefaultMainWelcomeView: MainWelcomeView {

}
