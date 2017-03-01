
import UIKit

final class RideCoordinator {
    
    private unowned let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let repository = RideRepository()
        let presenter = RidePresenter(repository: repository)
        let rideViewController = RideViewController(presenter: presenter)
        presenter.view = rideViewController
        
        self.window.rootViewController = rideViewController
        self.window.makeKeyAndVisible()
    }
}
