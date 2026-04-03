import '../../features/dashboard/presentation/widget/expandable_widget.dart';

class AppConst {
  AppConst._();
  static List<TestModel> leaveDetails = <TestModel>[
    TestModel(title: 'Casual Leave', trailing: '8 Remaining'),
    TestModel(title: 'Sick Leave', trailing: '5 Remaining'),
    TestModel(title: 'Earned Leave', trailing: '10 Remaining'),
  ];

  static List<TestModel> holidaysDetails = <TestModel>[
    TestModel(title: 'Labor Day', trailing: 'May 1, 2026'),
    TestModel(title: 'Summer Break', trailing: 'Jul 15, 2026'),
  ];
}
