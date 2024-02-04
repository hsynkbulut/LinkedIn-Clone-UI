import 'package:flutter/material.dart';
import '../../../repository/user_post_data.dart';
import 'components/single_post_card_widget.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? _scrollController;
  final _userPost = UserPostClass.userPostList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBarWidget(title: 'Arama Yap'),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _userPost.length,
                itemBuilder: (context, index) {
                  final userPostData = _userPost[index];
                  return SinglePostCardWidget(userPostData: userPostData);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
