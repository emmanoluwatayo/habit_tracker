import 'package:fluttertoast/fluttertoast.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import '../../../core/shared/enums/status.dart';

toastInfo({
  required String msg,
  required Status status,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    webBgColor: status == Status.error
        ? 'rgba(${AppColors.errorColor.red}, ${AppColors.errorColor.green}, ${AppColors.errorColor.blue}, ${AppColors.errorColor.opacity})'
        : 'rgba(${AppColors.primaryColor.red}, ${AppColors.primaryColor.green}, ${AppColors.primaryColor.blue}, ${AppColors.primaryColor.opacity})',
  );
}
