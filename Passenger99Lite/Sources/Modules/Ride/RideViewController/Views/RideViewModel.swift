
import Foundation

struct RideViewModel: Equatable {
    
    let progress: Float
    
    init(progress: Float) {
        self.progress = progress
    }
}

func ==(lhs: RideViewModel, rhs: RideViewModel) -> Bool {
    return lhs.progress == rhs.progress
}
