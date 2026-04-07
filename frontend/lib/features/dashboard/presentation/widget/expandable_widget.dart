import 'package:flutter/material.dart';

import '../../../../core/extension/date_extension.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/dashboard_entity.dart';

class ExpandableWidget extends StatelessWidget {
  const ExpandableWidget({super.key, required this.entity});

  final DashboardEntity entity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _ExpandableCard(
          title: 'Leave Details',
          icon: Icons.beach_access_outlined,
          child: Column(
            children: <Widget>[
              _BuildListTile(
                title: 'Total Leaves',
                trailing: '${entity.leaveDetails.totalLeaves} Days',
              ),
              _BuildListTile(
                title: 'Leaves Taken',
                trailing: '${entity.leaveDetails.leavesTaken} Days',
              ),
              _BuildListTile(
                title: 'Available Leaves',
                trailing: '${entity.leaveDetails.leavesAvailable} Days',
              ),
            ],
          ),
        ),
        _ExpandableCard(
          title: 'Upcoming Holidays',
          icon: Icons.celebration_outlined,
          child: Column(
            children: List<Widget>.generate(entity.holidays.length, (
              int index,
            ) {
              final HolidayEntity item = entity.holidays[index];

              return _BuildListTile(
                title: item.name,
                trailing: item.date.toDMY(),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class _ExpandableCard extends StatefulWidget {
  const _ExpandableCard({
    required this.title,
    required this.icon,
    required this.child,
  });
  final String title;
  final IconData icon;
  final Widget child;

  @override
  State<_ExpandableCard> createState() => __ExpandableCardState();
}

class __ExpandableCardState extends State<_ExpandableCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          leading: Icon(widget.icon, color: Theme.of(context).primaryColor),
          title: AppText(widget.title, variant: TextVariant.large),
          childrenPadding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
          ),
          children: <Widget>[widget.child],
        ),
      ),
    );
  }
}

class _BuildListTile extends StatelessWidget {
  const _BuildListTile({required this.title, required this.trailing});

  final String title;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AppText(title),
          AppText(trailing, variant: TextVariant.caption),
        ],
      ),
    );
  }
}
