class Task {
  //data types for our variables that we will use
  String content;
  DateTime timestamp;
  bool done;

  // constructor for our class
  Task({
    required this.content,
    required this.timestamp,
    required this.done,
  });

  //function that can take in a map and create a task from it
  // ignore: todo
  // TODO:checkout what factory methods are in flutter
  factory Task.fromMap(Map task) {
    return Task(
      content: task["content"],
      timestamp: task["timestamp"],
      done: task["done"],
    );
  }

  // function to convert the values into a map then store in hive
  Map toMap() {
    return {
      "content": content,
      "timestamp": timestamp,
      "done": done,
    };
  }
}
