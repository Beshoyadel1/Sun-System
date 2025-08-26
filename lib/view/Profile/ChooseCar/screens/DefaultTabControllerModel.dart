import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../utiles/assets/CarBrand.dart';
import '../../../../view/Profile/ProfileWidget/TabWidgetCar.dart';
import '../../../../Controller/Cubit/CarBrandCubit/ModelCarCubit.dart';


class DefaultTabControllerModel extends StatelessWidget {
  const DefaultTabControllerModel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: TabBarView(
        children: List.generate(CarBrand.carName.length, (brandIndex) {
          final modelsForBrand = List.generate(
            CarBrand.carsImage.length,
                (i) => {
              "image": CarBrand.carsImage[i],
              "name": CarBrand.carName[i],
            },
          );

          return DefaultTabController(
            length: modelsForBrand.length,
            child: Column(
              children: [
                BlocBuilder<ModelCarCubit, int>(
                  builder: (context, selectIndex) {
                    return TabBar(
                      onTap: (modelIndex) {
                        context.read<ModelCarCubit>().changeIndex(modelIndex);
                      },
                      isScrollable: true,
                      indicatorColor: AppColors.transparent,
                      dividerColor: AppColors.transparent,
                      tabAlignment: TabAlignment.start,
                      tabs: List.generate(modelsForBrand.length, (i) {
                        return TabWidgetCar(
                          imageSrc: modelsForBrand[i]["image"]!,
                          isSelected: selectIndex == i,
                          name: modelsForBrand[i]["name"]!,
                        );
                      }),
                    );
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
