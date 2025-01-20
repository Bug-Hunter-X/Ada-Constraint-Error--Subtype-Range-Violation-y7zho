# Ada Constraint Error Example

This repository demonstrates a common error in Ada programming: violating the range constraint of a subtype.

The `bug.ada` file contains code that attempts to assign a value outside the defined range of a subtype, resulting in a `Constraint_Error` exception at runtime.  The `bugSolution.ada` file shows how to handle this by checking the value before assignment or using exception handling.

This is a simple example, but the same principle applies to more complex situations where the out-of-range value might be less obvious.