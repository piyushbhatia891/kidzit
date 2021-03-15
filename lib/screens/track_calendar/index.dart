import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:kidzit_app/shared/utils/hex.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;

class TrackCalendar extends StatefulWidget {
  TrackCalendarState createState() => TrackCalendarState();
}

class TrackCalendarState extends State<TrackCalendar> {
  DateTime _currentDate = DateTime(2019, 2, 3);
  DateTime _currentDate2 = DateTime(2019, 2, 3);
  DateTime _targetDateTime = DateTime(2019, 2, 3);
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10): [
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        new DateTime(2019, 2, 25),
        new Event(
          date: new DateTime(2019, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        new DateTime(2019, 2, 10),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(new DateTime(2019, 2, 11), [
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F0CAE1"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Text("When did your last period start?"),
          SizedBox(
            height: 50.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      spreadRadius: 2.0)
                ]),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: CalendarCarousel<Event>(
              onDayPressed: (DateTime date, List<Event> events) {
                this.setState(() => _currentDate = date);
              },
              weekendTextStyle: TextStyle(
                color: Colors.red,
              ),
              thisMonthDayBorderColor: Colors.grey,
//      weekDays: null, /// for pass null when you do not want to render weekDays
//      headerText: Container( /// Example for rendering custom header
//        child: Text('Custom Header'),
//      ),
              customDayBuilder: (
                /// you can provide your own build function to make custom day containers
                bool isSelectable,
                int index,
                bool isSelectedDay,
                bool isToday,
                bool isPrevMonthDay,
                TextStyle textStyle,
                bool isNextMonthDay,
                bool isThisMonthDay,
                DateTime day,
              ) {
                /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
                /// This way you can build custom containers for specific days only, leaving rest as default.

                // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
                if (day.day == 15) {
                  return Center(
                    child: Icon(Icons.local_airport),
                  );
                } else {
                  return null;
                }
              },
              weekFormat: false,
              markedDatesMap: _markedDateMap,
              height: 420.0,
              selectedDateTime: _currentDate,
              daysHaveCircularBorder: false,

              /// null for not rendering any border, true for circular border, false for rectangular border
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              Get.offNamed(Routes.TRACK_CALENDAR);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFFC44B3),
                    Color(0xFFE32F6A),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  "VERIFY & PROCEED",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
