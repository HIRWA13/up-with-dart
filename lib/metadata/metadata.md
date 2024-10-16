#### Metadata in Dart
-> We use metadata to give additional information about your code. A metadata annotation begins with the character `@` followed by either a reference to a compile-time constant (such as deprecated) or a call to a constant constructor.

- Four annotations are available to all Dart code: [@deprecated, @override and @pragma] for examples of using [@override] when using classes inheritance to extend a parent class by a child class. below is a way of using the [@deprecated] metadata


```dart
  class Television {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {...}
  // ···
}

```

##### Creating your own metadata

```dart
class Todo {
 final String who;
 final String what;

 const Todo(this .who, this.what);
}

// using this metadata

@Todo('Dash', 'Implement this function')
void doSomething() {
	print('Do something');
}
```
