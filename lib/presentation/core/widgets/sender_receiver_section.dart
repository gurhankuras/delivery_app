import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../domain/order/order.dart';
import '../../../domain/order/value_objects.dart';
import '../assets_constants.dart';
import '../size_config.dart';
import 'sender_reciepient_tile.dart';

class SenderReceiverSection extends StatelessWidget {
  final bool editing;
  final void Function()? onEdit;

  final Order order;
  const SenderReceiverSection({
    Key? key,
    this.editing = false,
    this.onEdit,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildRouteLine(context),
          Spacer(),
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SenderRecipientTile(
                  title: 'Sender',
                  person: order.sender ??
                      Person(name: '', phoneNumber: '', trId: '', address: ''),
                  editing: editing,
                  onEdit: onEdit,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withOpacity(0.25),
                        height: SizeConfig.defaultSize * 3,
                        thickness: 1,
                        endIndent: SizeConfig.defaultSize * 3,
                      ),
                    ),
                    Text('1.1 Km'),
                  ],
                ),
                SenderRecipientTile(
                  title: 'Receiver',
                  person: order.receiver ??
                      Person(name: '', phoneNumber: '', trId: '', address: ''),
                  editing: editing,
                  onEdit: onEdit,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column buildRouteLine(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Assets.location_circle,
          color: Theme.of(context).colorScheme.primary,
          height: SizeConfig.defaultSize * 1.5,
        ),
        DottedLine(
          direction: Axis.vertical,
          lineLength: 100,
          lineThickness: 1.0,
          dashLength: 4.0,
          dashColor: Colors.black.withOpacity(0.3),
          dashRadius: 0.0,
          dashGapLength: 4.0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
        SvgPicture.asset(
          Assets.location_circle,
          color: Theme.of(context).primaryColor,
          height: SizeConfig.defaultSize * 1.5,
        ),
      ],
    );
  }
}
