-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2018 at 11:39 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_video_3003`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `category_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(60) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_name`) VALUES
(1, 'Fantasy'),
(2, 'Adventure'),
(3, 'Drama'),
(4, 'Animation'),
(5, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_videos`
--

DROP TABLE IF EXISTS `tbl_videos`;
CREATE TABLE IF NOT EXISTS `tbl_videos` (
  `video_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_name` varchar(255) NOT NULL,
  `video_author` varchar(60) NOT NULL,
  `video_description` text NOT NULL,
  `video_duration` time NOT NULL,
  `video_upload_date` date NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `video_cover_image` varchar(80) NOT NULL DEFAULT 'default_cover.jpg',
  `video_rating` int(11) UNSIGNED NOT NULL,
  `video_visits` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_videos`
--

INSERT INTO `tbl_videos` (`video_id`, `video_name`, `video_author`, `video_description`, `video_duration`, `video_upload_date`, `video_url`, `video_cover_image`, `video_rating`, `video_visits`) VALUES
(1, 'Fantastic Beasts and Where to Find Them', 'Warner Bros. UK', 'Official Final Trailer for Fantastic Beasts and Where to Find Them - in UK cinemas November 18, 2016 – set in the wizarding world created by J.K. Rowling and directed by David Yates. The film stars Academy Award winner Eddie Redmayne, Colin Farrell, Ron Perlman, Dan Fogler, Katherine Waterston, Alison Sudol, Ezra Miller, Samantha Morton, Gemma Chan, and Jon Voight.', '00:02:52', '2016-09-28', 'https://www.youtube.com/watch?v=h2QHnBBmfrw', 'fbawtft.jpg', 11000, 2697337),
(2, 'The Hobbit', 'Warner Bros. Pictures', 'In theaters December 14, 2012.\r\n\r\n\"The Hobbit: An Unexpected Journey\" follows title character Bilbo Baggins, who is swept into an epic quest to reclaim the lost Dwarf Kingdom of Erebor from the fearsome dragon Smaug.  Approached out of the blue by the wizard Gandalf the Grey, Bilbo finds himself joining a company of thirteen dwarves led by the legendary warrior, Thorin Oakenshield.  Their journey will take them into the Wild; through treacherous lands swarming with Goblins and Orcs, deadly Wargs and Sorcerers. \r\n\r\nAlthough their goal lies to the East and the wastelands of the Lonely Mountain, first they must escape the goblin tunnels, where Bilbo meets the creature that will change his life forever...Gollum.   \r\n\r\nHere, alone with Gollum, on the shores of an underground lake, the unassuming Bilbo Baggins not only discovers depths of ingenuity and courage that surprise even him, he also gains possession of Gollum\'s \"precious\" ring that holds unexpected and useful qualities... A simple, gold ring that is tied to the fate of all Middle-earth in ways Bilbo cannot begin to know.', '00:02:31', '2012-08-19', 'https://www.youtube.com/watch?v=SDnYMbYB-nU', 'th.jpg', 17000, 5605957),
(3, 'Pan\'s Labyrinth', 'TrailersPlaygroundHD', 'Following a bloody civil war, young Ofelia enters a world of unimaginable cruelty when she moves in with her new stepfather, a tyrannical military officer. Armed with only her imagination, Ofelia discovers a mysterious labyrinth and meets a faun who sets her on a path to saving herself and her ailing mother. But soon, the lines between fantasy and reality begin to blur, and before Ofelia can turn back, she finds herself at the center of a ferocious battle between good and evil.', '00:02:30', '2013-08-20', 'https://www.youtube.com/watch?v=E7XGNPXdlGQ', 'pl.jpg', 2700, 870352),
(4, 'Stardust', 'YouTube Movies', '\"Scheming princes, wicked witches, flying pirates, celestial love, a pure-hearted hero, all in a magical land. What more do you want?\" raves Today\'s Gene Shalit for Stardust, an epic adventure starring Claire Danes with Michelle Pfeiffer and Robert De Niro. In Hopes of wooing a beautiful girl (Sienna Miller), Tristan (Charlie Cox) promises to bring her a falling star. But he\'s in for the adventure of his life when he discovers the star is actually a celestial beauty named Yvaine (Danes). When an old witch Lamia (Pfeiffer) attempts to steal Yvaine\'s youth, Tristan must protect her at all costs. This magical fairytale like no other will make you laugh out loud and believe in love again.', '00:02:30', '2012-05-04', 'https://www.youtube.com/watch?v=VfYBKDyF-Dk', 's.jpg', 0, 2064562),
(5, 'Jumanji: Welcome to the Jungle', 'YouTube Movies', 'Four teenagers in detention discover an old video game console with a game they’ve never heard of. When they decide to play, they are immediately sucked into the jungle world of Jumanji in the bodies of their avatars (Dwayne Johnson, Jack Black, Kevin Hart, and Karen Gillan). They’ll have to complete the adventure of their lives filled with fun, thrills and danger or be stuck in the game forever!\r\n\r\nActors\r\nDwayne Johnson\r\nJack Black\r\nKevin Hart\r\nKaren Gillan\r\nNick Jonas\r\nBobby Cannavale\r\nSer\'darius Blain\r\nMadison Iseman\r\nMorgan Turner\r\nAlex Wolff\r\nRhys Darby\r\nMarc Evan Jackson\r\nDirector\r\nJake Kasdan', '01:59:04', '2017-12-19', 'https://www.youtube.com/watch?v=XRcOZZDvMv4', 'Jumanji.jpg', 0, 258052),
(6, 'Black Panther', 'FilmSelect Trailer', 'After the death of his father, T\'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T\'Challa\'s mettle as king -- and as Black Panther -- gets tested when he\'s drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.', '02:15:00', '2017-10-16', 'https://www.youtube.com/watch?v=xjDjIWPwcPU', 'bp.jpg', 114000, 26503779),
(7, 'Avatar', 'JoBlo Movie Trailers', 'PLOT: A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.\r\n\r\nCAST: Sam Worthington, Zoe Saldana, Sigourney Weaver', '00:03:49', '2017-09-26', 'https://www.youtube.com/watch?v=6ziBFh3V1aM', 'a.jpg', 1000, 234905),
(8, 'Pirates of the Caribbean', 'Movieclips Classic Trailers', 'Blacksmith Will Turner teams up with eccentric pirate \"Captain\" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.', '00:02:25', '2013-09-19', 'https://www.youtube.com/watch?v=naQr0uTrH_s', 'potc.jpg', 4600, 1651933),
(9, 'Pirates of the Caribbean: Dead Men Tell No Tales', 'ZeroMedia', '\r\nPirates of the Caribbean: Dead Men Tell No Tales Teaser Trailer 1 (2017) Johnny Depp Movie HD [Official Trailer]', '00:02:19', '2016-10-02', 'https://www.youtube.com/watch?v=KpFMVcZ4o7U', 'pcdtnt.jpg', 121000, 13931585),
(10, 'The Mummy', 'Movieclips Classic Trailers', 'The Mummy Trailer - Directed by Stephen Sommers and starring Brendan Fraser Rachel Weisz John Hannah Arnold Vosloo and Kevin J. O\'Connor Dashing legionnaire Rick O\'Connell and Beni, his weasel of a companion, stumble upon the hidden ruins of Hamunaptra while in the midst of a battle in 1923, 3,000 years after Imhotep has suffered a fate worse than death; his body will remain undead for all eternity as a punishment for a forbidden love.', '00:03:55', '2011-12-11', 'https://www.youtube.com/watch?v=f7oKxlaUBac', 'tm.jpg', 919, 406827),
(11, 'The Greatest Showman', '20th Century Movies', 'Inspired by the imagination of P.T. Barnum, The Greatest Showman is an original musical that celebrates the birth of show business & tells of a visionary who rose from nothing to create a spectacle that became a worldwide sensation. Directed By Michael Gracey Cast: Hugh Jackman, Michelle Williams, Zac Efron, Zendaya, Rebecca Ferguson', '00:02:23', '2017-06-28', 'https://www.youtube.com/watch?v=AXCTMGYUg9A', 'lll.jpg', 85000, 19798187),
(12, 'Hidden Figures', '20th century fox', '12 YEARS A SLAVE is based on an incredible true story of one man\'s fight for survival and freedom.  In the pre-Civil War United States, Solomon Northup (Chiwetel Ejiofor), a free black man from upstate New York, is abducted and sold into slavery.  Facing cruelty (personified by a malevolent slave owner, portrayed by Michael Fassbender) as well as unexpected kindnesses, Solomon struggles not only to stay alive, but to retain his dignity.  In the twelfth year of his unforgettable odyssey, Solomon\'s chance meeting with a Canadian abolitionist (Brad Pitt) forever alters his life.\r\n\r\nStarring Chiwetel Ejiofor, Michael Fassbender, Benedict Cumberbatch, Paul Dano, Paul Giamatti, Lupita Nyong\'o, Sarah Paulson, Brad Pitt, and Alfre Woodard.  In theaters October 18.', '00:02:38', '2016-11-16', 'https://www.youtube.com/watch?v=5wfrDhgUMGI', 'hf.jpg', 10000, 7131513),
(13, 'The Help', 'DanceOn', 'Set in Mississippi during the 1960s, Skeeter (Emma Stone) is a southern society girl who returns from college determined to become a writer, but turns her friends\' lives -- and a small Mississippi town -- upside down when she decides to interview the black women who have spent their lives taking care of prominent southern families. Aibileen (Viola Davis), Skeeter\'s best friend\'s housekeeper, is the first to open up -- to the dismay of her friends in the tight-knit black community. Despite Skeeter\'s life-long friendships hanging in the balance, she and Aibileen continue their collaboration and soon more women come forward to tell their stories -- and as it turns out, they have a lot to say. Along the way, unlikely friendships are forged and a new sisterhood emerges, but not before everyone in town has a thing or two to say themselves when they become unwittingly -- and unwillingly -- caught up in the changing times.', '00:02:48', '2011-06-08', 'https://www.youtube.com/watch?v=aT9eWGjLv6s', 'thelp.jpg', 1300, 362883),
(14, 'Titanic', 'MoviesHistory', 'Deep-sea explorer Brock Lovett has reached the most famous shipwreck of all - the Titanic. Emerging with a safe believed to contain a diamond called \'The Heart of the Ocean\', he discovers the safe does not hold the diamond but a drawing of a beautiful woman wearing it. When Brock is later interviewed on TV, he shows the drawing to the cameras, and a 100-year-old woman named Rose Calvert living in Michigan recognizes the woman in the drawing - herself! On a visit to Brock\'s explorer ship over the wreck, Rose tells her story of the Titanic and its ill-fated voyage. Engaged to a would-be steel magnate, Caledon Hockley, she boards the Titanic\'s first-class suites with him & her mother in Southampton. Also boarding are Jack Dawson & his friend Fabrizio, after a lucky poker game wins them tickets in steerage. When Rose attempts suicide by jumping off the stern in 3rd class, Jack pulls her back onto the ship...and a bond is forged between them as Jack is invited by her into 1st-class the following day. Rose\'s mother & Cal Hockley try desperate measures to keep them apart. But that strategy goes out the window when the Titanic collides with an iceberg, and due to a design flaw begins to sink - despite being proclaimed \'unsinkable\'. Now Rose & Jack must fight to stay alive, but is young Jack already doomed because of his lower status as a steerage passenger? Written by Derek O\'Cain\r\n', '00:04:08', '2009-04-18', 'https://www.youtube.com/watch?v=zCy5WQ9S4c0', 't.jpg', 35000, 13263567),
(15, 'Fight Club', 'Movieclips Classic Trailers', 'A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club with strict rules and fight other men who are fed up with their mundane lives. Their perfect partnership frays when Marla (Helena Bonham Carter), a fellow support group crasher, attracts Tyler\'s attention.', '00:02:27', '2017-11-21', 'https://www.youtube.com/watch?v=qtRKdVHc-cE', 'fc.jpg', 126, 17167),
(16, 'Princess Mononoke', 'Madman', 'A beautifully realized tale of civilization versus nature, PRINCESS MONONOKE is a true epic by Japan\'s master animator Hayao Miyazaki. While protecting his village from a rampaging boar-god, the young warrior Ashitaka becomes afflicted with a deadly curse. To find the cure that will save his life, he journeys deep into sacred depths of the Great Forest Spirit\'s realm where he meets San (Princess Mononoke), a girl raised by wolves. It\'s not long before Ashitaka is caught in the middle of a battle between iron-ore prospecting humans and the forest dwellers. He must summon the spirit-powers and all his courage to stop man and nature from destroying each other. ', '00:01:42', '2014-09-16', 'https://www.youtube.com/watch?v=4OiMOHRDs14', 'princess.jpg', 16000, 3340083),
(17, 'Coco', 'Disney•Pixar', 'Despite his family’s baffling generations-old ban on music, Miguel (voice of newcomer Anthony Gonzalez) dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz (voice of Benjamin Bratt). Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way, he meets charming trickster Hector (voice of Gael García Bernal), and together, they set off on an extraordinary journey to unlock the real story behind Miguel\'s family history. Directed by Lee Unkrich, co-directed by Adrian Molina and produced by Darla K. Anderson, Disney•Pixar’s “Coco” opens in U.S. theaters on Nov. 22, 2017. ', '00:02:10', '2017-11-06', 'https://www.youtube.com/watch?v=Rvr68u6k5sI', 'c.jpg', 17000, 4415277),
(18, 'Finding Dory', 'Disney•Pixar', 'Disney•Pixar\'s “Finding Dory” reunites everyone’s favorite forgetful blue tang, Dory, with her friends Nemo and Marlin on a search for answers about her past. What can she remember? Who are her parents? And where did she learn to speak Whale? Directed by Andrew Stanton (“Finding Nemo,” “WALL•E”) and produced by Lindsey Collins (co-producer “WALL•E”), the film features the voices of Ellen DeGeneres, Albert Brooks, Ed O\'Neill, Kaitlin Olson, Ty Burrell, Eugene Levy and Diane Keaton. “Finding Dory” swims into theaters June 17, 2016. ', '00:01:48', '2016-10-02', 'https://www.youtube.com/watch?v=JhvrQeY3doI', 'fd.jpg', 12000, 3017216),
(19, 'Despicable Me 3', 'Illumination', 'The team who brought you Despicable Me and the biggest animated hits of 2013 and 2015, Despicable Me 2 and Minions, returns to continue the adventures of Gru, Lucy, their adorable daughters—Margo, Edith and Agnes—and the Minions. Despicable Me 3, directed by Pierre Coffin and Kyle Balda, co-directed by Eric Guillon, and written by Cinco Paul & Ken Daurio, will be released in theaters on June 30, 2017. The animated film is produced by Illumination’s Chris Meledandri and Janet Healy, and executive produced by Chris Renaud. Joining Steve Carell and Kristen Wiig in Despicable Me 3 is Emmy, Tony and Grammy Award winner Trey Parker, co-creator of Comedy Central’s global phenomenon South Park and the Broadway smash The Book of Mormon. Parker voices the role of villain Balthazar Bratt, a former child star who’s grown up to become obsessed with the character he played in the ‘80s, and proves to be Gru’s most formidable nemesis to date. ', '00:02:29', '2016-12-14', 'https://www.youtube.com/watch?v=6DBi41reeF0', 'dm3.jpg', 117000, 35922858),
(20, 'Monsters, Inc.', 'YouTube Movies', 'Lovable Sulley (John Goodman) and his wisecracking sidekick Mike Wazowski (Billy Crystal) are the top scare team at MONSTERS, INC., the scream-processing factory in Monstropolis. When a little girl named Boo wanders into their world, it\'s the monsters who are scared silly, and it\'s up to Sulley and Mike to keep her out of sight and get her back home.', '00:01:42', '2013-01-24', 'https://www.youtube.com/watch?v=8IBNZ6O2kMk', 'mi.jpg', 105, 100),
(21, 'Krampus', 'LEGENDARY', 'Legendary Pictures’ Krampus, a darkly festive tale of a yuletide ghoul, reveals an irreverently twisted side to the holiday. When his dysfunctional family clashes over the holidays, young Max (Emjay Anthony) is disillusioned and turns his back on Christmas. Little does he know, this lack of festive spirit has unleashed the wrath of Krampus: a demonic force of ancient evil intent on punishing non-believers. All hell breaks loose as beloved holiday icons take on a monstrous life of their own, laying siege to the fractured family’s home and forcing them to fight for each other if they hope to survive. The horror-comedy also stars Adam Scott, Toni Collette, David Koechner, Allison Tolman, Conchata Ferrell, Stefania Lavie Owen and Krista Stadler. Krampus and his mischievous underlings have been created by the combined efforts of Weta Workshop and Weta Digital, both renowned for their epic work on The Lord of the Rings and The Hobbit trilogies and King Kong, among many others. Written and directed by Michael Dougherty (Trick ’r Treat), Krampus is co-written by Zach Shields and Todd Casey and produced by Legendary’s Thomas Tull and Jon Jashni, Alex Garcia and Dougherty. The film will be released by Universal Pictures.', '00:02:33', '2015-09-09', 'https://www.youtube.com/watch?v=h6cVyoMH4QE', 'kramp.jpg', 53000, 17069945),
(22, 'Get Out', 'Movieclips Trailers', 'A young African American man visits his Caucasian girlfriend\'s cursed family estate.\r\n', '00:02:32', '2016-10-04', 'https://www.youtube.com/watch?v=DzfpyUB60YY', 'go.jpg', 56000, 13497862),
(23, 'The Witch', 'a24', 'In 1630 New England, panic and despair envelops a farmer, his wife and their children when youngest son Samuel suddenly vanishes. The family blames Thomasin, the oldest daughter who was watching the boy at the time of his disappearance. With suspicion and paranoia mounting, twin siblings Mercy and Jonas suspect Thomasin of witchcraft, testing the clan\'s faith, loyalty and love to one another.\r\n', '00:02:30', '2015-08-19', 'https://www.youtube.com/watch?v=iQXmlf3Sefg', 'tw.jpg', 3300, 15909513),
(24, 'Howl', 'New Trailer Buzz', 'Train passengers band together to fight a deadly creature.\r\nhorror - werewolf horror', '00:02:09', '2015-05-18', 'https://www.youtube.com/watch?v=1d4DACwz49o', 'howl.jpg', 1, 387525),
(25, 'I Am the Pretty Thing That Lives in the House ', 'Netflix', 'Hired to care for a reclusive elderly author (Paula Prentiss), a live-in nurse (Ruth Wilson) comes to believe her house is haunted.', '00:01:44', '2017-10-24', 'https://www.youtube.com/watch?v=NRP-4f_vyrY', 'prettything.jpg', 4, 1457706);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_videos_categories`
--

DROP TABLE IF EXISTS `tbl_videos_categories`;
CREATE TABLE IF NOT EXISTS `tbl_videos_categories` (
  `videos_categories_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_id` mediumint(8) NOT NULL,
  `category_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`videos_categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_videos_categories`
--

INSERT INTO `tbl_videos_categories` (`videos_categories_id`, `video_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
