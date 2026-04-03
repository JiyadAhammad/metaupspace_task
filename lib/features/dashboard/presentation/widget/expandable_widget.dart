import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text.dart';

class TestModel {
  TestModel({required this.title, required this.trailing});

  final String title;
  final String trailing;
}

class ExpandableWidget extends StatelessWidget {
  const ExpandableWidget({
    super.key,
    required this.cardTitle,
    required this.cardDetails,
    required this.icon,
  });

  final String cardTitle;
  final IconData icon;
  final List<TestModel> cardDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _ExpandableCard(
          title: cardTitle,
          icon: icon,
          child: Column(
            children: List<Widget>.generate(cardDetails.length, (int index) {
              final TestModel item = cardDetails[index];
              return _BuildListTile(title: item.title, trailing: item.trailing);
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
