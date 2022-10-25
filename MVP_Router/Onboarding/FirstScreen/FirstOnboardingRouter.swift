import UIKit

protocol FirstOnboardingRouterInput {
    func moveToSecondScreen()
}

final class FirstOnboardingRouter {
    // MARK: Public
    
    // MARK: Private
    private let navigationController: UINavigationController
    private let window: UIWindow
    
    // MARK: - Lifecycle
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
        let view = DefaultFirstOnboardingView()
        let presenter = DefaultFirstOnboardingPresenter(view: view, router: self)
        view.presenter = presenter
        navigationController.pushViewController(view, animated: true)
    }
}

// MARK: - Extensions
extension FirstOnboardingRouter: FirstOnboardingRouterInput {
    func moveToSecondScreen() {
  let _ = SecondOnboardingRouter(navigationController: navigationController, window: window)
        
    }
}
