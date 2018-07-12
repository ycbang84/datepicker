import 'package:angular/angular.dart';

import 'src/todo_list/todo_list_component.dart';
import 'dart:convert';
import 'dart:html';


@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [TodoListComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.

  AppComponent() {
    TestData temp = new TestData();
    temp.date = "bang!!";
    temp.indexs = [];
    temp.indexs.add(1);
    temp.indexs.add(10);
    temp.cd = new ChildDate();
    temp.cd.id = "test-12";
    temp.cd.name = "make money!!";

    window.console.log(temp.toJson());
  }

  

}



class ChildDate{
  String id;
  String name;
}


class TestData {
  String date;
  List<int> indexs;
  ChildDate cd;

  String toJson() => jsonEncode(this, toEncodable: (value) {
    if(value is Object) {
      
    }
  });
}

