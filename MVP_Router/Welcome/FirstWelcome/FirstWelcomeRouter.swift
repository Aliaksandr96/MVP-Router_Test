import UIKit

protocol FirstWelcomRouterInput {
    
}

final class FirstWelcomRouter {
    // MARK: Public
    let navigationController: UINavigationController
    let window: UIWindow
    
    // MARK: Private
    
    // MARK: - Lifecycle
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
        let view = DefaultFirstWelcomeView()
        let presenter = DefaultFirstWelcomeViewPresenter(view: view, router: self)
        view.presenter = presenter
        navigationController.pushViewController(view, animated: true)
    }
}

// MARK: - Extensions
extension FirstWelcomRouter: FirstWelcomRouterInput {
    
}
