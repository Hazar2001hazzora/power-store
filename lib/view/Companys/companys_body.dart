import 'package:flutter/material.dart';

import '../../constants/SizeConfig/size_config.dart';
import '../widgets/appBar/app_Bar.dart';
import 'companies_view.dart';

class CompaniesBody extends StatelessWidget {
  const CompaniesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: myAppBar(Title: 'Companies'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/LG.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/braunLOGO2.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/isus.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/panasonicLOGO.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/samsungLOGO.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/highlifeLOGO.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/dellLOGO.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/toshibaLOGO.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/appleLOGO.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/hawawiLOGO.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/starwayLOGO.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/alhafizLOGO.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/ramcoLOGO.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/bertaLOGO.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/smartSensorLOGO.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/sunUVLOGO.png',
                  ),
                ],
              ),
              Row(
                children: [
                  CompaniesView(
                    image: 'assets/images/energyLOGO.png',
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.5,
                  ),
                  CompaniesView(
                    image: 'assets/images/rebuneLOGO.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
