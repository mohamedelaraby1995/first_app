import 'package:flutter/material.dart';

// Listen to the page change
ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);

// Listen to the application mode change
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);

// Listen to the appbar title
ValueNotifier<bool> isTitleNotifier = ValueNotifier(false);
