import 'package:best_flutter_ui_templates/appTheme.dart';
import 'package:flutter/material.dart';

class dailytips extends StatefulWidget {
  @override
  _dailytips createState() => _dailytips();
}

class _dailytips extends State<dailytips> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Daily Tips',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16),
                List<String> dtips = ["Drink four liters of water today", "Eat your fruits and vegetables", "Do not go to school today", "Run two miles this week", "Reduce sugars and foods high in glucose", "Go to the gym", "Go rock climb at the SJSU SRAC", "Don't use the computer for more than one hour each day", "Drink less alcohol", "Hire a personal trainer"
                "Go outside more often", "Fast for two weeks", "Eat more protein"
                "Don't do drugs", "Play two soccer games this week", "Lift weights for 5 hours this week", "Do some manual labor", "Drop out of college", "Why haven't you dropped out yet?", "College is unnesesary stress"];
                dtips.print(3);
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: Offset(4, 4),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Health is FUNNNNN with SJSUAPP5',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
