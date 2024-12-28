# Unexpected Instance Variable Modification with instance_eval in Ruby
This example demonstrates an uncommon bug in Ruby related to modifying instance variables using `instance_eval`. While seemingly straightforward, `instance_eval` can lead to unexpected behavior if not handled carefully, especially when dealing with closures or nested scopes.  This bug showcases a situation where an instance variable is modified in a way that might not be immediately obvious.

## Bug Description
The core issue lies in how `instance_eval` evaluates code within the context of the object. When using `instance_eval { @value = 30 }`, it appears to modify the instance variable directly, but it can create unforeseen consequences, particularly in more complex code structures.