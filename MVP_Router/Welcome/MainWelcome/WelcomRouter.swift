import UIKit

protocol MainWelcomeRouterInput {
    
}

final class MainWelcomeRouter {
    
    // MARK: Public
 
    // MARK: Private
    private let navigationController: UINavigationController
    private let window: UIWindow
    
    // MARK: - Lifecycle
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
        let view = DefaultMainWelcomeView()
        let presenter = DefaultMainWelcomePresenter(view: view, router:  self)
        view.presenter =  presenter
        navigationController.pushViewController(view, animated: true)
    }
}

// MARK: - Extensions
extension MainWelcomeRouter: MainWelcomeRouterInput {

}
