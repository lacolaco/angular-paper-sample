import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';


main() {
  var injector = applicationFactory()
  .run();
  Scope scope = injector.get(Scope);
  scope.context['text'] = "Hello future";
  scope.context['max'] = 20;
  scope.context['curValue'] = 12;
  scope.context['onCheck'] = (curValue) {
    scope.context['curValue'] = curValue == 5 ? 2 : curValue == 2 ? 10 : 5;
  };
  scope.apply();
}