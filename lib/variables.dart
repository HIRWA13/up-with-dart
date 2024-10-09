variables () {
  var name = 'Bob'; // the name variable stores a reference to the name object with value of 'Bob', it's type is infered to be a string
  print(name);
}

/**
 * Null safety: 
 * null safety in dart is the ability of the dart compiler to detect null values in the application since they are not allowed and instead of throwing runtime errors the dart compiler detects that and then it notifies you about it.
 * 
 * For example, say you want to find the absolute value of an int variable i. If i is null, calling i.abs() causes a null dereference error. In other languages, trying this could lead to a runtime error, but Dart's compiler prohibits these actions. Therefore, Dart apps can't cause runtime errors.
 */

// Null safety introduces three key changes:

// When you specify a type for a variable, parameter, or another relevant component, you can control whether the type allows null. To enable nullability, you add a "?" to the end of the type declaration.
