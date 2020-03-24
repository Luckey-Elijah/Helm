class Entry {
  String title;
  String body;
  DateTime date;
  // constructor for the Entry class
  Entry({this.title, this.body, this.date});

  // named constructor for today's date
  Entry.today() {
    date = DateTime.now();
  }
}

Entry firstEntry = Entry(
  title: 'My First Entry',
  date: DateTime.parse('06-24-2019'),
  body: '''
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac turpis posuere, maximus nulla id, ullamcorper massa. Etiam id pretium enim. Sed eget magna scelerisque, volutpat neque eget, lobortis leo. Sed non est dignissim, suscipit metus a, aliquam neque. Curabitur convallis neque sit amet turpis luctus, sodales facilisis metus iaculis. Curabitur gravida sagittis odio non sagittis. Nunc malesuada varius nisl non finibus. Aliquam vel ultricies erat. Nam non orci nec leo molestie vestibulum. Praesent et porta nunc, eget sagittis nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tortor nulla, pellentesque id felis feugiat, egestas lacinia eros. In id tellus nec erat ultricies consectetur.
  Phasellus lorem tortor, imperdiet eu ornare cursus, consequat in dolor. Ut erat nisl, ornare sed egestas non, ultricies vel est. Morbi sodales vel diam a viverra. Donec eros augue, dapibus blandit mi ac, cursus euismod ligula. Integer pulvinar, felis eget sodales rhoncus, risus ipsum posuere dui, at commodo quam est at quam. Curabitur eu dapibus enim. Nunc metus sem, fringilla a fermentum eu, cursus et sem. Proin eu neque elementum, elementum lacus at, fermentum leo. Proin eu lacus tincidunt, mollis ligula sed, mattis ante. Duis iaculis libero eu leo accumsan egestas. 
  ''',
);

Entry secondEntry = Entry(
  title: 'My Second Entry',
  date: DateTime.parse('06-26-2019'),
  body: '''
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam odio neque, lacinia eget ex non, auctor lacinia nisl. Nulla at tortor velit. Etiam vestibulum felis et maximus laoreet. Praesent porttitor, sem et tempor viverra, odio dolor bibendum nibh, id vulputate magna diam quis lacus. Aliquam erat volutpat. Ut auctor accumsan. 
  ''',
);
