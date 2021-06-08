import 'package:flutter/material.dart';
import 'package:proj/components/orgs_drawer.dart';
import 'package:proj/components/orgs_stores_card.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';
import 'package:proj/screens/producer_details_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: OrgsDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Produtores favoritos',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkGrey
                  ),
                ),
                IconButton(
                  color: Colors.transparent,
                  icon: Icon(Icons.menu, color: AppColors.green),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Produtores que você favoritou',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  OrgsStoresCard(
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducerDetailsScreen()),
                      );
                    },
                    img: AppImages.store1,
                    title: 'Manjericão',
                  ),
                  OrgsStoresCard(
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducerDetailsScreen()),
                      );
                    },
                    img: AppImages.store4,
                    title: 'Grow',
                  ),
                  OrgsStoresCard(
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducerDetailsScreen()),
                      );
                    },
                    img: AppImages.store5,
                    title: 'Potager',
                  ),
                ],
              ),
            )
            ],
          ),
        ),
    );
  }
}