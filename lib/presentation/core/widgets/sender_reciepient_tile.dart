import '../../../domain/order/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../size_config.dart';

class SenderRecipientTile extends StatelessWidget {
  final Person person;
  final bool editing;
  final String title;

  final void Function()? onEdit;

  const SenderRecipientTile({
    Key? key,
    required this.title,
    required this.person,
    this.editing = false,
    this.onEdit,
  })  : assert((editing && onEdit != null) || (!editing && onEdit == null)),
        super(key: key);
  // editing: true  &&  onEdit != null
  // editing: false && onEdit == null

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sender',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.black.withOpacity(0.6)),
              ),
              SizedBox(height: SizeConfig.defaultSize * 0.5),
              Text.rich(
                TextSpan(
                  text: person.name,
                  children: [
                    TextSpan(
                        text: '  (${person.phoneNumber})',
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.normal,
                            )),
                  ],
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize * 0.5),
              Text(person.address),
            ],
          ),
        ),
        if (editing)
          IconButton(
            icon: Icon(Icons.mode_edit_outline),
            onPressed: onEdit,
          )
      ],
    );
  }
}
