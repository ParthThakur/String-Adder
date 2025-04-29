# TDD String Adder Kata

This project implements a String Adder function following the Test-Driven Development (TDD) approach, inspired by Roy Osherove's String Calculator Kata.

## Features

The `string_adder` function supports the following features:

1.  **Basic Addition:** Adds numbers provided in a comma-separated string.
    ```
    string_adder("1,2,3") # => 6
    ```
2.  **Empty String:** Returns 0 for an empty input string.
    ```
    string_adder("") # => 0
    ```
3.  **Single Number:** Handles a single number in the input string.
    ```
    string_adder("5") # => 5
    ```
4.  **Newline Delimiter:** Handles new lines (`\n`) as an alternative delimiter alongside commas.
    ```
    string_adder("1\n2,3") # => 6
    ```
5.  **Custom Delimiters:** Supports custom single-character delimiters defined at the beginning of the string, prefixed with `//`.
    ```
    string_adder("//;\n1;2;3") # => 6
    ```
6.  **Negative Numbers:** Throws an exception if negative numbers are present, listing all negative numbers found.
    ```
    string_adder("1,-2,3") # raises "Negative numbers not allowed: -2"
    string_adder("//;\n1;-2;-3") # raises "Negative numbers not allowed: -2, -3"
    ```
7.  **Ignore Large Numbers:** Numbers greater than 1000 are ignored during addition.
    ```
    string_adder("1001,2") # => 2
    string_adder("1000,2") # => 1002
    ```
8.  **Arbitrary Length Delimiters:** Supports custom delimiters of any length enclosed in square brackets `[]`.
    ```
    string_adder("//[***]\n1***2***3") # => 6
    ```
9.  **Multiple Delimiters:** Supports multiple custom delimiters, each enclosed in square brackets `[]`.
    ```
    string_adder("//[*][%]\n1*2%3") # => 6
    string_adder("//[**][%%]\n1**2%%3") # => 6
    ```

## Getting Started

### Prerequisites

-   Ruby installed
-   Bundler installed (`gem install bundler`)

### Installation & Running Tests

1.  Clone the repository (if applicable).
2.  Install dependencies:
    ```bash
    bundle install
    ```
3.  Run the RSpec tests:
    ```bash
    bundle exec rspec
    ```

This will execute the test suite defined in `spec/string_adder_spec.rb`. 