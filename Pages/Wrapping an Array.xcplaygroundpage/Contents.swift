//: [Previous](@previous)

import Foundation

// MARK: - USING A FOR LOOP

// assume we have a list of tracks
let tracks = ["a", "b", "c", "d", "e"]

// algorithm should return this if we select "d"
["d", "e", "a", "b", "c"]

let selectedTrack = "d"
var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
    if selectedTrack == track || playlist.count > 0 {
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}

print(playlist + priorTracks)
priorTracks
playlist

// MARK: - NO FOR LOOP

let index = tracks.firstIndex(where: {return $0 == selectedTrack})

let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)

let combinedArray = suffixArray + prefixArray

//: [Next](@next)
