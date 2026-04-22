// Project imports:
import 'package:shared/mocks/tag_mock_data.dart';

class ApartmentFiltersMockJson {
  static Map<String, dynamic> fetchFilterTags = {
    "rent_goal": TagsMockData.rentGoal,
    "property_type": TagsMockData.propertyType,
    "rooms_count": TagsMockData.roomsCount,
    "rentDuration": TagsMockData.rentPeriod,
  };
}
