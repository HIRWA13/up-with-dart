### Variables in Dart
- **Declaration and Initialization**:  
  ```dart
  var name = 'Bob';  // 'name' holds a reference to a String object.
  ```
  - The type of `name` is inferred as `String`, but you can specify types explicitly:
  ```dart
  String name = 'Bob';
  Object name = 'Bob';  // Use Object or dynamic for non-restricted types.
  ```
  - Local variables should preferably use `var` according to style guidelines.

### Null Safety
- **Overview**: Dart enforces sound null safety to prevent null dereference errors, which occur when accessing properties or methods of a null object. Dart's compiler detects these issues at compile time, eliminating runtime errors.

- **Key Changes**:
  - Use `?` for nullable types: 
    ```dart
    String? name;  // Nullable, can be null or a String.
    String name;   // Non-nullable, must be initialized before use.
    ```
  - Uninitialized nullable variables default to `null`, while non-nullable variables must be explicitly initialized.
  - You cannot access methods or properties on a nullable type unless those methods are supported by null.

- **Default Values**:
  - Uninitialized nullable variables are `null`. Non-nullable variables require initialization:
  ```dart
  int lineCount = 0;  // Must be initialized before use.
  ```

### Lazy Initialization and `late` Variables
- **`late` Modifier**: 
  - Allows you to declare non-nullable variables initialized later.
  ```dart
  late String description;
  description = 'Feijoada!';  // Must be set before use, or will cause a runtime error.
  ```
  - Useful for costly initializations or instance variables needing access.

### Final and Const Variables
- **Final**: 
  - Can be set once and initialized at runtime.
  ```dart
  final name = 'Bob';  // Can be set only once.
  ```

- **Const**: 
  - Compile-time constants, shared across all instances.
  ```dart
  const bar = 1000000;  // Must be a compile-time constant.
  ```

- **Key Differences**:
  - Instance variables can be `final` but **not** `const`.
  - `const` variables are immutable; their values cannot change, whereas `final` variables can have their fields modified.

### Additional Notes
- `assert(condition)` throws an exception if the condition is false during development.
- You can create constant collections using `const`, and they can include type checks, collection ifs, and spread operators.