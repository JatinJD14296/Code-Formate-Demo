import 'dart:async';
import 'package:rxdart/rxdart.dart';

class DashboardPageBloc {
  /// Dashboard Page Bloc
  StreamController<String> dashboardPageTabController = BehaviorSubject<String>();

  Stream<String> get dashboardPageTabStream => dashboardPageTabController.stream;

  Sink<String> get dashboardPageTabSink => dashboardPageTabController.sink;

  getDashboardPageTab(String data) => dashboardPageTabSink.add(data);

  dispose() {
    dashboardPageTabController.close();
  }
}

final DashboardPageBloc dashboardPageBloc = DashboardPageBloc();
