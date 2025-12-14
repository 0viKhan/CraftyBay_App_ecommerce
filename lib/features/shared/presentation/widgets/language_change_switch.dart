import 'package:e_commerce_shop/app/app.dart';
import 'package:e_commerce_shop/app/extensions/localization_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageChangeSwitch extends StatelessWidget {
  const LanguageChangeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.localization.selectLanguage),
      trailing: DropdownMenu<Locale>(
        dropdownMenuEntries: CraftyBay.languageController.supportedLocales.map(
              (locale) {
            return DropdownMenuEntry<Locale>(
              value: locale,
              label: locale.languageCode,
            );
          },
        ).toList(),
        onSelected: (Locale? locale) {
          CraftyBay.languageController.changeLocale(locale!);
        },
      ),
    );
  }
}
