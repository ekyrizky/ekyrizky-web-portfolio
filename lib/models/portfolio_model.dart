class PortfolioModel {
  final String title;
  final String category;
  final String description;
  final String image;
  final String? playstoreLink;
  final String? githubLink;

  PortfolioModel({
    required this.title,
    required this.category,
    required this.description,
    required this.image,
    this.playstoreLink,
    this.githubLink,
  });

  static List<PortfolioModel> portfolioItems = [
    PortfolioModel(
      title: "Vision+",
      category: "Android App",
      description:
          "Vision+ is an Indonesian over-the-top video streaming service owned by MNC Group. Vision+ service's content consists of video on demand contents (original titles, TV dramas and shows, films), free-to-air and premium channels (including international channels) and livestreaming events & sports.",
      image: 'assets/portfolio/visionplus.png',
      playstoreLink: "https://play.google.com/store/search?q=visionplus&c=apps",
    ),
    PortfolioModel(
      title: "Detikcom",
      category: "Android App",
      description:
          "Detikcom is an Indonesian digital media company owned by CT Corp subsidiary Trans Media. Detikcom is an online news portal and publishes the latest and most recent news today, covering events, accidents, crime, law, unique news, politics, and special coverage in Indonesia and internationally, by including a variety of services to ease transactions like purchasing Trans Studio or Trans Snow World tickets and to get information on the latest events and promos.",
      image: 'assets/portfolio/detikcom.png',
      playstoreLink: "https://play.google.com/store/search?q=detikcom&c=apps",
    ),
    PortfolioModel(
      title: "CNN Indonesia",
      category: "Android App",
      description:
          "CNN Indonesia is a media outlet that provides up-to-date news and current information quickly and reliably. Various latest news can be accessed 24 hours a week and is equipped with various categories and news topics you need, ranging from Political News articles, World Economic News, Modern Lifestyle, Football News, Latest Technology, to Automotive Developments in various types of articles and visuals.",
      image: 'assets/portfolio/cnn.png',
      playstoreLink:
          "https://play.google.com/store/search?q=cnn+indonesia&c=apps",
    ),
    PortfolioModel(
      title: "CNBC Indonesia",
      category: "Android App",
      description:
          "CNBC Indonesia is an economic and business media outlet that provides quick information related to the economic, business, stock index, stock market, investing, financial industry, political, legal, and security that arise in domestic and international economy dynamics.",
      image: 'assets/portfolio/cnbc.png',
      playstoreLink:
          "https://play.google.com/store/search?q=cnbc%20indonesia&c=apps",
    ),
    PortfolioModel(
      title: "Haibunda",
      category: "Android App",
      description:
          "Haibunda is pregnancy & parenting applciation to find the latest parenting, pregnancy, and breastfeeding information. you can keep track of your pregnancy, connect with Haibunda Squad and medical professionals through live chat, find baby name ideas, keep your little ones entertained with creative worksheets.",
      image: 'assets/portfolio/haibunda.png',
      playstoreLink: "https://play.google.com/store/search?q=haibunda&c=apps",
    ),
    PortfolioModel(
      title: "Insertlive",
      category: "Android App",
      description:
          "InsertLive application provides celebrity life, gossip, and entertainment information in the form of articles, videos, and live streaming of the Insert TV program. You can also customise content based on celebrities and topics you are interested in.",
      image: 'assets/portfolio/insertlive.png',
      playstoreLink: "https://play.google.com/store/search?q=insertlive&c=apps",
    ),
    PortfolioModel(
      title: "Stonks Calculator",
      category: "Android App",
      description:
          "Stonks Calculator is an application to calculate your profit or loss in stock market, cryptocurency, etc.",
      image: 'assets/portfolio/stonks.png',
      playstoreLink:
          "https://play.google.com/store/apps/details?id=com.ekyrizky.stonkscalculator",
      githubLink: "https://github.com/ekyrizky/stonks-calculator",
    ),
  ];
}
