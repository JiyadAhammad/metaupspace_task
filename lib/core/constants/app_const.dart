import 'package:flutter/material.dart';

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

  static const List<Map<String, Object>> leaves = <Map<String, Object>>[
    <String, Object>{
      'type': 'Casual Leave',
      'dates': 'Apr 10 - Apr 12, 2026',
      'status': 'Approved',
      'color': Colors.green,
    },
    <String, Object>{
      'type': 'Sick Leave',
      'dates': 'Mar 15 - Mar 16, 2026',
      'status': 'Approved',
      'color': Colors.green,
    },
    <String, Object>{
      'type': 'Earned Leave',
      'dates': 'May 01 - May 05, 2026',
      'status': 'Pending',
      'color': Colors.orange,
    },
    <String, Object>{
      'type': 'Casual Leave',
      'dates': 'Dec 24 - Dec 26, 2025',
      'status': 'Rejected',
      'color': Colors.red,
    },
  ];

  static const List<String> paySlip = <String>[
    'March 2026',
    'February 2026',
    'January 2026',
    'December 2025',
    'November 2025',
    'October 2025',
  ];
}
