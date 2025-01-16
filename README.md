# Unhandled Exception: RangeError (index): Invalid value: Valid value range is empty: 0

This repository demonstrates a common error in Dart applications that arises when handling JSON responses from APIs. The core issue lies in accessing elements of a JSON array without proper null and empty checks.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` presents the improved version.

## Problem

The original code fetches data from an API and attempts to access the first element of the JSON response.  If the response is empty or null, this leads to a `RangeError`. 

## Solution

The solution adds comprehensive null and empty checks before attempting to access any elements from the JSON array.  This prevents the `RangeError` and handles the cases gracefully.

## How to run

1. Clone the repository.
2. Run `bug.dart` to observe the original error.
3. Run `bugSolution.dart` to see the corrected behavior.
