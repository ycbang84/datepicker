import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'dart:async';


@Component(
  selector: 'calendar',
  styleUrls: ['calendar.scss.css'],
  templateUrl: 'calendar.html',
  directives: [NgIf, NgFor, materialDirectives],
)
class Calendar implements OnInit{

  @Input()
  DateTime baseDay = null;

  List<DateTime> _drawDate = [];
  List<DateTime> get drawDate => _drawDate;

  @override
  Future<Null> ngOnInit() async{

  }

  
}