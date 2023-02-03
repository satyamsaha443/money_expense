import 'package:money_expense/types/recurrence.dart';
import 'package:money_expense/realm.dart';
import 'package:money_expense/models/category.dart';
import 'package:intl/intl.dart';
import 'package:realm/realm.dart';

part 'expense.g.dart';

@RealmModel()
class $Expense {
  @PrimaryKey()
  late final ObjectId id;
  late final double amount;
  late final $Category? category;
  late final DateTime date;
  late final String? note;
  late final String? recurrence = Recurrence.none;

  get dayInWeek {
    DateFormat format = DateFormat("EEEE");
    return format.format(date);
  }

  get dayInMonth {
    return date.day;
  }

  get month {
    DateFormat format = DateFormat("MMM");
    return format.format(date);
  }

  get year {
    return date.year;
  }
}