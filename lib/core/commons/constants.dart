import '../../infrastructure/common/homepage_listing.dart';

class Constants {
  static String apiKey = ''; // use your API key
  static String dummyImg =
      'https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1270273/regular_1708x683_0722_Flutter_Advantages_and_Benefits_Zara_Newsletter___blog__1_-82380dbb7488ae7bed69819aff0ea04c-9ef2341e8ed6d862a067c83c750630b2.png';
  static List<String> chooseSectionForStories = [
    'arts',
    'automobiles',
    'food',
    'books/review',
    'movies',
    'sports',
    'politics',
    'fashion',
    'home',
    'business',
  ];

  // static List<Map<String,String>> homePageListing = [
  //   {
  //     "title":"Dummy UI",
  //     "description":"Introducing basic flutter widget UI"
  //   },
  //   {
  //     "title":"Counter Example (State Management)",
  //     "description":"Introducing of state management using flutter_bloc. Level: 1"
  //   },
  //   {
  //     "title":"Input Validation Example (State Management)",
  //     "description":"Flutter state management using flutter_bloc to handle validation in text field. Level: 2"
  //   },
  //   {
  //     "title":"Calculator Example (State Management)",
  //     "description":"Flutter state management using flutter_bloc to calculate simple syntax. Level: 3"
  //   },
  //   {
  //     "title":"News App",
  //     "description":"API calling using free source from NYTimes"
  //   },
  //   {
  //     "title":"To Do App",
  //     "description":"Create a to do list that saved in locall storage using hydrated_bloc. Level: 4"
  //   },
  // ];

  static List<HomepageListing> homePageListing = [
    HomepageListing(title: "Dummy UI", description: "Introducing basic flutter widget UI"),
    HomepageListing(title: "Counter Example (State Management)", description: "Introducing of state management using flutter_bloc. Level: 1"),
    HomepageListing(title: "Input Validation Example (State Management)", description: "Flutter state management using flutter_bloc to handle validation in text field. Level: 2"),
    HomepageListing(title: "Calculator Example (State Management)", description: "Flutter state management using flutter_bloc to calculate simple syntax. Level: 3"),
    HomepageListing(title: "News App", description: "API calling using free source from NYTimes"),
    HomepageListing(title: "To Do App", description: "Create a to do list that saved in locall storage using hydrated_bloc. Level: 4")
  ];
}
