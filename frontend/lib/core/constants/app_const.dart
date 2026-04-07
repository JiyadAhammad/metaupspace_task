class AppConst {
  AppConst._();

  static const Map<String, String> managers = <String, String>{
    'Engineering': 'Sarah Connor',
    'Design': 'John Doe',
    'HR': 'Jane Smith',
  };

  static const Map<String, List<String>> roles = <String, List<String>>{
    'Engineering': <String>[
      'Software Engineer',
      'QA Engineer',
      'DevOps Engineer',
    ],
    'Design': <String>[
      'UI/UX Designer',
      'Motion Graphic Designer',
      'Graphic Designer',
    ],
    'HR': <String>['HR Manager', 'IT Recruiter', 'Operations Coordinator'],
  };

  static const List<String> leaveTypes = <String>[
    'Casual Leave',
    'Sick Leave',
    'Annual Leave',
    'Earned Leave',
    'Maternity Leave',
    'Paternity Leave',
    'Bereavement Leave',
    'Compensatory Off',
    'Work From Home',
    'Unpaid Leave',
  ];
}
