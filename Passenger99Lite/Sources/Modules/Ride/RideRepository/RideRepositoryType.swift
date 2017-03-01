import Foundation
import RxSwift

protocol RideProgressRepositoryType {
    var rideObservable: Observable<Float> { get }
}
