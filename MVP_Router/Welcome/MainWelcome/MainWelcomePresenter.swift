import Foundation

protocol MainWelcomePresenter {
   
}

final class DefaultMainWelcomePresenter: MainWelcomePresenter {
    
    // MARK: Public
    unowned let view: MainWelcomeView
    private let router: MainWelcomeRouterInput
    
    // MARK: Private
    
    // MARK: - Lifecycle
    init(view: MainWelcomeView, router: MainWelcomeRouterInput) {
        self.view = view
        self.router = router
    }
}

