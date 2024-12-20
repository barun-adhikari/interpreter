# Arithmetic Expression Interpreter in C

This project is a simple interpreter for arithmetic expressions, built using the C programming language. It takes a mathematical expression as input (e.g., `1 + 2 * (3 - 4)`) and evaluates the result step by step.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [How to Build and Run](#how-to-build-and-run)
- [Example Usage](#example-usage)
- [Code Overview](#code-overview)
- [Future Enhancements](#future-enhancements)
- [Common Issues](#common-issues)

## Prerequisites
Before running this project, ensure you have the following installed:
- **C Compiler** (e.g., `gcc`)
- **Make** utility (optional but recommended for automation)
- A **UNIX-like environment** (Linux, macOS, or WSL for Windows)

## Installation 

Clone the repository:
```bash
git clone <repository-url>
cd interpreter
```
## Project Structure
```
interpreter/
│
├── src/                 # Source code files
│   ├── lexer.c          # Lexer implementation
│   ├── parser.c         # Parser implementation
│   ├── evaluator.c      # Evaluator implementation
│   ├── main.c           # Main program entry point
│   └── utils.c          # Utility functions (e.g., error handling)
├── include/             # Header files
│   ├── lexer.h          # Lexer function declarations
│   ├── parser.h         # Parser function declarations
│   ├── evaluator.h      # Evaluator function declarations
│   └── utils.h          # Utility function declarations
├── test/                # Unit tests
│   ├── lexer_tests.c    # Lexer tests
│   ├── parser_tests.c   # Parser tests
│   ├── evaluator_tests.c # Evaluator tests
│   └── main_tests.c     # Integration tests
├── Makefile             # Makefile to build the project
├── README.md            # Project documentation
└── .gitignore           # Ignore unnecessary files for git versioning
```

## How to Build and Run

### Build the Project

Use the provided Makefile to compile the project:
```
make
```
This will generate an executable file named interpreter.

### Run the Program

To run the interpreter, use the following command:
```
./interpreter
```
The program will prompt you to enter an arithmetic expression and return the result.
```
Run Unit Tests
```
To ensure all components work correctly, run the test suite:
```
make test
```
### Clean the Project

To remove generated files (executables and object files), run:
```
make clean
```
## Example Usage
```
Input:

(1 + 2) * 3

Output:

Result: 9
```
## Code Overview

### Lexer

The lexer scans the input string and breaks it into tokens:

```
TOKEN_NUMBER: Numeric values (e.g., 123)

TOKEN_PLUS: Plus operator (+)

TOKEN_MINUS: Minus operator (-)

TOKEN_TIMES: Multiplication operator (*)

TOKEN_DIVIDE: Division operator (/)

TOKEN_LPAREN: Left parenthesis (()

TOKEN_RPAREN: Right parenthesis ())

TOKEN_EOF: End of input
```

### Parser

The parser processes the tokens and generates an Abstract Syntax Tree (AST). The AST represents the structure of the arithmetic expression.

### Evaluator

The evaluator traverses the AST recursively and calculates the final result of the expression.

## Future Enhancements

This project is designed to be a foundation for a more advanced interpreter. Here are some ideas for future improvements:

Support for variables and assignments (e.g., x = 5)

Advanced operators (e.g., exponentiation ^)

Floating-point precision improvements

Better error handling and reporting

REPL (Read-Eval-Print Loop) for interactive usage

## Common Issues

Compilation Errors: Ensure that all required tools (e.g., gcc, make) are correctly installed and configured.

Syntax Errors: Input expressions must follow the correct syntax (e.g., balanced parentheses, valid operators).

Segmentation Fault: This may occur if input validation is skipped. Use proper test cases to validate inputs.

## Author

Developed by Barun Adhikari.

