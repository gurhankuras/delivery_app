import 'package:delivery_app/presentation/core/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../application/extensions/date_time_extension.dart';
import '../../../application/statistics/bloc/statistics_bloc.dart';
import '../../../domain/statistics/i_statistics_repository.dart';
import '../../core/size_config.dart';
import '../../core/widgets/app_button.dart';
import 'components/app_bar_chart.dart';
import 'components/app_bar_chart_placeholder.dart';
import 'components/app_pie_chart.dart';
import 'components/app_pie_chart_placeholder.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: BlocConsumer<StatisticsBloc, StatisticsState>(
        listener: (context, state) {
          state.maybeMap(
              loadSuccess: (successState) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Hahahahah'),
                  backgroundColor: Colors.green,
                ));
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.map(
            initial: (state) => Container(),
            loading: (state) => StatisticsBody(state: state, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppBarChartPlaceholder(),
              ),
              AppPieChartPlaceholder(),
            ]),
            loadSuccess: (state) => StatisticsBody(
              state: state,
              children: [
                AppBarChart(
                  labels: state.stat.labels,
                  quantities: state.stat.values.map((e) => e.toInt()).toList(),
                  title: 'Takil kafana gore',
                ),
                AppPieChart(
                  titles: state.stat.labels,
                  values: state.stat.values.map((e) => e.toInt()).toList(),
                )
              ],
            ),
            loadFailure: (state) => StatisticsBody(
              state: state,
              children: [
                SvgPicture.asset(
                  ImagePaths.network_error,
                  fit: BoxFit.cover,
                  width: SizeConfig.screenWidth * 0.6,
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * 2,
                ),
                Text(
                  'Failed',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class StatisticsBody extends StatelessWidget {
  final StatisticsState state;
  final List<Widget> children;
  const StatisticsBody({
    Key? key,
    required this.state,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: 'Select Date',
          click: () =>
              pickDate(initialDate: state.lastPickedDate, context: context),
        ),
        Padding(
          padding: EdgeInsets.all(SizeConfig.defaultSize),
          child: Text(
            DateFormat.yMd().format(state.lastPickedDate),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ...children
      ],
    );
  }

  Future<void> pickDate(
      {required DateTime initialDate, required BuildContext context}) async {
    final date = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now().subtract(Duration(days: 365 * 5)),
      lastDate: DateTime.now(),
    );

    if (date == null || date.isSameDate(initialDate)) {
      return;
    }

    context.read<StatisticsBloc>().add(
          StatisticsEvent.fetchingStarted(
            stat: Stat.people_who_receives_the_most,
            date: date,
          ),
        );
  }
}
