import Foundation

struct Container {
    let depth: Int
    let breadth: Int
    let elevation: Int
    let blocks: [Int]

    func computeMinimumBlocksToPack() -> Int {
        var spaceLeft = depth * breadth * elevation
        var totalBlocksConsumed = 0
        
        // Iterate over block sizes from largest to smallest
        for i in (0..<blocks.count).reversed() {
            let blockSize = Int(pow(2.0, Double(i)))
            
            // Check if a block of this size can fit in all dimensions
            guard depth >= blockSize && breadth >= blockSize && elevation >= blockSize else {
                continue
            }
            
            let blockVolume = blockSize * blockSize * blockSize  // Volume of the current block
            let maxBlocksFit = spaceLeft / blockVolume  // Maximum number of current blocks that fit

            let blocksUsed = min(maxBlocksFit, blocks[i])  // Number of blocks used from the current size
  
            spaceLeft -= blocksUsed * blockVolume  // Reduce the remaining space
            totalBlocksConsumed += blocksUsed  // Increment total blocks used
            
            if spaceLeft == 0 {
                break  // Exit early if container is completely packed
            }
        }
        
        return spaceLeft == 0 ? totalBlocksConsumed : -1  // Check if all space is packed
    }
}

// Function to process the input and output the results
func handleInput(_ input: String) {
    let rows = input.split(separator: "\n")

    for row in rows {
        let parts = row.split(separator: " ").map { Int($0)! }
        let depth = parts[0]
        let breadth = parts[1]
        let elevation = parts[2]
        let blocks = Array(parts[3...])
        
        let container = Container(depth: depth, breadth: breadth, elevation: elevation, blocks: blocks)
        let outcome = container.computeMinimumBlocksToPack()
        print("\(outcome)")
    }
}

// Read the input from standard input
while let input = readLine(strippingNewline: false) {
    handleInput(input)
}
