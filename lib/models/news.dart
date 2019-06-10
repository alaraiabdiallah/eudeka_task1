class News {

  final String title;
  final String published_date;
  final String published_time;
  final String content;
  final String imgUrl;

  News({this.title, this.published_date, this.published_time, this.content, this.imgUrl});
}

List<News> newsDatum = [
  News(
    title: "Sierra",
    published_date: "20 September 2016",
    published_time: "10.12",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque semper felis sit amet lacus porta, id hendrerit ante mattis. Integer a sapien sed nunc consectetur luctus.",
    imgUrl: "https://cdn.geckoandfly.com/wp-content/uploads/2018/03/ios-11-3840x2160-4k-5k-beach-ocean-13655-830x467.jpg"
  ),

  News(
    title: "Mojave",
    published_date: "21 September 2016",
    published_time: "13.12",
    content: "Maecenas eleifend nec sem eget viverra. Curabitur porttitor ligula ut lorem faucibus, efficitur elementum ligula auctor.",
    imgUrl: "http://cdn.osxdaily.com/wp-content/uploads/2018/06/macos-mojave-night-wallpaper-r-610x343.jpg"
  ),
  News(
    title: "Android Q",
    published_date: "22 September 2016",
    published_time: "16.30",
    content: "Etiam condimentum purus at malesuada convallis. Aenean vulputate augue ac dapibus facilisis. Morbi ac posuere nunc, eget accumsan tortor.",
    imgUrl: "https://cdn.arstechnica.net/wp-content/uploads/2019/04/Android-Q-800x584.jpg"
  ),
  News(
    title: "Linux mint",
    published_date: "30 September 2016",
    published_time: "15.30",
    content: "In id enim vulputate, sollicitudin est at, pellentesque sapien. Nulla eget condimentum diam, sed imperdiet elit. Nullam et nunc iaculis, fringilla felis id, euismod risus.",
    imgUrl: "https://www.linuxmint.com/pictures/screenshots/tessa/thumb_cinnamon.png"
  ),
  News(
    title: "Manjaro",
    published_date: "21 December 2016",
    published_time: "12.12",
    content: "Lorem Ipsum Dolor Sit Amet",
    imgUrl: "https://www.dedoimedo.com/images/computers-years/2018-1/manjaro-17-1-final.jpg"
  ),
];