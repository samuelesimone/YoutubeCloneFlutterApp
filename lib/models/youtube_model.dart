class YoutubeModel {
  final String title;
  final String description;
  final String thumbNail;
  final String publishedTime;
  final String channelTitle;
  final String channelAvatar;
  final String viewCount;
  final String likeCount;
  final String dislikeCount;

  YoutubeModel({
    this.title,
    this.description,
    this.channelAvatar,
    this.channelTitle,
    this.dislikeCount,
    this.likeCount,
    this.publishedTime,
    this.thumbNail,
    this.viewCount,
  });
}
List<YoutubeModel> youtubeData = [
  YoutubeModel (title: "Billie Eilish - Bad Guy", 
  description: "Live debut of bad-guy!",
  thumbNail: "https://upload.wikimedia.org/wikipedia/it/thumb/4/44/Bad_guy.jpeg/1200px-Bad_guy.jpeg",
  publishedTime: "2 mesi fa",
    channelTitle: "Billie Eilish",
    channelAvatar:
    "https://yt3.ggpht.com/-Sl-wTvscKTg/AAAAAAAAAAI/AAAAAAAAAn4/_76ZD1AcVUc/s48-nd-c-c0xffffffff-rj-k-no/photo.jpg",
    viewCount: "122.389.241 visualizzazioni",
    likeCount: "3,9 MLN",
    dislikeCount: "188.932",
  ),
  YoutubeModel(
    title: "Pixel 3 XL Second Impression: Notch City!",
    description: "Marques Brownlee gives his opinion on Pixel 3 XL",
    thumbNail:
    "https://i.ytimg.com/vi/Lg9N8XAZ6u4/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLC5n3UMS9pjWuzugjML9AcoqbEMOA",
    publishedTime: "16 ore fa",
    channelTitle: "Marqueus Brownlee",
    channelAvatar:
    "https://yt3.ggpht.com/a-/AN66SAwxVf-12cuqSiSP2HKPkpDqI0NCAghAiE7IVg=s288-mo-c-c0xffffffff-rj-k-no",
    viewCount: "917K views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
  YoutubeModel(
    title: "Eminem - Venom",
    description: "Listen to Venom (Music From The Motion Picture), out now: http://smarturl.it/EminemVenom",
    thumbNail:
    "https://i.ytimg.com/vi/8CdcCD5V-d8/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLA7A5_7k458KMkDNG0sweixgq856g",
    publishedTime: "6 giorni fa",
    channelTitle: "EminemMusic",
    channelAvatar:
    "https://yt3.ggpht.com/-qtnbIDAbSNQ/AAAAAAAAAAI/AAAAAAAAAJc/Zt6FE6ofr1I/s88-nd-c-c0xffffffff-rj-k-no/photo.jpg",
    viewCount: "53M views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
];