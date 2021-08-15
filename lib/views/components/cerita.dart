import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import '../../models/data.dart';

class CeritaComponents extends StatefulWidget {
  CeritaComponents({Key? key}) : super(key: key);

  @override
  _CeritaComponentsState createState() => _CeritaComponentsState();
}

class _CeritaComponentsState extends State<CeritaComponents> {
  final PageController pageController =
      PageController(initialPage: 1, keepPage: true);
  int pageIx = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      timelineModel(TimelinePosition.Left),
      timelineModel(TimelinePosition.Right)
    ];

    return Column(
      children: [
        Container(
          child: Text(
            'Cerita Kita',
            style: TextStyle(
                fontFamily: "Playball",
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 200.0,
            child: timelineModel(TimelinePosition.Center),
          ),
        ),
      ],
    );
  }

  timelineModel(TimelinePosition position) => Timeline.builder(
      itemBuilder: centerTimelineBuilder,
      itemCount: doodles.length,
      physics: position == TimelinePosition.Left
          ? ClampingScrollPhysics()
          : BouncingScrollPhysics(),
      position: position);

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final doodle = doodles[i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
      Card(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(doodle.doodle),
              const SizedBox(
                height: 8.0,
              ),
              Text(doodle.time, style: textTheme.caption),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                doodle.name,
                // ignore: deprecated_member_use
                style: textTheme.title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
      position:
          i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
      isFirst: i == 0,
      isLast: i == doodles.length,
      iconBackground: doodle.iconBackground,
      icon: doodle.icon,
    );
  }
}
