import Foundation
protocol SecondOnboardingPresenter {
   func showNextDidTapped()
}

final class DefaultSecondOnboardingPresenter: SecondOnboardingPresenter {
    // MARK: - Properties
    // MARK: Public
    unowned let view: SecondOnboardingView
    private let router: SecondOnboardingRouterInput
    // MARK: Private
    // MARK: - Lifecycle
    init(view: SecondOnboardingView, router: SecondOnboardingRouterInput) {
        self.view = view
        self.router = router
    }
    // MARK: - API

    // MARK: - Setups
    func showNextDidTapped() {
        router.showNextFlow()
    }
}

