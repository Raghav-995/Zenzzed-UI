List<Map<String, dynamic>> allChat = [
  {
    'to': 'James Smith',
    'chat': [
      {
        1: 'Hi',
        2: 'I am interested to provide service',
      },
    ],
  },
  {
    'name': 'James Smith',
    'direction': 'left',
    'chat': [
      {
        1: 'Hi',
        2: 'Thank you so much.',
        3: 'How much will you charge for me',
      },
    ],
  },
  {
    'to': 'James Smith',
    'direction': 'right',
    'chat': [
      {
        1: '\$20',
        2: 'I\'ll give and offer of \$18 for you',
      },
    ],
  },
];
var userChat = [
  {
    'to': 'James Smith',
    'chat': [
      {
        1: 'Hi',
        2: 'I am interested to provide service',
        3: '\$20',
        4: 'I\'ll give and offer of \$18 for you',
      },
    ],
  },
];

//final List<Map<int, String>> allChats = [];

//var fi = userChat
   // .where((element) => element.containsKey('chat'))
    //.expand((element) => element['chat'] as List<Map<int, String>>)
    //.toList();
