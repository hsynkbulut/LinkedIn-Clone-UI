// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'components/body_widget.dart';
import 'components/bottom_widget.dart';
import 'components/top_widget.dart';

class PublishPage extends StatelessWidget {
  const PublishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TopWidget(),
                      SizedBox(height: 10),
                      BodyWidget(),
                    ],
                  ),
                ),
              ),
            ),
            // Ekranın altında görünen alan
            BottomWidget(),
          ],
        ),
      ),
    );
  }
}
