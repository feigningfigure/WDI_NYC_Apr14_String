var repl = require("repl");

var four = ['mitt', 'from', 'will', 'long', 'back', 'just', 'help', 'tell', 'well', 'must', 'went', 'land', 'hand', 'last', 'left', 'next', 'stop', 'miss', 'list', 'song', 'best', 'fast', 'full', 'jump', 'pick', 'pull', 'sing', 'upon', 'band', 'bank', 'bell', 'belt', 'bend', 'bent', 'bled', 'blot', 'brag', 'brat', 'bred', 'brig', 'brim', 'bump', 'bunt', 'bust', 'camp', 'cast', 'clad', 'clam', 'clan', 'clap', 'clip', 'clot', 'club', 'crab', 'cram', 'crib', 'crop', 'damp', 'dent', 'drag', 'drip', 'drop', 'drug', 'drum', 'dump', 'dust', 'fact', 'fell', 'felt', 'fill', 'film', 'fist', 'flag', 'flap', 'flat', 'fled', 'flip', 'flop', 'frog', 'gasp', 'glad', 'glum', 'golf', 'grab', 'gram', 'grim', 'grin', 'grip', 'gulp', 'gust', 'held', 'hint', 'honk', 'hung', 'hunt', 'junk', 'kept', 'lamp', 'lick', 'lift', 'limp', 'lock', 'luck', 'lump', 'mask', 'mass', 'mast', 'melt', 'mend', 'milk', 'mill', 'mint', 'mist', 'neck', 'nest', 'pant', 'pass', 'past', 'pest', 'pill', 'plan', 'plop', 'plot', 'plug', 'plum', 'plus', 'pomp', 'pond', 'prop', 'punk', 'raft', 'rock', 'romp', 'runt', 'rust', 'sack', 'sand', 'sank', 'scab', 'scan', 'scat', 'self', 'sell', 'send', 'sent', 'sick', 'skid', 'skim', 'skin', 'skip', 'skit', 'slam', 'slap', 'slat', 'sled', 'slim', 'slip', 'slob', 'slot', 'slug', 'slum', 'smog', 'smug', 'snag', 'snap', 'snip', 'snub', 'snug', 'sock', 'soft', 'span', 'spat', 'sped', 'spin', 'spit', 'spot', 'spun', 'stab', 'stem', 'step', 'stun', 'suck', 'sung', 'swam', 'swim', 'tack', 'tent', 'test', 'till', 'tilt', 'trap', 'trim', 'trip', 'trot', 'twig', 'twin', 'weld', 'wind', 'bang', 'bill', 'cuff', 'deck', 'fang', 'fuss', 'gift', 'hang', 'huff', 'king', 'kiss', 'loft', 'lost', 'lung', 'mess', 'pack', 'puff', 'rest', 'ring', 'sang', 'sink', 'sits', 'stub', 'sunk', 'tank', 'tick', 'toss', 'vent', 'vest', 'wing', 'wink', 'yell', 'bong', 'doll', 'hill', 'kick', 'peck', 'ping', 'pong', 'ruff', 'zing', 'body', 'bunk', 'buzz', 'desk', 'duck', 'dunk', 'dusk', 'hump', 'hunk', 'kits', 'lack', 'less', 'link', 'nips', 'pink', 'rack', 'rang', 'rink', 'sips', 'taps', 'tusk', 'ugly', 'blab', 'blip', 'bond', 'brad', 'bran', 'cask', 'clod', 'cost', 'disk', 'dock', 'flit', 'fond', 'fret', 'gang', 'glen', 'glob', 'grit', 'husk', 'lend', 'lent', 'lint', 'mock', 'musk', 'pelt', 'plod', 'prim', 'prod', 'punt', 'rant', 'rent', 'risk', 'rung', 'scum', 'sift', 'silk', 'slid', 'slit', 'slop', 'snob', 'spud', 'sulk', 'swig', 'swum', 'task', 'tend', 'tint', 'tock', 'tram', 'trek', 'trod', 'wept', 'west', 'wick', 'wilt', 'zest', 'copy', 'else', 'fizz', 'kill', 'jazz'];
var five = ['spell', 'study', 'still', 'plant', 'along', 'often', 'until', 'carry', 'black', 'bring', 'drink', 'funny', 'seven', 'blast', 'blend', 'blimp', 'blink', 'bliss', 'block', 'blond', 'bluff', 'blunt', 'brand', 'brass', 'brunt', 'clamp', 'clasp', 'class', 'cliff', 'cling', 'clink', 'clump', 'clung', 'craft', 'cramp', 'crisp', 'crust', 'draft', 'drank', 'dress', 'drift', 'drill', 'fling', 'flung', 'flunk', 'frank', 'frill', 'frisk', 'frost', 'gland', 'glass', 'glint', 'gramp', 'grand', 'grant', 'grasp', 'grass', 'grill', 'grump', 'grunt', 'plank', 'plump', 'prank', 'press', 'print', 'scalp', 'scram', 'scrap', 'skill', 'skunk', 'slang', 'slant', 'slept', 'sling', 'slump', 'smack', 'smell', 'snack', 'sniff', 'spank', 'spend', 'spent', 'spill', 'splat', 'split', 'spunk', 'stack', 'stamp', 'stand', 'stiff', 'sting', 'stink', 'stomp', 'strap', 'strip', 'stuck', 'stump', 'swell', 'swift', 'swing', 'swung', 'tramp', 'trend', 'trick', 'trunk', 'trust', 'twang', 'twist', 'admit', 'album', 'blank', 'clock', 'crack', 'crept', 'cross', 'index', 'stuff', 'stunt', 'upset', 'click', 'cluck', 'stick', 'added', 'attic', 'brick', 'buddy', 'bunny', 'buses', 'cabin', 'camel', 'candy', 'daddy', 'Danny', 'fifty', 'habit', 'happy', 'jelly', 'Jimmy', 'kitty', 'lemon', 'limit', 'model', 'nanny', 'penny', 'puppy', 'robin', 'salad', 'sandy', 'scrub', 'silly', 'slick', 'stung', 'sunny', 'truck', 'tummy', 'unzip', 'visit', 'wagon', 'bless', 'brisk', 'clack', 'clang', 'crick', 'crock', 'flick', 'flock', 'frizz', 'gloss', 'gruff', 'plums', 'scuff', 'skips', 'skull', 'smock', 'snuff', 'speck', 'swept', 'track', 'given', 'adult', 'angry', 'belly', 'empty', 'extra', 'hurry', 'nasty', 'sorry'];
var six = ['number', 'around', 'animal', 'letter', 'mother', 'always', 'family', 'better', 'giving', 'script', 'splint', 'strand', 'struck', 'strung', 'absent', 'basket', 'bedbug', 'branch', 'catnip', 'dusted', 'goblin', 'hotrod', 'hunted', 'invent', 'lapdog', 'lasted', 'mascot', 'napkin', 'picnic', 'pigpen', 'public', 'rented', 'rested', 'shrimp', 'shrunk', 'splash', 'sunlit', 'sunset', 'suntan', 'tilted', 'tiptop', 'zigzag', 'crunch', 'dinner', 'doctor', 'forgot', 'insect', 'market', 'napper', 'sister', 'squirt', 'sudden', 'twitch', 'afraid', 'artist', 'attack', 'awning', 'bleach', 'bonnet', 'bright', 'cheese', 'church', 'clever', 'clutch', 'dragon', 'fabric', 'finish', 'flaunt', 'flight', 'fluffy', 'forest', 'forget', 'fright', 'garden', 'happen', 'hidden', 'hungry', 'kitten', 'knight', 'launch', 'living', 'mitten', 'object', 'poison', 'rabbit', 'return', 'ribbon', 'runway', 'scorch', 'scream', 'screen', 'shrink', 'slight', 'smooth', 'snooze', 'sprain', 'sprawl', 'spring', 'sprint', 'squawk', 'strain', 'stream', 'street', 'strict', 'string', 'strong', 'swerve', 'switch', 'tablet', 'tennis', 'thirst', 'thrill', 'throat', 'travel', 'vanish', 'wreath', 'wrench', 'winter', 'mitten', 'grouch', 'intern', 'plants', 'snatch', 'sneeze', 'speech', 'twelve', 'twenty', 'during', 'rather', 'things', 'zipper', 'asleep', 'carpet', 'corner', 'crayon', 'banana', 'bucket', 'carrot', 'finger', 'nickel', 'person', 'pocket', 'puppet', 'rocket', 'seesaw', 'squeak', 'sticky', 'summer', 'supper', 'ticket', 'melted', 'handed', 'landed'];
var seven = ['between', 'without', 'banging', 'bathtub', 'blasted', 'blended', 'bobsled', 'camping', 'contest', 'dentist', 'disrupt', 'himself', 'jumping', 'lending', 'pinball', 'planted', 'plastic', 'problem', 'ringing', 'shifted', 'sinking', 'sunfish', 'trusted', 'twisted', 'nothing', 'fishing', 'forever', 'grinned', 'perfect', 'sunburn', 'swimmer', 'whisper', 'applaud', 'begging', 'broiler', 'collect', 'delight', 'explore', 'gumball', 'harmful', 'helpful', 'herself', 'highway', 'kneecap', 'oatmeal', 'painful', 'popcorn', 'pretzel', 'restful', 'sandbox', 'scratch', 'splotch', 'stiffer', 'stretch', 'teacher', 'thinner', 'topcoat', 'traffic', 'treetop', 'trumpet', 'tugboat', 'visitor', 'weekend', 'wettest', 'written', 'present', 'twitter', 'against', 'balloon', 'bedroom', 'cartoon', 'chicken', 'squeeze', 'address', 'blanket', 'kitchen', 'monster', 'morning', 'pretend', 'shampoo', 'unhappy', 'pumpkin', 'printed'];
var eight = ['sentence', 'together', 'children', 'mountain', 'chipmunk', 'crashing', 'drinking', 'insisted', 'insulted', 'invented', 'squinted', 'standing', 'swishing', 'talented', 'whiplash', 'complain', 'granddad', 'sprinkle', 'surprise', 'umbrella', 'anything', 'anywhere', 'baseball', 'birthday', 'bluebird', 'cheerful', 'colorful', 'daylight', 'doghouse', 'driveway', 'everyone', 'faithful', 'flagpole', 'graceful', 'grateful', 'homemade', 'homework', 'housefly', 'kickball', 'kingfish', 'knockout', 'knothole', 'lipstick', 'lunchbox', 'newscast', 'nickname', 'peaceful', 'sailboat', 'shameful', 'sidewalk', 'snowball', 'splendid', 'suitcase', 'sunblock', 'sunshine', 'swimming', 'thankful', 'thinnest', 'whatever', 'whenever', 'windmill', 'possible', 'suddenly', 'airplane', 'alphabet', 'bathroom', 'favorite', 'medicine', 'dinosaur', 'elephant', 'February', 'football', 'forehead', 'headache', 'hospital', 'lollipop', 'outdoors', 'question', 'railroad', 'remember', 'sandwich', 'scissors', 'shoulder', 'softball', 'tomorrow', 'upstairs', 'vacation', 'restroom'];
var nine = ['different', 'something', 'important', 'sometimes', 'disrupted', 'finishing', 'insisting', 'punishing', 'shrinking', 'splashing', 'afternoon', 'beanstalk', 'blueprint', 'breakfast', 'butterfly', 'classmate', 'dragonfly', 'evergreen', 'gluestick', 'hopscotch', 'houseboat', 'jellyfish', 'newspaper', 'nighttime', 'paperback', 'quicksand', 'sandpaper', 'shipwreck', 'snowflake', 'somewhere', 'sunflower', 'wonderful', 'yardstick', 'president', 'astronaut', 'beautiful', 'bumblebee', 'cardboard', 'chocolate', 'classroom', 'cranberry', 'drugstore', 'furniture', 'milkshake', 'nightmare', 'telephone', 'difficult', 'everybody', 'hamburger', 'spaceship', 'spaghetti', 'stoplight', 'underwear', 'yesterday'];

  // guesses = 5;

var Hangman = function(words, guesses) {
  randomIndexPosition = (function(max) { return Math.floor(Math.random() * (max + 1));});
  var randIndex = randomIndexPosition(words.length);    // gets a random index within the length of the array
  var word = words[randIndex];                          // sets the word to that index value
  var wordLength = word.length;
  var wordArray = word.split("");
  var resultArray = [];
  var wrongGuesses = 0;
  var gameOver = false;
  var guessArray = [];


  while (wordLength > 0) {                              // sets resultsArray as "_ _ _ _"
    resultArray.push("_");
    wordLength -= 1;
  }


  this.progress = function() {                          // informs the user the status of the game board or if the game is over
    var wordString = wordArray.join("");
    var resultString = resultArray.join("");
    if (resultString === wordString) {
      console.log("Congratulations, you guessed: " + wordString);
     }
     else {
      console.log(resultArray.join(" "));
    }
  }

  this.guess = function(letter) {
    var check = false;
    var wordString = wordArray.join("");
    var resultString = resultArray.join("");
    var beenGuessed = false;

    guessArray.forEach(function(item) {
      if (letter === item) {
        beenGuessed = true;
      }
    });

    if (beenGuessed === true) {
      console.log("Already guessed!");
      return null;
    }
    else {
      guessArray.push(letter);
    }

    wordArray.forEach(function(item, index) {
      if (item === letter) {
        resultArray[index] = letter;
        check = true;
      }
    });

    if (check == false && wrongGuesses < guesses && gameOver == false) {
      wrongGuesses += 1;
      console.log("Incorrect guesses: " + wrongGuesses);
      console.log(resultArray.join(" "));
    }

    if (wordString === resultString && wrongGuesses < guesses) {
      console.log(wordString);
      console.log("You win!");
      gameOver = true;
    }
    else if (check === true && wrongGuesses < guesses) {
      console.log("Nice guess!");
      console.log(resultArray.join(" "));
    }
    else if (wrongGuesses >= guesses) {
      console.log("Game over!");
      console.log("The word was: " + wordString);
      gameOver = true;
      return null;
    }
  }

  this.giveUp = function() {
    gameOver = true;
    wrongGuesses = guesses;
    console.log("The word was: " + wordArray.join(''));
  }
}
// var game = new Hangman(six, 5);
var myrepl = repl.start("HANGMAN>");
myrepl.context.Hangman = Hangman
myrepl.context.four = four
myrepl.context.five = five
myrepl.context.six = six
myrepl.context.seven = seven
myrepl.context.eight = eight
myrepl.context.nine = nine
