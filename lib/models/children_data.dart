import 'child.dart';

class ChildrenList {
  final List<Child> _children = [];

  List<Child> getChildrenNames() {
    return _children;
  }

  void addNewChild(Child child) {
    _children.add(child);
  }

  void removeChild(Child child) {
    _children.remove(child);
  }

  void updateChildDetails(int index, Child child) {
    _children.removeAt(index);
    _children.add(child);
  }
}
