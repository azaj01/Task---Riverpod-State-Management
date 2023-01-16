import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:task_list_app/model/task.dart';

final networkServiceProvider = Provider<NetworkService>((ref) {
  return NetworkService();
});

class NetworkService {
  NetworkService();

  Future<List<Task>> getTasks() async {
    final now = DateTime.now();
    return [
      Task(
          id: '1',
          title: 'Read emails from mailbox',
          dateTime: now,
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
      Task(
          id: '2',
          title: 'Check latest news on Flutter',
          dateTime: now,
          description:
              'Sem fringilla ut morbi tincidunt augue interdum velit euismod. Facilisis volutpat est velit egestas dui. Adipiscing commodo elit at imperdiet dui accumsan. Justo nec ultrices dui sapien eget. Imperdiet nulla malesuada pellentesque elit eget. Ac tortor vitae purus faucibus. Duis ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Interdum velit euismod in pellentesque. Tellus elementum sagittis vitae et leo. Turpis egestas pretium aenean pharetra magna ac placerat vestibulum. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Turpis tincidunt id aliquet risus. A pellentesque sit amet porttitor eget dolor morbi.'),
      Task(
          id: '3',
          title: 'Have a call with Flutter team',
          dateTime: now,
          description:
              'Facilisis magna etiam tempor orci eu lobortis. Eu facilisis sed odio morbi quis commodo odio. Sem fringilla ut morbi tincidunt augue interdum velit euismod. Arcu non sodales neque sodales ut. Facilisis gravida neque convallis a cras semper auctor neque vitae. Habitant morbi tristique senectus et netus et malesuada. Ultrices mi tempus imperdiet nulla malesuada pellentesque.'),
      Task(
          id: '4',
          title: 'Work on application performance',
          dateTime: now,
          description:
              'In mollis nunc sed id semper risus in hendrerit. Sed viverra tellus in hac habitasse platea dictumst vestibulum. Felis bibendum ut tristique et egestas quis ipsum suspendisse. Mi proin sed libero enim sed faucibus. Pulvinar mattis nunc sed blandit libero. Nisi lacus sed viverra tellus. Vitae nunc sed velit dignissim. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Diam quam nulla porttitor massa id neque aliquam vestibulum.'),
      Task(
          id: '5',
          title: 'Plan work for next week',
          dateTime: now,
          description: 'This is Description'),
      Task(
        id: '6',
        title: 'Order lunch',
        dateTime: now,
        description:
            'Nibh ipsum consequat nisl vel pretium lectus quam id. Nibh sit amet commodo nulla facilisi nullam. Odio aenean sed adipiscing diam donec. In ante metus dictum at tempor commodo ullamcorper a lacus. Semper risus in hendrerit gravida rutrum quisque. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae.',
      ),
      Task(
        id: '7',
        title: 'Go to Bed',
        dateTime: now,
        description:
            'In mollis nunc sed id semper risus in hendrerit. Sed viverra tellus in hac habitasse platea dictumst vestibulum. Felis bibendum ut tristique et egestas quis ipsum suspendisse. Mi proin sed libero enim sed faucibus. Pulvinar mattis nunc sed blandit libero. Nisi lacus sed viverra tellus. Vitae nunc sed velit dignissim. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Diam quam nulla porttitor massa id neque aliquam vestibulum.',
      )
    ];
  }
}
