-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2023 at 07:10 PM
-- Server version: 10.5.22-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `andj7367_andrewORdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Articles`
--

CREATE TABLE `Articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `glance` varchar(500) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Articles`
--

INSERT INTO `Articles` (`article_id`, `title`, `content`, `author_id`, `created_at`, `thumbnail_image`, `glance`, `slug`) VALUES
(51, '\"Breaking Bread, Not Bad\" â€“ A Fun Guide on How to Cook Like Walter White', '<p><strong style=\"background-color: rgb(247, 247, 248); color: rgb(55, 65, 81);\"><em>So, you want to channel your inner Heisenberg and cook up a storm in the kitchen, but without any illegal activities? Well, you\'ve come to the right place! This is your guide on \"How to Cook Like Walter White\" without any of the methamphetamine. It\'s all about cooking up a different kind of chemistry in the kitchen.</em></strong></p><p><br></p><p><strong style=\"color: var(--tw-prose-bold);\">Ingredients:</strong></p><ul><li><strong style=\"color: var(--tw-prose-bold);\">Apron of Authority</strong><strong>: Just like Walter White, you\'ll need an apron. But instead of blue crystals, this one should have a \"Kiss the Cook\" slogan.</strong></li><li><strong style=\"color: var(--tw-prose-bold);\">Safety Glasses</strong><strong>: Protect those eyes from stray food particles or exploding popcorn kernels.</strong></li><li><strong style=\"color: var(--tw-prose-bold);\">A Caravan (RV)</strong><strong>: Well, not really. A functioning kitchen will do just fine.</strong></li></ul><p><br></p><p><span style=\"color: var(--tw-prose-bold);\">Cooking Steps:</span></p><ol><li><span style=\"color: var(--tw-prose-bold);\">Get Yourself a Fun Cooking Alias</span>: Walter White had Heisenberg. You can choose your own alias. How about \"Sizzlenator\"?</li><li><span style=\"color: var(--tw-prose-bold);\">Unique Blue Pancakes</span>: Whip up some blueberry pancakes. They may not be blue meth, but they\'re delicious and legal.</li><li><span style=\"color: var(--tw-prose-bold);\">Cook With Intent</span>: Remember, Walter White always cooked with intent. Cook your meals like you\'re the kingpin of cuisine.</li><li><span style=\"color: var(--tw-prose-bold);\">Appreciate the Chemistry</span>: Respect the chemistry of cooking. Mix ingredients in the right proportions, and who knows, you might create a culinary masterpiece.</li><li><span style=\"color: var(--tw-prose-bold);\">Cook Breakfast for Everyone</span>: Make breakfast for your family, just like Walter White. Pancakes, eggs, bacon, and of course, coffee!</li><li><span style=\"color: var(--tw-prose-bold);\">Wear a Pork Pie Hat</span>: Okay, this isn\'t about cooking, but it adds a touch of Heisenberg to your culinary adventures.</li><li><span style=\"color: var(--tw-prose-bold);\">Safety First</span>: Always remember to cook safely, unlike Walter White\'s risky business. Keep your kitchen safe and clean.</li><li><span style=\"color: var(--tw-prose-bold);\">Have a Sidekick</span>: Walter White had Jesse Pinkman. You can have your loyal sous-chef or a trusty apron-wearing pet.</li><li><span style=\"color: var(--tw-prose-bold);\">Serve With a Smile</span>: When serving your culinary creations, channel your inner Walter White and give your guests a sly smile.\'</li></ol><p><br></p><p><br></p><p><strong>Remember, this guide is purely for fun and fictional entertainment. We do not endorse or promote any illegal activities or harmful substances. Instead, let\'s enjoy the art of cooking and create delicious, legal dishes in our kitchens. Enjoy your culinary adventures, but please keep it safe and legal!</strong></p>', 580, '2023-10-23 16:46:04', 'artworks-s3hAY2Wy59TxKfWf-bKC23A-t500x500.jpg', 'So, you want to channel your inner Heisenberg and cook up a storm in the kitchen, but without any illegal activities? Well, you\'ve come to the right place! This is your guide on \"How to Cook Like Walter White\" without any of the methamphetamine. It\'s all about cooking up a different kind of chemistry in the kitchen.', 'breaking-bread-not-bad-a-fun-guide-on-how-to-cook-like-walter-white'),
(57, 'Los Pollos Hermanos: The Iconic Fast-Food Chain of Breaking Bad', '<p><strong>The Birth of Los Pollos Hermanos</strong></p><p>Los Pollos Hermanos was created by the show\'s creator, Vince Gilligan, as a fictitious fast-food restaurant. It was presented as a chain of chicken restaurants with a focus on quality and community involvement. The fictional owner of Los Pollos Hermanos, Gustavo \"Gus\" Fring, is portrayed as a respectable, mild-mannered businessman, which sharply contrasts with his true nature as a drug lord and criminal mastermind.</p><p><br></p><p><strong>The Role in \"Breaking Bad\"</strong></p><p>\"Breaking Bad,\" a series that explores the transformation of Walter White from a high school chemistry teacher into a drug kingpin, used Los Pollos Hermanos as a symbol of duality. On the surface, it appeared to be a legitimate business known for its delicious fried chicken, clean establishments, and philanthropic activities. However, behind the scenes, it served as a front for the distribution of blue methamphetamine.</p><p>Gus Fring, portrayed by Giancarlo Esposito, is one of the series\' most enigmatic and chilling characters. He meticulously maintained his facade as a philanthropic entrepreneur while overseeing a vast drug operation. Los Pollos Hermanos was pivotal in facilitating his drug empire, and the tension of this duality added a layer of complexity to the show\'s plot.</p><p><br></p><p><strong>The Iconic Logo</strong></p><p>The Los Pollos Hermanos logo, featuring a simple and memorable design of a chicken and two brothers, became an iconic symbol associated with the show. This logo appeared on cups, restaurant signage, and packaging, creating a strong brand presence within the show and in real life. The popularity of the logo has led to the sale of real-world merchandise, further blurring the lines between fiction and reality.</p><p><br></p><p><strong>Real-World Influence</strong></p><p>The success of \"Breaking Bad\" propelled Los Pollos Hermanos into popular culture. Fans of the show have occasionally sought out real restaurants with similar names, hoping to experience a taste of the \"Breaking Bad\" universe. Some entrepreneurial ventures have even adopted the name and logo for their businesses, capitalizing on the show\'s fanbase.</p><p><br></p><p><strong>Popularity Beyond the Show</strong></p><p>In addition to its appearances in \"Breaking Bad,\" Los Pollos Hermanos has made cameo appearances in the spin-off series \"Better Call Saul.\" This further solidified its status as a beloved element of the extended \"Breaking Bad\" universe.</p><p><br></p><p><strong>Conclusion</strong></p><p>Los Pollos Hermanos, the fictional fast-food chain from \"Breaking Bad,\" remains an enduring symbol of duality, deception, and iconic branding. Its role in the show as a front for a drug empire and its memorable logo have left a lasting impression on viewers and pop culture enthusiasts alike. The name Los Pollos Hermanos, which was intended as a symbol of wholesome family values, became a reminder that things are not always what they seem, both in the world of television and in real life. This franchise within the Breaking Bad universe serves as a testament to the power of storytelling and its ability to make fictional concepts part of our cultural fabric.</p>', 580, '2023-10-24 09:40:45', 'LosPollos-20170331092728472.jpg', '\"Los Pollos Hermanos\" is a fictional fast-food chain that has left an indelible mark on popular culture, thanks to its prominent role in the critically acclaimed television series \"Breaking Bad.\" This establishment, which translates to \"The Chicken Brothers,\" became an iconic part of the show\'s narrative, and its portrayal as a legitimate business front for a drug empire left an enduring impression. In this article, we delve into the world of Los Pollos Hermanos, examining its origins, its pivot', 'los-pollos-hermanos-the-iconic-fast-food-chain-of-breaking-bad'),
(58, 'Christopher Nolan: The Visionary Filmmaker Who Defies Conventions', '<h2>Early Life and Career Beginnings</h2><p>Born on July 30, 1970, in London, Christopher Edward Nolan\'s journey into the world of filmmaking began at a young age. His father, Brendan James Nolan, was an advertising executive, and his mother, Christina Nolan, worked as a flight attendant. His early exposure to filmmaking came through his father\'s Super 8 camera, which he used to shoot short films with his friends.</p><p>Nolan\'s formal education in filmmaking took place at University College London, where he studied English literature. His interest in the subject played a pivotal role in shaping his approach to storytelling in his later works. In 1998, he directed his first feature film, \"Following,\" a low-budget neo-noir thriller that showcased his penchant for non-linear storytelling and intricate plot structures.</p><p><br></p><h2>Breakthrough with \"Memento\"</h2><p>Nolan\'s career truly took off with the release of \"Memento\" in 2000. The film\'s unique narrative structure, where scenes are presented in reverse order, garnered critical acclaim and established Nolan as a master of complex storytelling. \"Memento\" not only challenged conventional filmmaking but also garnered Academy Award nominations, marking the beginning of a remarkable journey in the industry.</p><p><br></p><h2>The Dark Knight Trilogy</h2><p>Nolan\'s impact on the film industry reached new heights with his reimagining of the Batman franchise in \"The Dark Knight Trilogy.\" Starring Christian Bale as Batman and Heath Ledger in an iconic portrayal of the Joker, the trilogy redefined the superhero genre. Nolan\'s dedication to practical effects, compelling character development, and a realistic take on the superhero mythos set a new standard in the world of comic book adaptations.</p><p>\"The Dark Knight,\" the second installment in the trilogy, particularly stood out, receiving widespread critical acclaim. It delved into the moral complexities of heroism and villainy, and Ledger\'s posthumous Oscar win for his role as the Joker remains one of the most celebrated moments in the history of cinema.</p><p><br></p><h2>Interstellar, Inception, and Dunkirk</h2><p>Nolan\'s exploration of ambitious, high-concept ideas continued with \"Inception,\" a mind-bending heist film set within dreamscapes, and \"Interstellar,\" a space odyssey that delved into themes of love, time, and human survival. Both films showcased his ability to blend intricate narratives with breathtaking visuals, making the audience question the boundaries of reality.</p><p>\"Dunkirk\" marked another milestone in Nolan\'s career. The war epic offered a visceral and immersive experience, skillfully weaving together multiple narratives during the evacuation of Dunkirk in World War II. The film\'s use of IMAX cameras and practical effects earned it critical acclaim and further solidified Nolan\'s reputation as a master craftsman.</p><p><br></p><h2>Nolan\'s Signature Style</h2><p>Christopher Nolan\'s filmmaking is characterized by several distinct elements:</p><ol><li><span style=\"color: var(--tw-prose-bold);\">Complex Narratives:</span> Nolan\'s films often feature intricate, non-linear storytelling, challenging viewers to engage actively with the plot.</li><li><span style=\"color: var(--tw-prose-bold);\">Practical Effects:</span> He emphasizes practical effects over CGI, resulting in stunning, tangible visuals.</li><li><span style=\"color: var(--tw-prose-bold);\">Exploration of Time:</span> Many of his films delve into the manipulation and perception of time, creating unique narrative structures.</li><li><span style=\"color: var(--tw-prose-bold);\">Moral and Philosophical Themes:</span> Nolan frequently explores deep philosophical and moral questions within his narratives.</li><li><span style=\"color: var(--tw-prose-bold);\">Mind-Bending Concepts:</span> His films often feature high-concept ideas that challenge the audience\'s perception of reality.</li></ol><p><br></p><h2>Legacy and Future Endeavors</h2><p>Christopher Nolan\'s impact on cinema extends beyond his individual films. He has inspired a new generation of filmmakers to think creatively and push the boundaries of storytelling. His dedication to celluloid film in the digital age also emphasizes the importance of preserving the traditions of cinema.</p><p>As of my last knowledge update in September 2021, Christopher Nolan continues to work on new and exciting projects, including \"Tenet,\" released in 2020. His dedication to cinematic storytelling ensures that audiences can look forward to more thought-provoking and visually stunning films in the years to come.</p><p>In summary, Christopher Nolan\'s unique storytelling style, dedication to practical effects, and exploration of complex themes have made him a beloved and influential figure in the world of filmmaking. His work challenges both audiences and filmmakers to expand their understanding of the medium and continues to shape the landscape of modern cinema.</p>', 580, '2023-10-24 09:55:00', 'Christopher-Nolan.jpg', 'Christopher Nolan is a name synonymous with cinematic brilliance and storytelling innovation. He has carved out a niche in the film industry as a visionary director, screenwriter, and producer known for pushing the boundaries of conventional storytelling. With a penchant for mind-bending narratives, intricate plots, and stunning visuals, Nolan has earned his place among the most influential filmmakers of our time.', 'christopher-nolan-the-visionary-filmmaker-who-defies-conventions'),
(62, 'The B-21 Raider: Northrop Grumman\'s Stealthy Bomber of the Future', '<p><em>Introduction:</em></p><p>The B-21 Raider, a cutting-edge long-range stealth bomber developed by Northrop Grumman, is set to redefine the landscape of aerial warfare in the 21st century. As the successor to the iconic B-2 Spirit, this new bomber boasts advanced technology and capabilities that promise to maintain the United States\' air dominance for decades to come.</p><p><em>Design and Stealth:</em></p><p>The B-21 Raider is characterized by its futuristic and stealthy design, aimed at reducing its radar cross-section to a minimum. The bomber is designed to penetrate sophisticated enemy air defenses while remaining virtually invisible to radar, making it a formidable asset in strategic and tactical operations.</p><p><em>Next-Generation Capabilities:</em></p><p>One of the key features of the B-21 is its adaptability and cutting-edge technology. Equipped with state-of-the-art avionics and electronics, it can carry a wide range of weapons, including precision-guided munitions, to engage a variety of targets. The bomber\'s adaptability to carry both conventional and nuclear payloads provides flexibility in addressing various mission profiles.</p><p><em>Operational Range:</em></p><p>The B-21 Raider is designed for global reach, with an extended operational range that allows it to conduct missions anywhere in the world. This means it can be deployed quickly and effectively to address threats and challenges on a global scale.</p><p><em>Cost-Efficiency:</em></p><p>While the development of the B-21 Raider represents a significant investment in military technology, its overall lifecycle cost is expected to be more manageable than some of its predecessors. The focus on cost-efficiency and maintainability will ensure that this bomber remains an integral part of the United States\' defense strategy for years to come.</p><p><em>Sustainability and Environmental Impact:</em></p><p>In an era where environmental sustainability is a growing concern, the B-21 Raider incorporates advanced technologies to minimize its environmental footprint. Its engines are designed to be more fuel-efficient, reducing the emissions associated with its operations.</p><p><em>Stealth and Evasion:</em></p><p>Stealth capabilities play a crucial role in the B-21 Raider\'s survivability. Its design minimizes radar detection, and advanced electronic countermeasures provide additional layers of defense against enemy threats. This ensures that the bomber can operate in contested airspace with reduced risk.</p><p><em>Global Strategic Deterrence:</em></p><p>The B-21 Raider contributes significantly to the United States\' strategic deterrence capabilities. As a part of the nuclear triad, it plays a pivotal role in maintaining peace and security on a global scale. The bomber\'s ability to deliver nuclear payloads provides a powerful deterrent against potential adversaries.</p><p><em>Conclusion:</em></p><p>The B-21 Raider, developed by Northrop Grumman, represents a leap forward in military aviation technology. Its cutting-edge design, stealth capabilities, adaptability, and range make it a vital asset in the United States\' military arsenal. As this bomber continues to develop and enter service, it will undoubtedly play a significant role in shaping the future of aerial warfare and global security for years to come.</p>', 580, '2023-10-24 10:49:02', 'Northrop-Grumman-and-the-US-Air-Force-Introduce-the-B-21-Raider-the-Worlds-First-Sixth-Generation-Ai.jpg', 'The B-21 Raider, a cutting-edge long-range stealth bomber developed by Northrop Grumman, is set to redefine the landscape of aerial warfare in the 21st century. As the successor to the iconic B-2 Spirit, this new bomber boasts advanced technology and capabilities that promise to maintain the United States\' air dominance for decades to come.', 'the-b-21-raider-northrop-grummans-stealthy-bomber-of-the-future');

-- --------------------------------------------------------

--
-- Table structure for table `ArticleTags`
--

CREATE TABLE `ArticleTags` (
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Authors`
--

CREATE TABLE `Authors` (
  `author_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL,
  `about_me` varchar(50) DEFAULT NULL,
  `profile_picture_path` varchar(255) DEFAULT 'https://andrewoethara.my.id/img/default.jpg',
  `verification_token` varchar(255) DEFAULT NULL,
  `account_verified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Authors`
--

INSERT INTO `Authors` (`author_id`, `name`, `email`, `created_at`, `password`, `about_me`, `profile_picture_path`, `verification_token`, `account_verified`) VALUES
(580, 'Andrew Oethara', 'andrewoeth100@gmail.com', '2023-10-23 06:47:49', '$2y$10$J4ewjVvobJOXY60QdTRjUeCpLhsgZaTxKbwcIG3sUfKnxjNjvocBa', 'Movie Reviewer | Foodie | Programmer | Tech Enthus', 'https://andrewoethara.my.id/img/Juda Hutasoit.jpg', '8c18ac5cf8f31fba66d6832171ff05c5a5f03d131e42e107dd15d6152239bd58', 1),
(581, 'Andrew', 'andrewoeth200@gmail.com', '2023-10-23 15:47:22', '$2y$10$o/qKBYM4x0kogBo3fiQTyOWT5bQmtb8BptgnDZLXoLxD8L/CikMX2', NULL, 'https://andrewoethara.my.id/img/default.jpg', '9b061acbdec05347a23c1c40ba6c941ae0be978903b80b8cfc0784aedfc5e07c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Tags`
--

CREATE TABLE `Tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `ArticleTags`
--
ALTER TABLE `ArticleTags`
  ADD KEY `article_id` (`article_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `Authors`
--
ALTER TABLE `Authors`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- Indexes for table `Tags`
--
ALTER TABLE `Tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `tag_name` (`tag_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `Authors`
--
ALTER TABLE `Authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Articles`
--
ALTER TABLE `Articles`
  ADD CONSTRAINT `Articles_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `Authors` (`author_id`) ON DELETE CASCADE;

--
-- Constraints for table `ArticleTags`
--
ALTER TABLE `ArticleTags`
  ADD CONSTRAINT `ArticleTags_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `Articles` (`article_id`),
  ADD CONSTRAINT `ArticleTags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `Tags` (`tag_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
