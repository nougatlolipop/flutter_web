import 'package:fitness_dashboard_ui/util/responsive.dart';
import 'package:fitness_dashboard_ui/widgets/activity_details_card.dart';
import 'package:fitness_dashboard_ui/widgets/bar_graph_widget.dart';
import 'package:fitness_dashboard_ui/widgets/header_widget.dart';
import 'package:fitness_dashboard_ui/widgets/line_chart_card.dart';
import 'package:fitness_dashboard_ui/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 18),
          ),
          const SliverToBoxAdapter(
            child: HeaderWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 18),
          ),
          const SliverToBoxAdapter(
            child: ActivityDetailsCard(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 18),
          ),
          const SliverToBoxAdapter(
            child: LineChartCard(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 18),
          ),
          const SliverToBoxAdapter(
            child: BarGraphCard(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 18),
          ),
          if (Responsive.isTablet(context))
            const SliverToBoxAdapter(
              child: SummaryWidget(),
            )
        ],
      ),
    );
  }
}
