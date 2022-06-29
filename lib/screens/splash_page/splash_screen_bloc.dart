import 'dart:async';

class ChangePage {
  static StreamController<int> changeValueController = StreamController<int>();

  static Stream<int> get changeValueStream => changeValueController.stream;

  static Sink<int> get changeValueSink => changeValueController.sink;

  static getData(data) => changeValueSink.add(data);
}
