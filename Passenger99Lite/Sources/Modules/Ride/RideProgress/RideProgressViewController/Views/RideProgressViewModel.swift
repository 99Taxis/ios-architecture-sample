
import Foundation

struct RideProgressViewModel: Equatable {
    
    let progress: Float
    
    init(progress: Float) {
        self.progress = progress
    }
}

func ==(lhs: RideProgressViewModel, rhs: RideProgressViewModel) -> Bool {
    return lhs.progress == rhs.progress
}
