# Fill Container

This Swift program determines the smallest number of cubes needed to fill a given box with specified dimensions and a set of available cubes. Each side of the cubes is a power of 2, e.g., 1x1x1, 2x2x2, 4x4x4, etc.

## How It Works

The program reads input from a text file containing box dimensions and the available cubes, processes each problem, and outputs the minimum number of cubes needed to fill the box. If a problem cannot be solved, the program outputs `-1`.

## Requirements

- Swift compiler (swiftc)
- Terminal or command line access

## Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/ltomaszewski/fill_container
   cd fill_container
2. **Compile:**
   ```bash
   swiftc Container.swift -o myprogram
3. **Execution:**
   ```bash
   ./myprogram < problems.txt
4. **Full Script:**
   ```bash
   git clone https://github.com/ltomaszewski/fill_container
   cd fill_container
   swiftc Container.swift -o myprogram
   ./myprogram < problems.txt

## Output
  ```bash
  1
  8
  1000
  -1
  9
  13
  59
  50070
  9
```
## Final Note:
The output isn't perfect; for example, the case "4 4 8 10 10 1" produces an incorrect result. Given the time constraints, I couldn't find a better solution than what is provided. This is the best I could achieve within the allotted time.
