class ArrayUtils {
  /// This function will move your array elements to the left. This will act like a circular array
  static List<T> moveLeft<T>(List<T> arr) {
    T firstElement = arr.removeAt(0);
    arr.add(firstElement);

    return arr;
  }

  /// This function will move our array elements to the right. This will act like a circular array
  static List<T> moveRight<T>(List<T> arr) {
    T lastElement = arr.removeLast();
    arr.insert(0, lastElement);

    return arr;
  }

  /// This function will concat 2 arays, and distinct the overlapped elements, and return as a new copy
  static List<T> concatAndSerialize<T>(List<T> arr1, List<T> arr2) {
    var concat = arr1.toList();
    concat.addAll(arr2);

    return concat.toSet().toList();
  }
}
