import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../utiles/assets/CarBrand.dart';
import '../../../../view/Profile/widget/TabWidgetCar.dart';
import '../../../../utiles/assets/AppColors.dart';
import '../../../../Controller/Cubit/CarBrandCubit/LogoCarCubit.dart';

class DefaultTabControllerBrand extends StatefulWidget {
  const DefaultTabControllerBrand({super.key});

  @override
  State<DefaultTabControllerBrand> createState() => _DefaultTabControllerBrandState();
}

class _DefaultTabControllerBrandState extends State<DefaultTabControllerBrand> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogoCarCubit, int>(
      builder: (context, selectIndex) {
        return TabBar(
          onTap: (index) {
            context.read<LogoCarCubit>().changeIndex(index);
          },
          isScrollable: true,
          indicatorColor: AppColors.transparent,
          dividerColor: AppColors.transparent,
          tabs: List.generate(CarBrand.logoCarImage.length, (index) {
            return TabWidgetCar(
              imageSrc: CarBrand.logoCarImage[index],
              isSelected: selectIndex == index,
              name: CarBrand.logoName[index],
            );
          }),
        );
      },
    );
  }
}
