int compare<T>(T a, T b, bool ascending) {
  if (a is Comparable) {
    return ascending
        ? a.compareTo(b)
        : b is Comparable
        ? b.compareTo(a)
        : 0;
  }
  return 0;
}