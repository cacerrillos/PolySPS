-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Host: db571817431.db.1and1.com
-- Generation Time: Mar 20, 2016 at 04:26 PM
-- Server version: 5.1.73-log
-- PHP Version: 5.4.45-0+deb7u2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db571817431`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `username` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('caboolean', '84e2c64f38f78ba3ea5c905ab5a2da27'),
('admin', '416c1f23d6d5bf84ec174c220452abcd');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE IF NOT EXISTS `dates` (
  `date` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`date`) VALUES
('20150520'),
('20150521'),
('20150522'),
('20150526'),
('20150527'),
('20150528'),
('20150529');

-- --------------------------------------------------------

--
-- Table structure for table `presentations`
--

CREATE TABLE IF NOT EXISTS `presentations` (
  `uuid` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `firstname` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lastname` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `house` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `topic` mediumtext COLLATE latin1_general_ci NOT NULL,
  `date` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `block` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `location` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `juniors` int(11) NOT NULL,
  `seniors` int(11) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `presentations`
--

INSERT INTO `presentations` (`uuid`, `firstname`, `lastname`, `house`, `topic`, `date`, `block`, `location`, `juniors`, `seniors`) VALUES
('e34632695f5e33c3f80a30447c06caf1', 'Jessica', 'Nesci', 'N', 'Event Planning', '20150520', '1', 'Eng-11', 17, 16),
('baa4bf28e3af8759aa59a6e0192a0ea3', 'Jacob', 'Reyes', 'E', 'Independent Film Making', '20150520', '3', 'Eng-11', 17, 16),
('4bec1857316c72fb1e619698508a4848', 'Kade', 'Peich', 'E', 'Aerospace Engineering', '20150520', '1', 'Sci-12', 16, 16),
('4d4de6414bd4a53866d5fbbfd462b513', 'Alan', 'Gutierrez', 'E', 'Psychology', '20150520', '1', 'SS-11', 16, 16),
('5e6ec51d44ff011c3846ada68a858355', 'Cesar', 'Ponce', 'E', 'Imagineering', '20150520', '3', 'Math-11', 17, 16),
('b0d15e698fa1f206b9913b5ce62eb862', 'Kate', 'Khousavath', 'E', 'Vocal Performance', '20150528', '3', 'Math-12', 17, 16),
('63e3f15683f000cb5f2c0a9fc208bb98', 'Andrew', 'Morris', 'E', 'Film Directing', '20150521', '1', 'Eng-11', 17, 16),
('a52438c20b57af5c4a168e14047da7b4', 'Alyssa', 'Jurkevics', 'E', 'Wildlife Rehabilitation', '20150521', '1', 'Eng-12', 17, 16),
('819bbd39f89396e2737f2f7dfbbdacdb', 'Ester', 'Gonzalez', 'N', 'Digital Photography', '20150521', '1', 'Math-11', 17, 16),
('96cb04048cc88596586154b858ece9c7', 'Benedict', 'Paz', 'E', 'Airplane Museums', '20150521', '1', 'SS-11', 16, 16),
('a38afe2e3071bab33e3bff94481af969', 'Brandon', 'Le', 'E', 'Film Editing', '20150521', '2', 'Eng-12', 16, 16),
('da3f8f2d2722d669d09307bdacbb126d', 'Inez', 'Torres', 'E', 'Judo', '20150521', '2', 'Sci-11', 17, 16),
('a3f78cefd7302e0729714c84e2032be2', 'Mike', 'Rivera', 'E', 'Security', '20150521', '2', 'Sci-12', 17, 16),
('3aec6d8cf2e273235426918abf178dd7', 'Isabel', 'Elvira', 'S', 'Film Editing', '20150521', '2', 'SS-12', 17, 16),
('7d430d9353bc64244ffb33c79b6d723d', 'Yuritzi', 'Mora', 'E', 'Business Management', '20150521', '2', 'SS-12', 16, 16),
('c7435e9d987088f067023938f00770af', 'Natalie', 'Byrne', 'E', 'Effects of the Fashion Industry', '20150521', '3', 'Eng-11', 17, 16),
('96b765f7df2b643896c4759d5277e916', 'Alondra ', 'Bernadino', 'E', 'Special Ed Advisor', '20150521', '3', 'Sci-12', 16, 16),
('4337ac41a8f6c4fd6dc444511eb09405', 'Anais', 'Bolden', 'E', 'Home Health Counseling', '20150522', '1', 'Math-11', 17, 16),
('0f66af5c2bf2c4ad54d7abb8d513c7d7', 'Anthony', 'Torres', 'E', 'Fitness', '20150529', '1', 'Eng-12', 17, 16),
('3a171ff9f2cf717b3eb0b19893ec5fea', 'Sara', 'Pachamango', 'E', 'No-Kill Animal Shelters', '20150529', '1', 'Math-11', 17, 16),
('afb0a221df2558afe7274a5ce037bc9c', 'Daniel', 'Bustamante', 'W', 'US Military Intelligence', '20150526', '2', 'Sci-11', 17, 16),
('84a12206c83a6b803f3e8e964a0d0973', 'Sabrina', 'Carrera', 'E', 'Pharmacy', '20150527', '2', 'Sci-12', 16, 16),
('6abc7ce15a291130b342e5b6c3a21fe6', 'Jennifer', 'Pulido', 'E', 'Autism', '20150527', '2', 'SS-11', 16, 16),
('da5d045126083dcd137947d802157b69', 'Alyanna', 'Landayan', 'E', 'Language Acquisition', '20150527', '2', 'SS-12', 16, 16),
('1f48f495712f940d133293173b12710c', 'Gabriel', 'Marquez', 'E', 'Comic Store Management', '20150527', '3', 'Math-11', 17, 16),
('a2755cafdb475d95153895121d6a25b7', 'Janus', 'Navarro', 'E', 'Veterinary Medicine', '20150528', '1', 'Sci-11', 17, 16),
('041e1047d30cac4cf0551fc9db4f394e', 'Zi', 'Xu', 'E', 'Music Education', '20150528', '1', 'SS-11', 16, 16),
('468f1c9dee95b1519597977963a0a3b9', 'Elijah', 'Garcia', 'E', 'Editorial Publishing', '20150528', '2', 'Eng-11', 17, 16),
('42ddd20c1095bd12e5c7a2f18bcd8def', 'Jason', 'Wu', 'E', 'Computer Programming', '20150528', '2', 'Math-12', 17, 16),
('e95073bb6b548acf654e944ea568ac89', 'Stephanie', 'Marin', 'E', 'Teaching', '20150528', '2', 'Sci-11', 16, 16),
('d09f02959047f8407f8ceed0a7b4b3a4', 'Adriane', 'Parale', 'E', 'Nursing', '20150528', '2', 'SS-11', 16, 16),
('dc71408cf90f0586cf7ae296fced0cb1', 'Patty', 'Arellano', 'E', 'Early Childhood Development', '20150528', '3', 'Eng-11', 17, 16),
('a96f6ac3cbd47b5b9ef92291700b07a2', 'Gicelle', 'Alarcon', 'E', 'TV Production', '20150520', '3', 'Math-12', 17, 16),
('a80f17128da1aa0b7fd7fd7be3217483', 'Iliana', 'Solorzano', 'E', 'Theatre', '20150528', '3', 'SS-11', 16, 16),
('0d956879c346a8670e7c6a544f568554', 'Cheyenne', 'Jarman', 'S', 'Dance', '20150520', '1', 'Sci-11', 17, 16),
('382ff4f823b0fc0d6f063c847bbb281a', 'Lauren', 'Coronado', 'S', 'Psychology', '20150520', '2', 'Eng-12', 17, 16),
('9e9399b092b826811ec69b83ef02b402', 'Marissa', 'Jasso', 'S', 'Immigration Law', '20150520', '2', 'Math-11', 17, 16),
('a7269f5bc238b27b96134b04e48ea83d', 'Sean', 'Bustamante', 'E', 'Elementary School Teaching', '20150520', '2', 'SS-11', 16, 16),
('539d0438d46a4e6ffbcb42e03ae7c0a7', 'Stephanie', 'Soriano', 'S', 'Veterinary Medicine', '20150520', '2', 'SS-12', 16, 16),
('646744227b9a13bd74200c76bbade797', 'Bel', 'Sutthisoonthorn', 'S', 'Thai Restaurant Management', '20150521', '1', 'Sci-12', 17, 16),
('68a0fe39eca51c978f36a0b71c4a120f', 'Ilse', 'Gutierrez', 'S', 'Preschool Special Education', '20150521', '2', 'Math-11', 17, 16),
('26ba7934681ed64d12e68c2cef849a04', 'Matthew', 'Ibarra', 'S', 'Engineering', '20150521', '3', 'Eng-12', 17, 16),
('5ccf0663ac539180e7cc992ddd700ca7', 'Nicole', 'Lopez', 'S', 'Boxing', '20150521', '3', 'SS-12', 16, 16),
('bcb8a5f2572273f54d861d2a556d7ce7', 'Leslie', 'Salazar', 'S', 'Fitness', '20150522', '1', 'Eng-12', 17, 16),
('7d741fdec69e3c76d9e5f55efe410081', 'Desiree', 'Zarate', 'S', 'Culinary Arts', '20150522', '1', 'SS-11', 16, 16),
('a44cf5ae66df2188a0b235504fb3a191', 'Edwin', 'Davila', 'S', 'Psychiatric Support', '20150529', '1', 'Sci-11', 17, 16),
('6bd65f7d6ecc09c8a69d735f3198b6e2', 'Myles', 'Price', 'S', 'Small Animal Veterinary Med', '20150529', '1', 'SS-11', 16, 16),
('f8fdb0df51ed0167bbe8d94bddd512d9', 'Justine', 'Solorio', 'S', 'Criminal Profiling', '20150526', '1', 'Math-12', 17, 16),
('a274d05f3bbfe7a9bb594e713cfd1ec2', 'Esai', 'Cordova', 'S', 'Criminal Investigation', '20150526', '1', 'SS-12', 16, 16),
('a393dbfd2b449bcd8dd0db6b2b44d5f4', 'Victor', 'Gamboa', 'S', 'Drag Racing', '20150526', '2', 'Eng-11', 17, 16),
('31ec4c3aaa84a2a11cc19fa2b95429d0', 'Aaron', 'Martinez', 'S', 'Clinical Psychology', '20150526', '2', 'Math-11', 17, 16),
('096bfd365c4306f4788ea2fa34da996b', 'Adrienne ', 'Alba', 'S', 'Pharmacy Patient Compliance', '20150527', '1', 'Eng-11', 17, 16),
('2248452b096494b08471c025fcb3a671', 'Daniela ', 'Diaz', 'S', 'Teaching Kindergarten', '20150520', '1', 'Math-12', 17, 16),
('5515f0d30bcd05465754a3fec46a99f7', 'Hannah', 'Seyffert', 'S', 'Elder Care', '20150527', '1', 'Sci-11', 17, 16),
('d0384b84309696bcac5a66f2f82d85b4', 'Seanna', 'Vasquez', 'W', 'Labor and Delivery', '20150527', '1', 'Sci-12', 16, 16),
('e77bd0a9c623aea12602847668d8f61a', 'Alexander', 'Andronescu', 'S', 'Fashion Design', '20150527', '2', 'Math-12', 17, 16),
('549b79c7eab7d58f3e75913f2247b789', 'Joseph', 'Garcia', 'S', 'Primary Care', '20150527', '2', 'Sci-11', 17, 16),
('7c065f939bf6d6c1938b1187f0d25e59', 'Rebecca', 'Barberi', 'S', 'Business Management', '20150527', '3', 'Eng-11', 17, 16),
('16af7cfa00268cfc4b23fc0ab4180f17', 'Hannah', 'Tran', 'S', 'Theater Tech', '20150527', '3', 'Math-12', 17, 16),
('da0c91ee754dc577baf86dd353237d55', 'Lisette', 'Alvarado', 'S', 'Kindergarten Teaching', '20150527', '3', 'SS-11', 16, 16),
('8edd338990fbc0dda0d895dd14898ed8', 'Peter', 'Steinwald', 'S', 'Field Dog Training', '20150528', '1', 'Eng-12', 17, 16),
('9fad619e6723e6bd0373561ed94ac637', 'Givanti', 'Chatapal', 'S', 'Criminal Law', '20150520', '2', 'Math-12', 17, 16),
('cdf61607717e55cfdc3945f9925e7fb2', 'Sara', 'Baggia', 'S', 'Smaill Business Management', '20150528', '1', 'Sci-12', 16, 16),
('0649a37df81e4f6d46c2ba01fc373e3b', 'Leslie', 'Luna', 'S', 'Pediatrics', '20150528', '2', 'Sci-12', 17, 16),
('225657c6030eb7ac499441e656ca46af', 'Vanessa', 'Contreras', 'N', 'Music Executive', '20150528', '3', 'Eng-12', 17, 16),
('ecb3198b48e125ee633d6b29df8dbed0', 'Guadalupe', 'Huaracha', 'S', 'Suicidal Youth', '20150528', '3', 'SS-12', 16, 16),
('34082ac4e1fd715cdc1bbbbaca489abc', 'Ronny', 'Rodriguez', 'N', 'Enterpreneurship', '20150520', '1', 'Eng-12', 17, 16),
('59ce9d99cbef13d120db24dfabc53c71', 'Jessica', 'Castillo', 'N', 'Veterinary Medicine', '20150520', '1', 'Math-11', 17, 16),
('2ab1227e32f4b4aa6393c9b43914145f', 'Sarah', 'Regan', 'N', 'Digital Publishing', '20150520', '1', 'SS-12', 16, 16),
('8e7a69f146f7a89537ec45b94759f979', 'Veronica', 'Lopez', 'N', 'Documentary Filmmaking', '20150520', '2', 'Eng-11', 17, 16),
('a35f5478234a45b1366a5d86c5022bc2', 'Alexis ', 'Cristanto', 'N', 'Teaching Preschool', '20150520', '2', 'Sci-11', 17, 16),
('5c67453cdfb2ba6b0d37c4b692a72e99', 'Ian ', 'Kam', 'N', 'Physical Therapy', '20150520', '2', 'Sci-12', 16, 16),
('e4470c7bcf55036f7f1d619d2c77bd1f', 'Brandon', 'Salinas', 'N', 'Dance', '20150520', '3', 'Sci-12', 16, 16),
('7f780244593165556bcfd75c7d374d47', 'Eliora', 'Smith', 'E', 'Prosthetics', '20150521', '1', 'Math-12', 17, 16),
('524280c2044e1ce6a0890804a9b596c4', 'Tommy', 'Trang', 'N', 'Athletic Training', '20150521', '2', 'Eng-11', 16, 16),
('0460c9597ea1a561f26e7a265a8b8619', 'Susana', 'Pinon', 'N', 'Teen Counseling/Psychology', '20150521', '3', 'Math-11', 17, 16),
('967d4d163563f10fa080e021fc6ebfc6', 'Sachin', 'Suresh', 'N', 'Independent Film', '20150521', '3', 'Math-12', 17, 16),
('c4ba99d2ab3ed9a5ecc8cea75d98ad8f', 'Carl', 'LaRussa', 'N', 'GPS Tracking', '20150522', '1', 'Math-12', 17, 16),
('2e1afdb832fd78b7ad45243dba054f4c', 'Hannah', 'Leonard', 'N', 'Domestic Abuse/PTSD', '20150522', '1', 'SS-12', 16, 16),
('8d3b0857d7b77a692412eb755d021425', 'Valerie', 'Lopez', 'S', 'Neonatal Nursing', '20150526', '2', 'Eng-12', 17, 16),
('2aa90c35882badf61210b3e08487f9be', 'Emaan', 'Ahmed', 'N', 'Astrophysics', '20150526', '1', 'Eng-11', 17, 16),
('3a93d93e2b12af50238bb2c3f4429a99', 'Camille', 'Erskine', 'N', 'Counseling', '20150526', '1', 'Math-11', 17, 16),
('f476ff55c38d45ef8887df4801113b44', 'Imelda', 'Gomez', 'N', 'Art/Fashion', '20150526', '1', 'Sci-11', 17, 16),
('7ae284d78dfdf518d0f48a28aa58c40a', 'Isabella', 'Grelio', 'N', 'Small Business Growth', '20150526', '2', 'SS-11', 16, 16),
('6a7a35ca622a9d10e5e66e3a341418e9', 'Humberto', 'Tavira', 'N', 'Business Management', '20150527', '1', 'SS-11', 16, 16),
('0205cf9fa69b41d0b975c1a41f8d48c8', 'Alonso', 'Villanueva', 'N', 'Teaching History', '20150527', '2', 'Math-11', 17, 16),
('fadb6278368b6d2313fe5911c50a3e8b', 'Aralia', 'Giron', 'N', 'Creative Non-Fiction', '20150527', '3', 'Eng-12', 17, 16),
('3ffb49952912a97e26268e4b036595a0', 'Malorie', 'Wolfe', 'N', 'Fashion Merchandising', '20150527', '3', 'Sci-11', 17, 16),
('c7588a79576960693d80eb19456269be', 'Ariami', 'Garcia', 'N', 'Midwifery', '20150528', '1', 'SS-12', 16, 16),
('d213f2d863998bf121e4d16c8084fb12', 'Ingrid', 'Mata', 'N', 'Elementary Education', '20150528', '2', 'Math-11', 17, 16),
('29c87793e4e74e9ab6eb59be8301716b', 'Micah', 'Chambers', 'N', 'Film Production', '20150528', '2', 'SS-12', 16, 16),
('aa31b8c1a6139cd150180ba84b058518', 'Brian', 'Arteaga', 'N', 'Small Business Management', '20150528', '3', 'Sci-11', 17, 16),
('749128624eac8e34cb34412092ef2443', 'Diego', 'Luna', 'N', 'Store Management', '20150528', '3', 'Sci-12', 16, 16),
('253898f92fef228129765af68df3e2b7', 'Nick', 'Herrera', 'N', 'Rainforest Management', '20150529', '1', 'Eng-11', 17, 16),
('b4a2e4e806437bb2b3f96cf1c2c9c0a6', 'Ana', 'Nieto', 'N', 'Social Psychology', '20150529', '1', 'Sci-12', 16, 16),
('317845c295e7302e1c040d6a90193621', 'Samantha', 'Angel', 'W', 'Make-Up Artistry', '20150527', '1', 'Math-11', 17, 16),
('429af3012a20ba78e1b86bdde7e1863f', 'Daisy', 'Torres', 'W', 'Teaching Elementary', '20150528', '1', 'Math-11', 17, 16),
('782e55d5da8ffadfcfe02b665b77e750', 'Caroline', 'Salinas', 'W', 'Senior Citizen Services', '20150520', '3', 'Eng-12', 17, 16),
('b926ce663bfaaf519e6dda1e88df40fa', 'Slade', 'Suzuki', 'W', 'Coaching Hockey', '20150520', '3', 'Sci-11', 17, 16),
('09d82e1e3c2de69e327944b207b09fdb', 'Victoria', 'Gonzalez', 'W', 'Music Teaching', '20150520', '3', 'SS-11', 16, 16),
('ca4b586606d2ad918fd50529f82f6f9c', 'Monique', 'Rivera', 'W', 'Therapy', '20150520', '3', 'SS-12', 16, 16),
('5f7a1494d81d8ea8356dd58a12c892b3', 'Roman', 'Gutierrez', 'W', 'State Politics', '20150521', '1', 'Sci-11', 16, 16),
('306f3c23dc05678754eeba1adc449c80', 'Nicholas', 'Ayala', 'W', 'Teaching Mathematics', '20150521', '1', 'SS-12', 16, 16),
('b1988c799bf22aee45734f0383136562', 'Nathalie', 'Iannetta', 'W', 'Social Work', '20150521', '2', 'Math-12', 17, 16),
('fe71e8ed05157c3a640320038d183db2', 'Christopher', 'Figueroa', 'N', 'Network Marketing', '20150521', '3', 'Sci-11', 17, 16),
('8c089da68d4b2fb91aa89e6e63a49fe3', 'Gretel', 'Mejia', 'W', 'Business', '20150521', '3', 'SS-11', 16, 16),
('e1e1e04ab1638298f915800a404c58b5', 'Alexis', 'Mendoza', 'W', 'Football', '20150522', '1', 'Eng-11', 17, 16),
('175b96696dc42c3d638a30db32674c4e', 'Andrea', 'Rosales', 'W', 'Storm Water', '20150522', '1', 'Sci-11', 17, 16),
('dfa6c2d71e8bf60d24a2aaf239f5c877', 'Aubree', 'Amano', 'W', 'Dog Training', '20150522', '1', 'Sci-12', 16, 16),
('84838ae8269121cacc239aa49cd3ddc9', 'Karla Vanessa', 'Rodriguez', 'W', 'Business Administration', '20150526', '1', 'Eng-12', 17, 16),
('f101589f9df03e86832dbe10efd47299', 'Hasan', 'Khan', 'E', 'Cardiology', '20150526', '1', 'Sci-12', 16, 16),
('c97e37649caa896f469298a551d0a55d', 'Claire', 'Dix', 'W', 'Language Interpretation', '20150526', '1', 'SS-11', 16, 16),
('f88c83cd257343bebc77b0f31d3787f2', 'Marisa', 'Ruiz', 'W', 'Orthodontics ', '20150526', '2', 'Math-12', 17, 16),
('f840ba04c85f5fc0b13edab535f9046a', 'Joseph', 'Mirabal', 'W', 'Construction', '20150526', '2', 'Sci-12', 16, 16),
('f49388e87384a85c86c71c8a9e107f73', 'Diego', 'Moreno', 'N', 'Music Enterpreneurship', '20150526', '2', 'SS-12', 16, 16),
('5a1e16b35664964c38925b83f2362cb0', 'Josh', 'Aguirre-Dahdouh', 'W', 'Special Education', '20150527', '1', 'Eng-12', 17, 16),
('3e609111f83df916d73c31be093ab03d', 'Liliana', 'Yzaguirre', 'W', 'Medicine', '20150527', '1', 'Math-12', 17, 16),
('7bfc35ca6a767cb08e06be3733f5d514', 'Vincent', 'Zepeda', 'N', 'Cake Decorating Business', '20150527', '1', 'SS-12', 16, 16),
('de449120ed97d96aac9ceb5b9b7b9c60', 'Paulina', 'Dominguez', 'W', 'Dentistry', '20150527', '2', 'Eng-11', 17, 16),
('c6ad6ee5db2bcdfc60bb9c87fe7e837e', 'Avery', 'Brinkley', 'W', 'Blacksmithing', '20150527', '2', 'Eng-12', 17, 16),
('c5c570ab9b8fd98b937f6b782a199498', 'Danny', 'Chandrahasan', 'S', 'Astrophysics', '20150527', '3', 'Sci-12', 16, 16),
('8a24f59da970c18056ce2d5d0f654997', 'Nathan', 'Guevara', 'W', 'Negligence Law', '20150528', '1', 'Eng-11', 17, 16),
('ea705f29518b0754eb13ce15831821ff', 'Elizabeth', 'Garcia', 'W', 'Teaching Children Karate', '20150528', '1', 'Math-12', 17, 16),
('921a6d0bbf85c9ba55d65a554c690478', 'Natali', 'Valle', 'W', 'Mentoring Troubled Youth', '20150528', '2', 'Eng-12', 17, 16),
('5f9b364b28911dc81bfb5b23d3d7e3e1', 'Sabrina', 'Dalan', 'W', 'Teaching Preschool', '20150528', '3', 'Math-11', 17, 16),
('5bcc4aa6f36a35b7e8f18427bf8b5e6d', 'Aaron', 'Ramos', 'W', 'Entertainment Law', '20150529', '1', 'Math-12', 17, 16),
('81904a44da67d645947b3ab0a094ff7b', 'Michael', 'Sadrach', 'W', 'Physical Therapy', '20150529', '1', 'SS-12', 16, 16),
('407b532444e1698fe8a9a3042042c3d5', 'Vincent', 'Valdez', 'W', 'Automotive', '20150527', '3', 'SS-12', 16, 16);

-- --------------------------------------------------------

--
-- Table structure for table `pres_0d956879c346a8670e7c6a544f568554`
--

CREATE TABLE IF NOT EXISTS `pres_0d956879c346a8670e7c6a544f568554` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_0d956879c346a8670e7c6a544f568554`
--

INSERT INTO `pres_0d956879c346a8670e7c6a544f568554` (`uuid`, `timestamp`) VALUES
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638579');

-- --------------------------------------------------------

--
-- Table structure for table `pres_0f66af5c2bf2c4ad54d7abb8d513c7d7`
--

CREATE TABLE IF NOT EXISTS `pres_0f66af5c2bf2c4ad54d7abb8d513c7d7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_0f66af5c2bf2c4ad54d7abb8d513c7d7`
--

INSERT INTO `pres_0f66af5c2bf2c4ad54d7abb8d513c7d7` (`uuid`, `timestamp`) VALUES
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_0205cf9fa69b41d0b975c1a41f8d48c8`
--

CREATE TABLE IF NOT EXISTS `pres_0205cf9fa69b41d0b975c1a41f8d48c8` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_0205cf9fa69b41d0b975c1a41f8d48c8`
--

INSERT INTO `pres_0205cf9fa69b41d0b975c1a41f8d48c8` (`uuid`, `timestamp`) VALUES
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('14783471b3439531070929fa7037f650', '1430859715'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_041e1047d30cac4cf0551fc9db4f394e`
--

CREATE TABLE IF NOT EXISTS `pres_041e1047d30cac4cf0551fc9db4f394e` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_041e1047d30cac4cf0551fc9db4f394e`
--

INSERT INTO `pres_041e1047d30cac4cf0551fc9db4f394e` (`uuid`, `timestamp`) VALUES
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471');

-- --------------------------------------------------------

--
-- Table structure for table `pres_0460c9597ea1a561f26e7a265a8b8619`
--

CREATE TABLE IF NOT EXISTS `pres_0460c9597ea1a561f26e7a265a8b8619` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_0460c9597ea1a561f26e7a265a8b8619`
--

INSERT INTO `pres_0460c9597ea1a561f26e7a265a8b8619` (`uuid`, `timestamp`) VALUES
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_0649a37df81e4f6d46c2ba01fc373e3b`
--

CREATE TABLE IF NOT EXISTS `pres_0649a37df81e4f6d46c2ba01fc373e3b` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_0649a37df81e4f6d46c2ba01fc373e3b`
--

INSERT INTO `pres_0649a37df81e4f6d46c2ba01fc373e3b` (`uuid`, `timestamp`) VALUES
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_09d82e1e3c2de69e327944b207b09fdb`
--

CREATE TABLE IF NOT EXISTS `pres_09d82e1e3c2de69e327944b207b09fdb` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_09d82e1e3c2de69e327944b207b09fdb`
--

INSERT INTO `pres_09d82e1e3c2de69e327944b207b09fdb` (`uuid`, `timestamp`) VALUES
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187');

-- --------------------------------------------------------

--
-- Table structure for table `pres_096bfd365c4306f4788ea2fa34da996b`
--

CREATE TABLE IF NOT EXISTS `pres_096bfd365c4306f4788ea2fa34da996b` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_096bfd365c4306f4788ea2fa34da996b`
--

INSERT INTO `pres_096bfd365c4306f4788ea2fa34da996b` (`uuid`, `timestamp`) VALUES
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_1f48f495712f940d133293173b12710c`
--

CREATE TABLE IF NOT EXISTS `pres_1f48f495712f940d133293173b12710c` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_1f48f495712f940d133293173b12710c`
--

INSERT INTO `pres_1f48f495712f940d133293173b12710c` (`uuid`, `timestamp`) VALUES
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_2aa90c35882badf61210b3e08487f9be`
--

CREATE TABLE IF NOT EXISTS `pres_2aa90c35882badf61210b3e08487f9be` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_2aa90c35882badf61210b3e08487f9be`
--

INSERT INTO `pres_2aa90c35882badf61210b3e08487f9be` (`uuid`, `timestamp`) VALUES
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_2ab1227e32f4b4aa6393c9b43914145f`
--

CREATE TABLE IF NOT EXISTS `pres_2ab1227e32f4b4aa6393c9b43914145f` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_2ab1227e32f4b4aa6393c9b43914145f`
--

INSERT INTO `pres_2ab1227e32f4b4aa6393c9b43914145f` (`uuid`, `timestamp`) VALUES
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454');

-- --------------------------------------------------------

--
-- Table structure for table `pres_2e1afdb832fd78b7ad45243dba054f4c`
--

CREATE TABLE IF NOT EXISTS `pres_2e1afdb832fd78b7ad45243dba054f4c` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_2e1afdb832fd78b7ad45243dba054f4c`
--

INSERT INTO `pres_2e1afdb832fd78b7ad45243dba054f4c` (`uuid`, `timestamp`) VALUES
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847');

-- --------------------------------------------------------

--
-- Table structure for table `pres_3a93d93e2b12af50238bb2c3f4429a99`
--

CREATE TABLE IF NOT EXISTS `pres_3a93d93e2b12af50238bb2c3f4429a99` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_3a93d93e2b12af50238bb2c3f4429a99`
--

INSERT INTO `pres_3a93d93e2b12af50238bb2c3f4429a99` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_3a171ff9f2cf717b3eb0b19893ec5fea`
--

CREATE TABLE IF NOT EXISTS `pres_3a171ff9f2cf717b3eb0b19893ec5fea` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_3a171ff9f2cf717b3eb0b19893ec5fea`
--

INSERT INTO `pres_3a171ff9f2cf717b3eb0b19893ec5fea` (`uuid`, `timestamp`) VALUES
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('144f9205b1290393cd2cdea9a98348a1', '1430859785'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_3aec6d8cf2e273235426918abf178dd7`
--

CREATE TABLE IF NOT EXISTS `pres_3aec6d8cf2e273235426918abf178dd7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_3aec6d8cf2e273235426918abf178dd7`
--

INSERT INTO `pres_3aec6d8cf2e273235426918abf178dd7` (`uuid`, `timestamp`) VALUES
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_3e609111f83df916d73c31be093ab03d`
--

CREATE TABLE IF NOT EXISTS `pres_3e609111f83df916d73c31be093ab03d` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_3e609111f83df916d73c31be093ab03d`
--

INSERT INTO `pres_3e609111f83df916d73c31be093ab03d` (`uuid`, `timestamp`) VALUES
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_3ffb49952912a97e26268e4b036595a0`
--

CREATE TABLE IF NOT EXISTS `pres_3ffb49952912a97e26268e4b036595a0` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_3ffb49952912a97e26268e4b036595a0`
--

INSERT INTO `pres_3ffb49952912a97e26268e4b036595a0` (`uuid`, `timestamp`) VALUES
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_4bec1857316c72fb1e619698508a4848`
--

CREATE TABLE IF NOT EXISTS `pres_4bec1857316c72fb1e619698508a4848` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_4bec1857316c72fb1e619698508a4848`
--

INSERT INTO `pres_4bec1857316c72fb1e619698508a4848` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341416'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460');

-- --------------------------------------------------------

--
-- Table structure for table `pres_4d4de6414bd4a53866d5fbbfd462b513`
--

CREATE TABLE IF NOT EXISTS `pres_4d4de6414bd4a53866d5fbbfd462b513` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_4d4de6414bd4a53866d5fbbfd462b513`
--

INSERT INTO `pres_4d4de6414bd4a53866d5fbbfd462b513` (`uuid`, `timestamp`) VALUES
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('14783471b3439531070929fa7037f650', '1430859715'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('923e57c1e865031981486724072ee994', '1430860273'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5a1e16b35664964c38925b83f2362cb0`
--

CREATE TABLE IF NOT EXISTS `pres_5a1e16b35664964c38925b83f2362cb0` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5a1e16b35664964c38925b83f2362cb0`
--

INSERT INTO `pres_5a1e16b35664964c38925b83f2362cb0` (`uuid`, `timestamp`) VALUES
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5bcc4aa6f36a35b7e8f18427bf8b5e6d`
--

CREATE TABLE IF NOT EXISTS `pres_5bcc4aa6f36a35b7e8f18427bf8b5e6d` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5bcc4aa6f36a35b7e8f18427bf8b5e6d`
--

INSERT INTO `pres_5bcc4aa6f36a35b7e8f18427bf8b5e6d` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5c67453cdfb2ba6b0d37c4b692a72e99`
--

CREATE TABLE IF NOT EXISTS `pres_5c67453cdfb2ba6b0d37c4b692a72e99` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5c67453cdfb2ba6b0d37c4b692a72e99`
--

INSERT INTO `pres_5c67453cdfb2ba6b0d37c4b692a72e99` (`uuid`, `timestamp`) VALUES
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('14783471b3439531070929fa7037f650', '1430859715'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('c4e75e523601b26eb55975266448baea', '1430860344');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5ccf0663ac539180e7cc992ddd700ca7`
--

CREATE TABLE IF NOT EXISTS `pres_5ccf0663ac539180e7cc992ddd700ca7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5ccf0663ac539180e7cc992ddd700ca7`
--

INSERT INTO `pres_5ccf0663ac539180e7cc992ddd700ca7` (`uuid`, `timestamp`) VALUES
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5e6ec51d44ff011c3846ada68a858355`
--

CREATE TABLE IF NOT EXISTS `pres_5e6ec51d44ff011c3846ada68a858355` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5e6ec51d44ff011c3846ada68a858355`
--

INSERT INTO `pres_5e6ec51d44ff011c3846ada68a858355` (`uuid`, `timestamp`) VALUES
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341416'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5f7a1494d81d8ea8356dd58a12c892b3`
--

CREATE TABLE IF NOT EXISTS `pres_5f7a1494d81d8ea8356dd58a12c892b3` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5f7a1494d81d8ea8356dd58a12c892b3`
--

INSERT INTO `pres_5f7a1494d81d8ea8356dd58a12c892b3` (`uuid`, `timestamp`) VALUES
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('923e57c1e865031981486724072ee994', '1430860273'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5f9b364b28911dc81bfb5b23d3d7e3e1`
--

CREATE TABLE IF NOT EXISTS `pres_5f9b364b28911dc81bfb5b23d3d7e3e1` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5f9b364b28911dc81bfb5b23d3d7e3e1`
--

INSERT INTO `pres_5f9b364b28911dc81bfb5b23d3d7e3e1` (`uuid`, `timestamp`) VALUES
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('923e57c1e865031981486724072ee994', '1430860273'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864529'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_6a7a35ca622a9d10e5e66e3a341418e9`
--

CREATE TABLE IF NOT EXISTS `pres_6a7a35ca622a9d10e5e66e3a341418e9` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_6a7a35ca622a9d10e5e66e3a341418e9`
--

INSERT INTO `pres_6a7a35ca622a9d10e5e66e3a341418e9` (`uuid`, `timestamp`) VALUES
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('14783471b3439531070929fa7037f650', '1430859715'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561');

-- --------------------------------------------------------

--
-- Table structure for table `pres_6abc7ce15a291130b342e5b6c3a21fe6`
--

CREATE TABLE IF NOT EXISTS `pres_6abc7ce15a291130b342e5b6c3a21fe6` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_6abc7ce15a291130b342e5b6c3a21fe6`
--

INSERT INTO `pres_6abc7ce15a291130b342e5b6c3a21fe6` (`uuid`, `timestamp`) VALUES
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727');

-- --------------------------------------------------------

--
-- Table structure for table `pres_6bd65f7d6ecc09c8a69d735f3198b6e2`
--

CREATE TABLE IF NOT EXISTS `pres_6bd65f7d6ecc09c8a69d735f3198b6e2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_6bd65f7d6ecc09c8a69d735f3198b6e2`
--

INSERT INTO `pres_6bd65f7d6ecc09c8a69d735f3198b6e2` (`uuid`, `timestamp`) VALUES
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953');

-- --------------------------------------------------------

--
-- Table structure for table `pres_7ae284d78dfdf518d0f48a28aa58c40a`
--

CREATE TABLE IF NOT EXISTS `pres_7ae284d78dfdf518d0f48a28aa58c40a` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_7ae284d78dfdf518d0f48a28aa58c40a`
--

INSERT INTO `pres_7ae284d78dfdf518d0f48a28aa58c40a` (`uuid`, `timestamp`) VALUES
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237');

-- --------------------------------------------------------

--
-- Table structure for table `pres_7bfc35ca6a767cb08e06be3733f5d514`
--

CREATE TABLE IF NOT EXISTS `pres_7bfc35ca6a767cb08e06be3733f5d514` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_7bfc35ca6a767cb08e06be3733f5d514`
--

INSERT INTO `pres_7bfc35ca6a767cb08e06be3733f5d514` (`uuid`, `timestamp`) VALUES
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('923e57c1e865031981486724072ee994', '1430860273'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527');

-- --------------------------------------------------------

--
-- Table structure for table `pres_7c065f939bf6d6c1938b1187f0d25e59`
--

CREATE TABLE IF NOT EXISTS `pres_7c065f939bf6d6c1938b1187f0d25e59` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_7c065f939bf6d6c1938b1187f0d25e59`
--

INSERT INTO `pres_7c065f939bf6d6c1938b1187f0d25e59` (`uuid`, `timestamp`) VALUES
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_7d430d9353bc64244ffb33c79b6d723d`
--

CREATE TABLE IF NOT EXISTS `pres_7d430d9353bc64244ffb33c79b6d723d` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_7d430d9353bc64244ffb33c79b6d723d`
--

INSERT INTO `pres_7d430d9353bc64244ffb33c79b6d723d` (`uuid`, `timestamp`) VALUES
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019');

-- --------------------------------------------------------

--
-- Table structure for table `pres_7d741fdec69e3c76d9e5f55efe410081`
--

CREATE TABLE IF NOT EXISTS `pres_7d741fdec69e3c76d9e5f55efe410081` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_7d741fdec69e3c76d9e5f55efe410081`
--

INSERT INTO `pres_7d741fdec69e3c76d9e5f55efe410081` (`uuid`, `timestamp`) VALUES
('615f6a868619790124c3061f4945ae22', '1430341212'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('14783471b3439531070929fa7037f650', '1430859715'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919');

-- --------------------------------------------------------

--
-- Table structure for table `pres_7f780244593165556bcfd75c7d374d47`
--

CREATE TABLE IF NOT EXISTS `pres_7f780244593165556bcfd75c7d374d47` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_7f780244593165556bcfd75c7d374d47`
--

INSERT INTO `pres_7f780244593165556bcfd75c7d374d47` (`uuid`, `timestamp`) VALUES
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_8a24f59da970c18056ce2d5d0f654997`
--

CREATE TABLE IF NOT EXISTS `pres_8a24f59da970c18056ce2d5d0f654997` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_8a24f59da970c18056ce2d5d0f654997`
--

INSERT INTO `pres_8a24f59da970c18056ce2d5d0f654997` (`uuid`, `timestamp`) VALUES
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('923e57c1e865031981486724072ee994', '1430860273'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_8c089da68d4b2fb91aa89e6e63a49fe3`
--

CREATE TABLE IF NOT EXISTS `pres_8c089da68d4b2fb91aa89e6e63a49fe3` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_8c089da68d4b2fb91aa89e6e63a49fe3`
--

INSERT INTO `pres_8c089da68d4b2fb91aa89e6e63a49fe3` (`uuid`, `timestamp`) VALUES
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702');

-- --------------------------------------------------------

--
-- Table structure for table `pres_8d3b0857d7b77a692412eb755d021425`
--

CREATE TABLE IF NOT EXISTS `pres_8d3b0857d7b77a692412eb755d021425` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_8d3b0857d7b77a692412eb755d021425`
--

INSERT INTO `pres_8d3b0857d7b77a692412eb755d021425` (`uuid`, `timestamp`) VALUES
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_8e7a69f146f7a89537ec45b94759f979`
--

CREATE TABLE IF NOT EXISTS `pres_8e7a69f146f7a89537ec45b94759f979` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_8e7a69f146f7a89537ec45b94759f979`
--

INSERT INTO `pres_8e7a69f146f7a89537ec45b94759f979` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_8edd338990fbc0dda0d895dd14898ed8`
--

CREATE TABLE IF NOT EXISTS `pres_8edd338990fbc0dda0d895dd14898ed8` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_8edd338990fbc0dda0d895dd14898ed8`
--

INSERT INTO `pres_8edd338990fbc0dda0d895dd14898ed8` (`uuid`, `timestamp`) VALUES
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_9e9399b092b826811ec69b83ef02b402`
--

CREATE TABLE IF NOT EXISTS `pres_9e9399b092b826811ec69b83ef02b402` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_9e9399b092b826811ec69b83ef02b402`
--

INSERT INTO `pres_9e9399b092b826811ec69b83ef02b402` (`uuid`, `timestamp`) VALUES
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('923e57c1e865031981486724072ee994', '1430860273'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638579');

-- --------------------------------------------------------

--
-- Table structure for table `pres_9fad619e6723e6bd0373561ed94ac637`
--

CREATE TABLE IF NOT EXISTS `pres_9fad619e6723e6bd0373561ed94ac637` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_9fad619e6723e6bd0373561ed94ac637`
--

INSERT INTO `pres_9fad619e6723e6bd0373561ed94ac637` (`uuid`, `timestamp`) VALUES
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341277'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_16af7cfa00268cfc4b23fc0ab4180f17`
--

CREATE TABLE IF NOT EXISTS `pres_16af7cfa00268cfc4b23fc0ab4180f17` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_16af7cfa00268cfc4b23fc0ab4180f17`
--

INSERT INTO `pres_16af7cfa00268cfc4b23fc0ab4180f17` (`uuid`, `timestamp`) VALUES
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('923e57c1e865031981486724072ee994', '1430860273'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_26ba7934681ed64d12e68c2cef849a04`
--

CREATE TABLE IF NOT EXISTS `pres_26ba7934681ed64d12e68c2cef849a04` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_26ba7934681ed64d12e68c2cef849a04`
--

INSERT INTO `pres_26ba7934681ed64d12e68c2cef849a04` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('14783471b3439531070929fa7037f650', '1430859715'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_29c87793e4e74e9ab6eb59be8301716b`
--

CREATE TABLE IF NOT EXISTS `pres_29c87793e4e74e9ab6eb59be8301716b` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_29c87793e4e74e9ab6eb59be8301716b`
--

INSERT INTO `pres_29c87793e4e74e9ab6eb59be8301716b` (`uuid`, `timestamp`) VALUES
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697');

-- --------------------------------------------------------

--
-- Table structure for table `pres_31ec4c3aaa84a2a11cc19fa2b95429d0`
--

CREATE TABLE IF NOT EXISTS `pres_31ec4c3aaa84a2a11cc19fa2b95429d0` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_31ec4c3aaa84a2a11cc19fa2b95429d0`
--

INSERT INTO `pres_31ec4c3aaa84a2a11cc19fa2b95429d0` (`uuid`, `timestamp`) VALUES
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_42ddd20c1095bd12e5c7a2f18bcd8def`
--

CREATE TABLE IF NOT EXISTS `pres_42ddd20c1095bd12e5c7a2f18bcd8def` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_42ddd20c1095bd12e5c7a2f18bcd8def`
--

INSERT INTO `pres_42ddd20c1095bd12e5c7a2f18bcd8def` (`uuid`, `timestamp`) VALUES
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('14783471b3439531070929fa7037f650', '1430859715'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_59ce9d99cbef13d120db24dfabc53c71`
--

CREATE TABLE IF NOT EXISTS `pres_59ce9d99cbef13d120db24dfabc53c71` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_59ce9d99cbef13d120db24dfabc53c71`
--

INSERT INTO `pres_59ce9d99cbef13d120db24dfabc53c71` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_63e3f15683f000cb5f2c0a9fc208bb98`
--

CREATE TABLE IF NOT EXISTS `pres_63e3f15683f000cb5f2c0a9fc208bb98` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_63e3f15683f000cb5f2c0a9fc208bb98`
--

INSERT INTO `pres_63e3f15683f000cb5f2c0a9fc208bb98` (`uuid`, `timestamp`) VALUES
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341277'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_68a0fe39eca51c978f36a0b71c4a120f`
--

CREATE TABLE IF NOT EXISTS `pres_68a0fe39eca51c978f36a0b71c4a120f` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_68a0fe39eca51c978f36a0b71c4a120f`
--

INSERT INTO `pres_68a0fe39eca51c978f36a0b71c4a120f` (`uuid`, `timestamp`) VALUES
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_84a12206c83a6b803f3e8e964a0d0973`
--

CREATE TABLE IF NOT EXISTS `pres_84a12206c83a6b803f3e8e964a0d0973` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_84a12206c83a6b803f3e8e964a0d0973`
--

INSERT INTO `pres_84a12206c83a6b803f3e8e964a0d0973` (`uuid`, `timestamp`) VALUES
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528');

-- --------------------------------------------------------

--
-- Table structure for table `pres_96b765f7df2b643896c4759d5277e916`
--

CREATE TABLE IF NOT EXISTS `pres_96b765f7df2b643896c4759d5277e916` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_96b765f7df2b643896c4759d5277e916`
--

INSERT INTO `pres_96b765f7df2b643896c4759d5277e916` (`uuid`, `timestamp`) VALUES
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('16a51d2bd2c614459aaae8354729851c', '1430967007');

-- --------------------------------------------------------

--
-- Table structure for table `pres_96cb04048cc88596586154b858ece9c7`
--

CREATE TABLE IF NOT EXISTS `pres_96cb04048cc88596586154b858ece9c7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_96cb04048cc88596586154b858ece9c7`
--

INSERT INTO `pres_96cb04048cc88596586154b858ece9c7` (`uuid`, `timestamp`) VALUES
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007');

-- --------------------------------------------------------

--
-- Table structure for table `pres_175b96696dc42c3d638a30db32674c4e`
--

CREATE TABLE IF NOT EXISTS `pres_175b96696dc42c3d638a30db32674c4e` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_175b96696dc42c3d638a30db32674c4e`
--

INSERT INTO `pres_175b96696dc42c3d638a30db32674c4e` (`uuid`, `timestamp`) VALUES
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_306f3c23dc05678754eeba1adc449c80`
--

CREATE TABLE IF NOT EXISTS `pres_306f3c23dc05678754eeba1adc449c80` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_306f3c23dc05678754eeba1adc449c80`
--

INSERT INTO `pres_306f3c23dc05678754eeba1adc449c80` (`uuid`, `timestamp`) VALUES
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702');

-- --------------------------------------------------------

--
-- Table structure for table `pres_382ff4f823b0fc0d6f063c847bbb281a`
--

CREATE TABLE IF NOT EXISTS `pres_382ff4f823b0fc0d6f063c847bbb281a` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_382ff4f823b0fc0d6f063c847bbb281a`
--

INSERT INTO `pres_382ff4f823b0fc0d6f063c847bbb281a` (`uuid`, `timestamp`) VALUES
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341416'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_407b532444e1698fe8a9a3042042c3d5`
--

CREATE TABLE IF NOT EXISTS `pres_407b532444e1698fe8a9a3042042c3d5` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_407b532444e1698fe8a9a3042042c3d5`
--

INSERT INTO `pres_407b532444e1698fe8a9a3042042c3d5` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('14783471b3439531070929fa7037f650', '1430859715'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123');

-- --------------------------------------------------------

--
-- Table structure for table `pres_429af3012a20ba78e1b86bdde7e1863f`
--

CREATE TABLE IF NOT EXISTS `pres_429af3012a20ba78e1b86bdde7e1863f` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_429af3012a20ba78e1b86bdde7e1863f`
--

INSERT INTO `pres_429af3012a20ba78e1b86bdde7e1863f` (`uuid`, `timestamp`) VALUES
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_468f1c9dee95b1519597977963a0a3b9`
--

CREATE TABLE IF NOT EXISTS `pres_468f1c9dee95b1519597977963a0a3b9` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_468f1c9dee95b1519597977963a0a3b9`
--

INSERT INTO `pres_468f1c9dee95b1519597977963a0a3b9` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_539d0438d46a4e6ffbcb42e03ae7c0a7`
--

CREATE TABLE IF NOT EXISTS `pres_539d0438d46a4e6ffbcb42e03ae7c0a7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_539d0438d46a4e6ffbcb42e03ae7c0a7`
--

INSERT INTO `pres_539d0438d46a4e6ffbcb42e03ae7c0a7` (`uuid`, `timestamp`) VALUES
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234');

-- --------------------------------------------------------

--
-- Table structure for table `pres_549b79c7eab7d58f3e75913f2247b789`
--

CREATE TABLE IF NOT EXISTS `pres_549b79c7eab7d58f3e75913f2247b789` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_549b79c7eab7d58f3e75913f2247b789`
--

INSERT INTO `pres_549b79c7eab7d58f3e75913f2247b789` (`uuid`, `timestamp`) VALUES
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_782e55d5da8ffadfcfe02b665b77e750`
--

CREATE TABLE IF NOT EXISTS `pres_782e55d5da8ffadfcfe02b665b77e750` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_782e55d5da8ffadfcfe02b665b77e750`
--

INSERT INTO `pres_782e55d5da8ffadfcfe02b665b77e750` (`uuid`, `timestamp`) VALUES
('615f6a868619790124c3061f4945ae22', '1430341212'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638579');

-- --------------------------------------------------------

--
-- Table structure for table `pres_819bbd39f89396e2737f2f7dfbbdacdb`
--

CREATE TABLE IF NOT EXISTS `pres_819bbd39f89396e2737f2f7dfbbdacdb` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_819bbd39f89396e2737f2f7dfbbdacdb`
--

INSERT INTO `pres_819bbd39f89396e2737f2f7dfbbdacdb` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_921a6d0bbf85c9ba55d65a554c690478`
--

CREATE TABLE IF NOT EXISTS `pres_921a6d0bbf85c9ba55d65a554c690478` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_921a6d0bbf85c9ba55d65a554c690478`
--

INSERT INTO `pres_921a6d0bbf85c9ba55d65a554c690478` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('923e57c1e865031981486724072ee994', '1430860273'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_967d4d163563f10fa080e021fc6ebfc6`
--

CREATE TABLE IF NOT EXISTS `pres_967d4d163563f10fa080e021fc6ebfc6` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_967d4d163563f10fa080e021fc6ebfc6`
--

INSERT INTO `pres_967d4d163563f10fa080e021fc6ebfc6` (`uuid`, `timestamp`) VALUES
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638579');

-- --------------------------------------------------------

--
-- Table structure for table `pres_4337ac41a8f6c4fd6dc444511eb09405`
--

CREATE TABLE IF NOT EXISTS `pres_4337ac41a8f6c4fd6dc444511eb09405` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_4337ac41a8f6c4fd6dc444511eb09405`
--

INSERT INTO `pres_4337ac41a8f6c4fd6dc444511eb09405` (`uuid`, `timestamp`) VALUES
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_5515f0d30bcd05465754a3fec46a99f7`
--

CREATE TABLE IF NOT EXISTS `pres_5515f0d30bcd05465754a3fec46a99f7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_5515f0d30bcd05465754a3fec46a99f7`
--

INSERT INTO `pres_5515f0d30bcd05465754a3fec46a99f7` (`uuid`, `timestamp`) VALUES
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_34082ac4e1fd715cdc1bbbbaca489abc`
--

CREATE TABLE IF NOT EXISTS `pres_34082ac4e1fd715cdc1bbbbaca489abc` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_34082ac4e1fd715cdc1bbbbaca489abc`
--

INSERT INTO `pres_34082ac4e1fd715cdc1bbbbaca489abc` (`uuid`, `timestamp`) VALUES
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_81904a44da67d645947b3ab0a094ff7b`
--

CREATE TABLE IF NOT EXISTS `pres_81904a44da67d645947b3ab0a094ff7b` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_81904a44da67d645947b3ab0a094ff7b`
--

INSERT INTO `pres_81904a44da67d645947b3ab0a094ff7b` (`uuid`, `timestamp`) VALUES
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237');

-- --------------------------------------------------------

--
-- Table structure for table `pres_84838ae8269121cacc239aa49cd3ddc9`
--

CREATE TABLE IF NOT EXISTS `pres_84838ae8269121cacc239aa49cd3ddc9` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_84838ae8269121cacc239aa49cd3ddc9`
--

INSERT INTO `pres_84838ae8269121cacc239aa49cd3ddc9` (`uuid`, `timestamp`) VALUES
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('14783471b3439531070929fa7037f650', '1430859715'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_225657c6030eb7ac499441e656ca46af`
--

CREATE TABLE IF NOT EXISTS `pres_225657c6030eb7ac499441e656ca46af` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_225657c6030eb7ac499441e656ca46af`
--

INSERT INTO `pres_225657c6030eb7ac499441e656ca46af` (`uuid`, `timestamp`) VALUES
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_253898f92fef228129765af68df3e2b7`
--

CREATE TABLE IF NOT EXISTS `pres_253898f92fef228129765af68df3e2b7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_253898f92fef228129765af68df3e2b7`
--

INSERT INTO `pres_253898f92fef228129765af68df3e2b7` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_317845c295e7302e1c040d6a90193621`
--

CREATE TABLE IF NOT EXISTS `pres_317845c295e7302e1c040d6a90193621` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_317845c295e7302e1c040d6a90193621`
--

INSERT INTO `pres_317845c295e7302e1c040d6a90193621` (`uuid`, `timestamp`) VALUES
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_524280c2044e1ce6a0890804a9b596c4`
--

CREATE TABLE IF NOT EXISTS `pres_524280c2044e1ce6a0890804a9b596c4` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_524280c2044e1ce6a0890804a9b596c4`
--

INSERT INTO `pres_524280c2044e1ce6a0890804a9b596c4` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('14783471b3439531070929fa7037f650', '1430859715'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('923e57c1e865031981486724072ee994', '1430860273'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702');

-- --------------------------------------------------------

--
-- Table structure for table `pres_2248452b096494b08471c025fcb3a671`
--

CREATE TABLE IF NOT EXISTS `pres_2248452b096494b08471c025fcb3a671` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_2248452b096494b08471c025fcb3a671`
--

INSERT INTO `pres_2248452b096494b08471c025fcb3a671` (`uuid`, `timestamp`) VALUES
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341277'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_646744227b9a13bd74200c76bbade797`
--

CREATE TABLE IF NOT EXISTS `pres_646744227b9a13bd74200c76bbade797` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_646744227b9a13bd74200c76bbade797`
--

INSERT INTO `pres_646744227b9a13bd74200c76bbade797` (`uuid`, `timestamp`) VALUES
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341416'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('14783471b3439531070929fa7037f650', '1430859715'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638579');

-- --------------------------------------------------------

--
-- Table structure for table `pres_749128624eac8e34cb34412092ef2443`
--

CREATE TABLE IF NOT EXISTS `pres_749128624eac8e34cb34412092ef2443` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_749128624eac8e34cb34412092ef2443`
--

INSERT INTO `pres_749128624eac8e34cb34412092ef2443` (`uuid`, `timestamp`) VALUES
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a3f78cefd7302e0729714c84e2032be2`
--

CREATE TABLE IF NOT EXISTS `pres_a3f78cefd7302e0729714c84e2032be2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a3f78cefd7302e0729714c84e2032be2`
--

INSERT INTO `pres_a3f78cefd7302e0729714c84e2032be2` (`uuid`, `timestamp`) VALUES
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a35f5478234a45b1366a5d86c5022bc2`
--

CREATE TABLE IF NOT EXISTS `pres_a35f5478234a45b1366a5d86c5022bc2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a35f5478234a45b1366a5d86c5022bc2`
--

INSERT INTO `pres_a35f5478234a45b1366a5d86c5022bc2` (`uuid`, `timestamp`) VALUES
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a38afe2e3071bab33e3bff94481af969`
--

CREATE TABLE IF NOT EXISTS `pres_a38afe2e3071bab33e3bff94481af969` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a38afe2e3071bab33e3bff94481af969`
--

INSERT INTO `pres_a38afe2e3071bab33e3bff94481af969` (`uuid`, `timestamp`) VALUES
('615f6a868619790124c3061f4945ae22', '1430341212'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341416'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a44cf5ae66df2188a0b235504fb3a191`
--

CREATE TABLE IF NOT EXISTS `pres_a44cf5ae66df2188a0b235504fb3a191` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a44cf5ae66df2188a0b235504fb3a191`
--

INSERT INTO `pres_a44cf5ae66df2188a0b235504fb3a191` (`uuid`, `timestamp`) VALUES
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864529'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a80f17128da1aa0b7fd7fd7be3217483`
--

CREATE TABLE IF NOT EXISTS `pres_a80f17128da1aa0b7fd7fd7be3217483` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a80f17128da1aa0b7fd7fd7be3217483`
--

INSERT INTO `pres_a80f17128da1aa0b7fd7fd7be3217483` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a96f6ac3cbd47b5b9ef92291700b07a2`
--

CREATE TABLE IF NOT EXISTS `pres_a96f6ac3cbd47b5b9ef92291700b07a2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a96f6ac3cbd47b5b9ef92291700b07a2`
--

INSERT INTO `pres_a96f6ac3cbd47b5b9ef92291700b07a2` (`uuid`, `timestamp`) VALUES
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('14783471b3439531070929fa7037f650', '1430859715'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a274d05f3bbfe7a9bb594e713cfd1ec2`
--

CREATE TABLE IF NOT EXISTS `pres_a274d05f3bbfe7a9bb594e713cfd1ec2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a274d05f3bbfe7a9bb594e713cfd1ec2`
--

INSERT INTO `pres_a274d05f3bbfe7a9bb594e713cfd1ec2` (`uuid`, `timestamp`) VALUES
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a393dbfd2b449bcd8dd0db6b2b44d5f4`
--

CREATE TABLE IF NOT EXISTS `pres_a393dbfd2b449bcd8dd0db6b2b44d5f4` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a393dbfd2b449bcd8dd0db6b2b44d5f4`
--

INSERT INTO `pres_a393dbfd2b449bcd8dd0db6b2b44d5f4` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('3c25a31330362da13eab4933d7b58f89', '1430341253'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('14783471b3439531070929fa7037f650', '1430859715'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a2755cafdb475d95153895121d6a25b7`
--

CREATE TABLE IF NOT EXISTS `pres_a2755cafdb475d95153895121d6a25b7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a2755cafdb475d95153895121d6a25b7`
--

INSERT INTO `pres_a2755cafdb475d95153895121d6a25b7` (`uuid`, `timestamp`) VALUES
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a7269f5bc238b27b96134b04e48ea83d`
--

CREATE TABLE IF NOT EXISTS `pres_a7269f5bc238b27b96134b04e48ea83d` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a7269f5bc238b27b96134b04e48ea83d`
--

INSERT INTO `pres_a7269f5bc238b27b96134b04e48ea83d` (`uuid`, `timestamp`) VALUES
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454');

-- --------------------------------------------------------

--
-- Table structure for table `pres_a52438c20b57af5c4a168e14047da7b4`
--

CREATE TABLE IF NOT EXISTS `pres_a52438c20b57af5c4a168e14047da7b4` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_a52438c20b57af5c4a168e14047da7b4`
--

INSERT INTO `pres_a52438c20b57af5c4a168e14047da7b4` (`uuid`, `timestamp`) VALUES
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_aa31b8c1a6139cd150180ba84b058518`
--

CREATE TABLE IF NOT EXISTS `pres_aa31b8c1a6139cd150180ba84b058518` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_aa31b8c1a6139cd150180ba84b058518`
--

INSERT INTO `pres_aa31b8c1a6139cd150180ba84b058518` (`uuid`, `timestamp`) VALUES
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('14783471b3439531070929fa7037f650', '1430859715'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('706a0ae4425df8b6baa444f89a7dc2c5', '1430860149'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_afb0a221df2558afe7274a5ce037bc9c`
--

CREATE TABLE IF NOT EXISTS `pres_afb0a221df2558afe7274a5ce037bc9c` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_afb0a221df2558afe7274a5ce037bc9c`
--

INSERT INTO `pres_afb0a221df2558afe7274a5ce037bc9c` (`uuid`, `timestamp`) VALUES
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_b0d15e698fa1f206b9913b5ce62eb862`
--

CREATE TABLE IF NOT EXISTS `pres_b0d15e698fa1f206b9913b5ce62eb862` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_b0d15e698fa1f206b9913b5ce62eb862`
--

INSERT INTO `pres_b0d15e698fa1f206b9913b5ce62eb862` (`uuid`, `timestamp`) VALUES
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_b4a2e4e806437bb2b3f96cf1c2c9c0a6`
--

CREATE TABLE IF NOT EXISTS `pres_b4a2e4e806437bb2b3f96cf1c2c9c0a6` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_b4a2e4e806437bb2b3f96cf1c2c9c0a6`
--

INSERT INTO `pres_b4a2e4e806437bb2b3f96cf1c2c9c0a6` (`uuid`, `timestamp`) VALUES
('615f6a868619790124c3061f4945ae22', '1430341212'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341207'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('14783471b3439531070929fa7037f650', '1430859715'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('923e57c1e865031981486724072ee994', '1430860273'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460');

-- --------------------------------------------------------

--
-- Table structure for table `pres_b926ce663bfaaf519e6dda1e88df40fa`
--

CREATE TABLE IF NOT EXISTS `pres_b926ce663bfaaf519e6dda1e88df40fa` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_b926ce663bfaaf519e6dda1e88df40fa`
--

INSERT INTO `pres_b926ce663bfaaf519e6dda1e88df40fa` (`uuid`, `timestamp`) VALUES
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_b1988c799bf22aee45734f0383136562`
--

CREATE TABLE IF NOT EXISTS `pres_b1988c799bf22aee45734f0383136562` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_b1988c799bf22aee45734f0383136562`
--

INSERT INTO `pres_b1988c799bf22aee45734f0383136562` (`uuid`, `timestamp`) VALUES
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('17b5043c3ce76b8531986aac66984a73', '1430341277'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638579');

-- --------------------------------------------------------

--
-- Table structure for table `pres_baa4bf28e3af8759aa59a6e0192a0ea3`
--

CREATE TABLE IF NOT EXISTS `pres_baa4bf28e3af8759aa59a6e0192a0ea3` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_baa4bf28e3af8759aa59a6e0192a0ea3`
--

INSERT INTO `pres_baa4bf28e3af8759aa59a6e0192a0ea3` (`uuid`, `timestamp`) VALUES
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('fda71ccaac3c147db4fabccb4a748a04', '1430860527'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_bcb8a5f2572273f54d861d2a556d7ce7`
--

CREATE TABLE IF NOT EXISTS `pres_bcb8a5f2572273f54d861d2a556d7ce7` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_bcb8a5f2572273f54d861d2a556d7ce7`
--

INSERT INTO `pres_bcb8a5f2572273f54d861d2a556d7ce7` (`uuid`, `timestamp`) VALUES
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('923e57c1e865031981486724072ee994', '1430860273'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_c4ba99d2ab3ed9a5ecc8cea75d98ad8f`
--

CREATE TABLE IF NOT EXISTS `pres_c4ba99d2ab3ed9a5ecc8cea75d98ad8f` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_c4ba99d2ab3ed9a5ecc8cea75d98ad8f`
--

INSERT INTO `pres_c4ba99d2ab3ed9a5ecc8cea75d98ad8f` (`uuid`, `timestamp`) VALUES
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_c5c570ab9b8fd98b937f6b782a199498`
--

CREATE TABLE IF NOT EXISTS `pres_c5c570ab9b8fd98b937f6b782a199498` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_c5c570ab9b8fd98b937f6b782a199498`
--

INSERT INTO `pres_c5c570ab9b8fd98b937f6b782a199498` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('aac5d0f18756922ce184db464e90a24c', '1430861181');

-- --------------------------------------------------------

--
-- Table structure for table `pres_c6ad6ee5db2bcdfc60bb9c87fe7e837e`
--

CREATE TABLE IF NOT EXISTS `pres_c6ad6ee5db2bcdfc60bb9c87fe7e837e` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_c6ad6ee5db2bcdfc60bb9c87fe7e837e`
--

INSERT INTO `pres_c6ad6ee5db2bcdfc60bb9c87fe7e837e` (`uuid`, `timestamp`) VALUES
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('615f6a868619790124c3061f4945ae22', '1430341212'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('0294a91ce158bcf51c48bb7176b6cac8', '1430859796'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('7838129b67d5b8f1df7058254de6ecda', '1430859871'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('46584d17dcbf53fdffa13a7a6feec64d', '1430859901'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('1b518e5590b3853e8d444fa848cc8681', '1430860426'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_c97e37649caa896f469298a551d0a55d`
--

CREATE TABLE IF NOT EXISTS `pres_c97e37649caa896f469298a551d0a55d` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_c97e37649caa896f469298a551d0a55d`
--

INSERT INTO `pres_c97e37649caa896f469298a551d0a55d` (`uuid`, `timestamp`) VALUES
('23090310c22877080e319a4b09a8f8fc', '1430341286'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('f94cf60ef9470a29ae604d95d6ed1b09', '1430859919'),
('1f65a15f9003e01ed1025f7f04eb4ff6', '1430860039'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('16a51d2bd2c614459aaae8354729851c', '1430967007');

-- --------------------------------------------------------

--
-- Table structure for table `pres_c7435e9d987088f067023938f00770af`
--

CREATE TABLE IF NOT EXISTS `pres_c7435e9d987088f067023938f00770af` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_c7435e9d987088f067023938f00770af`
--

INSERT INTO `pres_c7435e9d987088f067023938f00770af` (`uuid`, `timestamp`) VALUES
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_c7588a79576960693d80eb19456269be`
--

CREATE TABLE IF NOT EXISTS `pres_c7588a79576960693d80eb19456269be` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_c7588a79576960693d80eb19456269be`
--

INSERT INTO `pres_c7588a79576960693d80eb19456269be` (`uuid`, `timestamp`) VALUES
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152');

-- --------------------------------------------------------

--
-- Table structure for table `pres_ca4b586606d2ad918fd50529f82f6f9c`
--

CREATE TABLE IF NOT EXISTS `pres_ca4b586606d2ad918fd50529f82f6f9c` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_ca4b586606d2ad918fd50529f82f6f9c`
--

INSERT INTO `pres_ca4b586606d2ad918fd50529f82f6f9c` (`uuid`, `timestamp`) VALUES
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('5c033fb4cc815b64744438d1d1c69aec', '1430341700'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237');

-- --------------------------------------------------------

--
-- Table structure for table `pres_cdf61607717e55cfdc3945f9925e7fb2`
--

CREATE TABLE IF NOT EXISTS `pres_cdf61607717e55cfdc3945f9925e7fb2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_cdf61607717e55cfdc3945f9925e7fb2`
--

INSERT INTO `pres_cdf61607717e55cfdc3945f9925e7fb2` (`uuid`, `timestamp`) VALUES
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('14783471b3439531070929fa7037f650', '1430859715'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('091ef33b41dafe1101c3d0e76e5923ce', '1430859793'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('090df5a0135dc86bc31a292b352f7a27', '1430860344'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219');

-- --------------------------------------------------------

--
-- Table structure for table `pres_d0384b84309696bcac5a66f2f82d85b4`
--

CREATE TABLE IF NOT EXISTS `pres_d0384b84309696bcac5a66f2f82d85b4` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_d0384b84309696bcac5a66f2f82d85b4`
--

INSERT INTO `pres_d0384b84309696bcac5a66f2f82d85b4` (`uuid`, `timestamp`) VALUES
('913ce147f7a470024730f52259ae142c', '1430341315'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('0249328f773a0df2c932c092c6b8b6cf', '1430342566'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('0996385517656674e2db931bbc08b398', '1430405997'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452');

-- --------------------------------------------------------

--
-- Table structure for table `pres_d09f02959047f8407f8ceed0a7b4b3a4`
--

CREATE TABLE IF NOT EXISTS `pres_d09f02959047f8407f8ceed0a7b4b3a4` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_d09f02959047f8407f8ceed0a7b4b3a4`
--

INSERT INTO `pres_d09f02959047f8407f8ceed0a7b4b3a4` (`uuid`, `timestamp`) VALUES
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('1862cfa88f0807c9804d6ab7080bf066', '1430860491'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717');

-- --------------------------------------------------------

--
-- Table structure for table `pres_d213f2d863998bf121e4d16c8084fb12`
--

CREATE TABLE IF NOT EXISTS `pres_d213f2d863998bf121e4d16c8084fb12` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_d213f2d863998bf121e4d16c8084fb12`
--

INSERT INTO `pres_d213f2d863998bf121e4d16c8084fb12` (`uuid`, `timestamp`) VALUES
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_da0c91ee754dc577baf86dd353237d55`
--

CREATE TABLE IF NOT EXISTS `pres_da0c91ee754dc577baf86dd353237d55` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_da0c91ee754dc577baf86dd353237d55`
--

INSERT INTO `pres_da0c91ee754dc577baf86dd353237d55` (`uuid`, `timestamp`) VALUES
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('4693f7d7876206575a1110710ffe5556', '1430349957'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152');

-- --------------------------------------------------------

--
-- Table structure for table `pres_da3f8f2d2722d669d09307bdacbb126d`
--

CREATE TABLE IF NOT EXISTS `pres_da3f8f2d2722d669d09307bdacbb126d` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_da3f8f2d2722d669d09307bdacbb126d`
--

INSERT INTO `pres_da3f8f2d2722d669d09307bdacbb126d` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('ebdec6a369739d93431e69608f37aab7', '1430348424'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('e2e76fc8dc7d11a922780ea64768bb26', '1430365253'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_da5d045126083dcd137947d802157b69`
--

CREATE TABLE IF NOT EXISTS `pres_da5d045126083dcd137947d802157b69` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_da5d045126083dcd137947d802157b69`
--

INSERT INTO `pres_da5d045126083dcd137947d802157b69` (`uuid`, `timestamp`) VALUES
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702');

-- --------------------------------------------------------

--
-- Table structure for table `pres_dc71408cf90f0586cf7ae296fced0cb1`
--

CREATE TABLE IF NOT EXISTS `pres_dc71408cf90f0586cf7ae296fced0cb1` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_dc71408cf90f0586cf7ae296fced0cb1`
--

INSERT INTO `pres_dc71408cf90f0586cf7ae296fced0cb1` (`uuid`, `timestamp`) VALUES
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('71980f9eb7527538ee2aaef46665e1e1', '1430859772'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('f09a3af3caa30823af4d70592a81d34a', '1430860323'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('a0af5b4eac4b7c2e9dddba090158cb1c', '1430860671'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_de449120ed97d96aac9ceb5b9b7b9c60`
--

CREATE TABLE IF NOT EXISTS `pres_de449120ed97d96aac9ceb5b9b7b9c60` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_de449120ed97d96aac9ceb5b9b7b9c60`
--

INSERT INTO `pres_de449120ed97d96aac9ceb5b9b7b9c60` (`uuid`, `timestamp`) VALUES
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('23d0514879ba9528b918ade9e65280d8', '1430342237'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `pres_dfa6c2d71e8bf60d24a2aaf239f5c877`
--

CREATE TABLE IF NOT EXISTS `pres_dfa6c2d71e8bf60d24a2aaf239f5c877` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_dfa6c2d71e8bf60d24a2aaf239f5c877`
--

INSERT INTO `pres_dfa6c2d71e8bf60d24a2aaf239f5c877` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('f3e4415f95e92645d0c4e57cf0668ee0', '1430859769'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251');

-- --------------------------------------------------------

--
-- Table structure for table `pres_e1e1e04ab1638298f915800a404c58b5`
--

CREATE TABLE IF NOT EXISTS `pres_e1e1e04ab1638298f915800a404c58b5` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_e1e1e04ab1638298f915800a404c58b5`
--

INSERT INTO `pres_e1e1e04ab1638298f915800a404c58b5` (`uuid`, `timestamp`) VALUES
('7427f564eb8bdeea248ec2ccf0c7972e', '1430341299'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('f57bbe881099635a04d74d6ea68387f2', '1430342058'),
('c80300f7b0bc00574074f22f4d19018c', '1430342193'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('95014663f007cd147ed30f79bbcdf375', '1430406460'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('546c9858cb273248b28d7f56a9948f27', '1430860885'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('1572eb36714e011bae2829606729cdec', '1430874161'),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', '1430877219'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('3dc244bb040640aa8f21d742f502d3b6', '1430891187'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_e77bd0a9c623aea12602847668d8f61a`
--

CREATE TABLE IF NOT EXISTS `pres_e77bd0a9c623aea12602847668d8f61a` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_e77bd0a9c623aea12602847668d8f61a`
--

INSERT INTO `pres_e77bd0a9c623aea12602847668d8f61a` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('4cbdb1a5dfbf3929c16fceb697f5625d', '1430860167'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('923e57c1e865031981486724072ee994', '1430860273'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_e4470c7bcf55036f7f1d619d2c77bd1f`
--

CREATE TABLE IF NOT EXISTS `pres_e4470c7bcf55036f7f1d619d2c77bd1f` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_e4470c7bcf55036f7f1d619d2c77bd1f`
--

INSERT INTO `pres_e4470c7bcf55036f7f1d619d2c77bd1f` (`uuid`, `timestamp`) VALUES
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('17b5043c3ce76b8531986aac66984a73', '1430341277'),
('1d73613e935ae4c20ed83fcb1a7a2ec7', '1430341306'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('229b93430f927891dd133ee9ca82492b', '1430341521'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('27fac1018deab1b6c2a4b801737244d8', '1430347938'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('db35497f0661e2cf0645a9c0f3fc6e9d', '1430860156'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('923e57c1e865031981486724072ee994', '1430860273'),
('2f7df4d05919a1bf0b98afcce236857f', '1430860607'),
('5fba9a376f157c148ef6bed5a83e854c', '1430860614'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697');

-- --------------------------------------------------------

--
-- Table structure for table `pres_e95073bb6b548acf654e944ea568ac89`
--

CREATE TABLE IF NOT EXISTS `pres_e95073bb6b548acf654e944ea568ac89` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_e95073bb6b548acf654e944ea568ac89`
--

INSERT INTO `pres_e95073bb6b548acf654e944ea568ac89` (`uuid`, `timestamp`) VALUES
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('8a9fd48aef73c9badeb865d66d9d6d27', '1430409325'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('1e18150b928452b43dfe0e06f57de103', '1430859907'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('e825d935c2f4fade1a54f034f25a088d', '1430862127'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('cf4f5436fcf6dbe5f3e38fbe94151926', '1430949314'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('dff67ba840be8bc70aa7edca7c4c2c81', '1431026237');

-- --------------------------------------------------------

--
-- Table structure for table `pres_e34632695f5e33c3f80a30447c06caf1`
--

CREATE TABLE IF NOT EXISTS `pres_e34632695f5e33c3f80a30447c06caf1` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_e34632695f5e33c3f80a30447c06caf1`
--

INSERT INTO `pres_e34632695f5e33c3f80a30447c06caf1` (`uuid`, `timestamp`) VALUES
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('c6996eed67262fbd4ddb30b6134df239', '1430344817'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('888c0eb124cf2f382c42fe2235bcebe5', '1430345330'),
('8ebea92bc77edec31807e3f85c526393', '1430346519'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('be022cc1cda35d0bb370971272d2b2e9', '1430406763'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('ecac3ea3cfeddb680947d7070338f4e6', '1430417556'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('c7ba211c7005e1c00df9272cf1aaa32d', '1430859745'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('2770ffaa2a5fde728dc12f33de4d12b3', '1430859871'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('3e25632ccfa21f84aec64c092889292b', '1430860008'),
('98d8697f7c6868b7f976aa15322c8dfb', '1430860104'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('0ef62567ac25bf689aff244dd4a502e4', '1430861693'),
('09c86fa06cb8f9f0075f28578a839e1d', '1430862269'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_ea705f29518b0754eb13ce15831821ff`
--

CREATE TABLE IF NOT EXISTS `pres_ea705f29518b0754eb13ce15831821ff` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_ea705f29518b0754eb13ce15831821ff`
--

INSERT INTO `pres_ea705f29518b0754eb13ce15831821ff` (`uuid`, `timestamp`) VALUES
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('6028fee58eff49b6c473634b068aac40', '1430351390'),
('fced840e5fe8e43daaf744ee52cb7788', '1430417753'),
('53a50a67b03d4420790745de027320c5', '1430786009'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('bcf2cc17558e99e74aa1b23cbf70ac3b', '1430860071'),
('f8b852d0cc930ed30d595c61875a8d3c', '1430860419'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('d408a931a086dea727786f2657ab8ceb', '1430861264'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('3f709def6c38b1aec7f705d4d180af92', '1430877697'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('1496cd4019283725b5035bbe53c2f222', '1430949788'),
('d53ad6b6500ec982d921609893bab4ee', '1430964561'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_ecb3198b48e125ee633d6b29df8dbed0`
--

CREATE TABLE IF NOT EXISTS `pres_ecb3198b48e125ee633d6b29df8dbed0` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_ecb3198b48e125ee633d6b29df8dbed0`
--

INSERT INTO `pres_ecb3198b48e125ee633d6b29df8dbed0` (`uuid`, `timestamp`) VALUES
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('7d1b06ffe3377545c70a63d7e78bf36a', '1430341326'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('e61da12b0057419f1261c95f667ac6f0', '1430342076'),
('7943c61cd2db50e7f3b5cd624b7b0703', '1430342198'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('4c203332c63c4fba6916dd1e5b66e129', '1430859758'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('327171d966288f8fcacecdcf184335d6', '1430859841'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('64ff5c2039b38287e856d93dc24d3fca', '1430859908'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998');

-- --------------------------------------------------------

--
-- Table structure for table `pres_f8fdb0df51ed0167bbe8d94bddd512d9`
--

CREATE TABLE IF NOT EXISTS `pres_f8fdb0df51ed0167bbe8d94bddd512d9` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_f8fdb0df51ed0167bbe8d94bddd512d9`
--

INSERT INTO `pres_f8fdb0df51ed0167bbe8d94bddd512d9` (`uuid`, `timestamp`) VALUES
('c1dfa781b1dc5bed3088c984e712cbce', '1430341230'),
('92ddccd6a05b41a366be0d0ac6ba5ddb', '1430341228'),
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('0244922a9ff05cc4144c241470af8be3', '1430341207'),
('320e3230a3c87de8c288d72e7c40d6cf', '1430341221'),
('3333093995dd5bbe663e2e2a47ffbe11', '1430341226'),
('20f95d26bc802f52d012d96bce8cd07e', '1430341271'),
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('17b5043c3ce76b8531986aac66984a73', '1430341278'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('3a4c2a25e203ba8ba457971ec671d4a1', '1430341288'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('769bd2e60cb2d3c73bd8d68651ae1998', '1430341333'),
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('fd818e2fbd9ba11c29a5330a4d47f0c3', '1430859737'),
('0e41e7c53be64248e10dc36e925df860', '1430859773'),
('4ab52e37bb047afc169fe5412cdb595d', '1430859802'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('43f382de5db1b367f1821c3bff23308c', '1430859889'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('10c97d22f8b2ba0a7a532cdcc05866be', '1430860139'),
('a2d6ffe04a063fb2fdcc659db9a1d14e', '1430860148'),
('923e57c1e865031981486724072ee994', '1430860273'),
('d83c3e924b028240190705c2d0899049', '1430860575'),
('8afaa023b2678d17568e738a878453a7', '1430860575'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('a9d22b5efc158cd188b277300d88bd87', '1430861019'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('6499b57ba9951800eb1a82540efd8c3f', '1431639508');

-- --------------------------------------------------------

--
-- Table structure for table `pres_f88c83cd257343bebc77b0f31d3787f2`
--

CREATE TABLE IF NOT EXISTS `pres_f88c83cd257343bebc77b0f31d3787f2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_f88c83cd257343bebc77b0f31d3787f2`
--

INSERT INTO `pres_f88c83cd257343bebc77b0f31d3787f2` (`uuid`, `timestamp`) VALUES
('c19d710a81dfafb621c658bc82fadd53', '1430341366'),
('8a49a1aeee2024981178c32731ae31e5', '1430341324'),
('768f4cdcf2a2d386ab011eae4ef728a7', '1430341318'),
('7afbe6061f3ee5a35d380ea536fc52e5', '1430341225'),
('7b07414ed366d6b2337c7e67234e9f47', '1430341387'),
('e2611e37f727c05ebddb4f9c037cd36a', '1430341395'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('a30c97b84299b0d15b27522a72be1498', '1430341694'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('658089b53fc417cba9961f174b2a8b13', '1430342361'),
('896f4c2a64aa2f9b79a1b2cd52ccf833', '1430342544'),
('7b5af520a3b016025bb58224e592a8a0', '1430344243'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('ec17b4b4bd2a67e52ed625d091c5289d', '1430345226'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('3be63dbfdee34ed3fee968c98a39e451', '1430859930'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('aac5d0f18756922ce184db464e90a24c', '1430861181'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', '1430864587'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('a63505931e5e28428e2c8602529b575b', '1430927899'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('9fbd15cc88006a7e80720ab135f9552e', '1431016064'),
('93fe55fc77e168ce778c1b796d1c1553', '1431639575');

-- --------------------------------------------------------

--
-- Table structure for table `pres_f476ff55c38d45ef8887df4801113b44`
--

CREATE TABLE IF NOT EXISTS `pres_f476ff55c38d45ef8887df4801113b44` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_f476ff55c38d45ef8887df4801113b44`
--

INSERT INTO `pres_f476ff55c38d45ef8887df4801113b44` (`uuid`, `timestamp`) VALUES
('6760bff5a88885db3e94d8ff939d09dd', '1430341304'),
('fc41dcfff68626334143d01a2b6848d1', '1430341309'),
('29b464e149e1c89c9d520877d466ae1d', '1430341319'),
('f90343fc9eb8331dacf5177ce9aa59e3', '1430341369'),
('50a1af44db4f042486f9de22f8ea35bf', '1430341463'),
('8fc153f47f308340dd46d35c5e0f465b', '1430341464'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('c46f33f939ee68bf9982c73b2d7d9e9c', '1430341586'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('5c7b3fb04978fcb89e0e42ad2570c94d', '1430341683'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('2ee4577a4e5cb2569adee7bfdd7e02d0', '1430341758'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('8f0b0c20a2dd21d51259a9514c55f2cf', '1430859706'),
('be136296ba7b99a2a41754bb4e7af5b8', '1430859719'),
('7ef5a67cff2df0e190140d860dc54f16', '1430859785'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('5df7cdbd8b6d64c1af6c9439bf953502', '1430859915'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('9495d38ede83ab9523158a677bc18fa2', '1430859998'),
('5b04f053e871517278bff647cdbf00a7', '1430860087'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('4c165a3c93b96603fa824cce7374e870', '1430860246'),
('80aa4bce63bfb494b91c768c0f483157', '1430860251'),
('f419dc69b3c5278b8a8e422d85234629', '1430860268'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('a3072de45c36cc12970ef992c56344ba', '1430860723'),
('e697c5c2faf3693d7b4c265fd8119bc9', '1430860847'),
('5ef7fb152c6e461c0eb361ac103ec1f9', '1431638580');

-- --------------------------------------------------------

--
-- Table structure for table `pres_f840ba04c85f5fc0b13edab535f9046a`
--

CREATE TABLE IF NOT EXISTS `pres_f840ba04c85f5fc0b13edab535f9046a` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_f840ba04c85f5fc0b13edab535f9046a`
--

INSERT INTO `pres_f840ba04c85f5fc0b13edab535f9046a` (`uuid`, `timestamp`) VALUES
('615f6a868619790124c3061f4945ae22', '1430341212'),
('a0246f85b44ab9c1655090564c702b72', '1430341575'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('8ac856bc7a57974238185ad23de2e265', '1430342659'),
('286c23ea75a6f428cffee62719bc6d4a', '1430344064'),
('3a2fde6dccdc57d49f03233b5e180f77', '1430344064'),
('452892a1848d75c0098488af8bea514d', '1430344107'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('67f2abf3df58be12072c06e543c1ef85', '1430346940'),
('bad7a0a510b67938eb009b1079bea376', '1430347045'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('a3ad3ae952a3fe28e56d8f1406497426', '1430363827'),
('aaa7eb909c69ed0efe8f35c51e1e5a01', '1430406630'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148'),
('923e57c1e865031981486724072ee994', '1430860273'),
('31d5898ea4cbccd19aa729cd55375aef', '1430860613'),
('6203c5ae2432a3adbc54519b1d4fc770', '1430860614'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('e100544aeba6a311ea381d27e7a9696c', '1430880063'),
('f73b9eac0c73128e896f70825765c8b8', '1431018953'),
('db99acf825c5111a8e5eb51afb20b948', '1431025471'),
('21365f39c9d80073b9d5b49f46fc129f', '1431057152'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d856a3ffcd31f8c70752f991fe8defcc', '1431637452'),
('9193391af4674315f650b3da9f8d3f46', '1431637543'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702');

-- --------------------------------------------------------

--
-- Table structure for table `pres_f49388e87384a85c86c71c8a9e107f73`
--

CREATE TABLE IF NOT EXISTS `pres_f49388e87384a85c86c71c8a9e107f73` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_f49388e87384a85c86c71c8a9e107f73`
--

INSERT INTO `pres_f49388e87384a85c86c71c8a9e107f73` (`uuid`, `timestamp`) VALUES
('98f82cb3b716afec62e01bfe1a0180b3', '1430341206'),
('3fde4dac2b0352cf6d0f7e265d407648', '1430341207'),
('aacb417242b60ae38f47b3940779c66c', '1430341206'),
('a0b4625ed934e6ee474ddbd504ff21ad', '1430341486'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('bdfe7bb568897f696d6699e7ac99afa8', '1430341542'),
('2bf1def788c556fbe6b20be87a80c8fb', '1430341663'),
('4a6717958239cc5cd73d576ac6d4984f', '1430341692'),
('e382c9fdb70107df40f7e41f3ab86159', '1430341713'),
('3511c6de2797dadd0b37b9bfc6ac0c5b', '1430341723'),
('09d5a4a277d0109b05a3e29b0efc7fd9', '1430341830'),
('34d78977e611a28357ccde7b985e3dda', '1430341869'),
('8c83694832a9beb3f7b4a53c51452f34', '1430341963'),
('714e825cae51844dbe7b32543bcd014b', '1430343240'),
('c579c0d2637f77e774c7ff3526de0078', '1430343950'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('2fad5ac9ef07b345f241b12b7d190952', '1430859821'),
('e0c3b009884da06d9f302e33894c69ae', '1430859856'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('3d92fb87a21c8dd209588921d146f819', '1430859899'),
('46fb9e1f81403c692b8bdd95b4dc46b0', '1430859970'),
('dc69295c8bc3c63c664a8225ce2b0982', '1430859971'),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', '1430860144'),
('c4e75e523601b26eb55975266448baea', '1430860344'),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', '1430860460'),
('82b4c64c6b0ea89fe03cfc845925081c', '1430860964'),
('ebbf2e79ab357b60c1aaf88f6b629734', '1430862730'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123');

-- --------------------------------------------------------

--
-- Table structure for table `pres_f101589f9df03e86832dbe10efd47299`
--

CREATE TABLE IF NOT EXISTS `pres_f101589f9df03e86832dbe10efd47299` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_f101589f9df03e86832dbe10efd47299`
--

INSERT INTO `pres_f101589f9df03e86832dbe10efd47299` (`uuid`, `timestamp`) VALUES
('bb4225291e83f7961f5dc2e06cc6ecb3', '1430341230'),
('913ce147f7a470024730f52259ae142c', '1430341315'),
('92b81dfbe666eadf7e3dcf6aad6e02f9', '1430341337'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('c93931083b987497407c9c4f69d8baa3', '1430341521'),
('07f56bcca7bf4dc18200d75c9c7b2ba6', '1430341537'),
('337a7e3fd1cf45433ea3d5c44bc6f66e', '1430341571'),
('d432f8491c50b8cace287fb3c43bd838', '1430341606'),
('09e68aec9f52632d10616a92cba0fc13', '1430341607'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('958f5b7380ed6815df2585d778750d1d', '1430341775'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('d7a83bf7f999df4bef093800d7a4ba90', '1430341976'),
('47000a8feb68f4af9fd499cf001e76d0', '1430341999'),
('91e78d33d89bef7a4369c1b6c529c7a9', '1430342205'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('96e0fb3059ae88964f8db2a61c55ec3d', '1430859701'),
('f527ee4673fc5323f439c571597bac7c', '1430859739'),
('e16b0bde54dffd5950701846016e90fe', '1430859769'),
('baa67ecd24a448d9cb31e429d16fdde4', '1430859781'),
('144f9205b1290393cd2cdea9a98348a1', '1430859784'),
('b98e697202c9fc95df89eee85da40153', '1430859790'),
('9577e032c8e1e3cf1f64d367e82a80d2', '1430859803'),
('cb937f4553ebeb220895eda9567c9105', '1430859825'),
('5252453dbca58470b383fb7faaddb061', '1430859826'),
('5a1458f7d0744b846810c1ee117515db', '1430859877'),
('83abfcad7c4648ef4e4fc08dc323a608', '1430859897'),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', '1430859902'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('1950e6698ca8941b92ea955d7814a115', '1430860105'),
('66d89a92edfc5856c27b60db5fd81125', '1430860148');

-- --------------------------------------------------------

--
-- Table structure for table `pres_fadb6278368b6d2313fe5911c50a3e8b`
--

CREATE TABLE IF NOT EXISTS `pres_fadb6278368b6d2313fe5911c50a3e8b` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_fadb6278368b6d2313fe5911c50a3e8b`
--

INSERT INTO `pres_fadb6278368b6d2313fe5911c50a3e8b` (`uuid`, `timestamp`) VALUES
('a653e5b669f2c3d9230137b4ad730f85', '1430341277'),
('f9937cf4825b3e346a7bf97bc5823416', '1430341287'),
('46bcac1028004c295eba3d75d61ed5cb', '1430341378'),
('d14f4aeba2236a2eb7d191c5cfa668e8', '1430341417'),
('2da43f3cc6b6ba97758cb01d771dd55b', '1430341431'),
('61e7b6ab27c2f678ae7b506b0c549096', '1430341679'),
('98ed5f0246410a74394fd87e11a5ab72', '1430341685'),
('2b4ff3136ef1de2ade722b7265b2a5c4', '1430341858'),
('9aa78606af0f9ae0c8642c652e33525e', '1430341870'),
('bff90eb8fd157614fe4ffa67d7b0a148', '1430342045'),
('7c6c997b02268c8abfe06694f2f9977e', '1430342311'),
('75dd27fe53782f7baf72b41a41658f35', '1430342382'),
('026530ea885790b9aa41600f4aae9a37', '1430342826'),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', '1430343825'),
('1a860a86b42fc17974037d8bc440e64d', '1430343903'),
('3ab5596b5675ab6c619a1d6ab6207dfc', '1430344572'),
('225ff41c9e11e75249f34d97043a8eb6', '1430859805'),
('b896c9ad0c1b7f638d165afdadb2e9d5', '1430860425'),
('2bd581acf0dd3f694374d120f815de84', '1430860511'),
('29804b2527fbcf5c424d4afa17616769', '1430861290'),
('9445b1c9678d01f8fb8d419210e64b0f', '1430863234'),
('9dc34880c0c44e5c7177fa8bd888eaa7', '1430864528'),
('a47ae50552eec3dba0212ad01eeb5e7d', '1430867419'),
('ef96b7c3bb2a0e64895dc53d1d3ad741', '1430868003'),
('3868a6b5ce67b4ea3e1f0892340605ab', '1430877461'),
('35ae6aabbf631a46ef3b2f5c64c4b11d', '1430878417'),
('efb28839f395eae382239400c958eea5', '1430882731'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('16a51d2bd2c614459aaae8354729851c', '1430967007'),
('2fa3720934f0e33145dd664f5f6d3c10', '1431113454'),
('d9a671510f5a5bb02d1987fef3fcbff6', '1431637620'),
('1be1ce937dbe81802f4b5a1932ac1aa0', '1431637702'),
('657c9f60039d4a3598dadf091f843c31', '1431639355');

-- --------------------------------------------------------

--
-- Table structure for table `pres_fe71e8ed05157c3a640320038d183db2`
--

CREATE TABLE IF NOT EXISTS `pres_fe71e8ed05157c3a640320038d183db2` (
  `uuid` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `timestamp` text COLLATE latin1_general_ci,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pres_fe71e8ed05157c3a640320038d183db2`
--

INSERT INTO `pres_fe71e8ed05157c3a640320038d183db2` (`uuid`, `timestamp`) VALUES
('1f43c68e1bc34d755b01f4c106c85d23', '1430341208'),
('99b9df4cb8f91baf864afbd43eba13d6', '1430341486'),
('6b4e1adcf4135f58b6b8529d9f4d28a5', '1430341488'),
('75e9dd7e74789bc5be820571621b0701', '1430341489'),
('861bf5ee6dd9b43f734b5ac77e506cd8', '1430341677'),
('827bd65ded3d0dd333922e3e51f1087f', '1430341841'),
('b7c08963b2c3d4f624556dbf1ae8410b', '1430342262'),
('4a8e49d0b2ba4da50f2e5023a899112c', '1430342465'),
('e529f2bf36fc01427e304e5975fe8148', '1430342915'),
('f16f92c381da1dee3b96cf498e71e6af', '1430343396'),
('a60f64e59500e946ff5f783e71d89482', '1430344243'),
('9ed2e9fe71a5d073d002859ec5e18221', '1430345057'),
('fb102df1544f35eb51918298458db259', '1430345738'),
('63006ac0099e240df2e800ba65be8001', '1430348045'),
('fa3403954729908a70991f18cc3bb5c2', '1430355688'),
('b8068b99549779f139a3d614422c59a8', '1430357492'),
('82349968e54a47a7ef4f1ee2db54acd7', '1430859966'),
('057c993c85dc1122a74522c5be4a2db1', '1430860039'),
('5d4e26285704e7c5efb93cf8b6208e04', '1430860067'),
('7ab3fe71ad2fef27d36666b7477abd3b', '1430860250'),
('923e57c1e865031981486724072ee994', '1430860273'),
('328bda1bf6f6ed3e11bba88d00443139', '1430860553'),
('c6c7c90c362e6aa94a9425f131bd7bfd', '1430860717'),
('c00050a39b43a9f2c818da9a142311b3', '1430861024'),
('00e148eaac7c3d68191b91165fae399c', '1430861327'),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', '1430861670'),
('cb0fd44f4598d3d70f38b7091f624f10', '1430866963'),
('ce63d38dfb756054e76c0b315026d50f', '1430873271'),
('fd48b251d7a762907e5e9e150b145809', '1430879118'),
('ac488e25577fcaf687777f9bab06bfed', '1430879123'),
('eacc214691c3c01d3162e57c5d2d47b1', '1430886727'),
('5e306f7ae5c27e8fc2e0b256a6fba864', '1430888687'),
('38b2f1ea9b143d391ec5ed714ade7880', '1431639429');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `entrykey` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `entryvalue` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`entrykey`, `entryvalue`) VALUES
('siteenabled', '1');

-- --------------------------------------------------------

--
-- Table structure for table `viewers`
--

CREATE TABLE IF NOT EXISTS `viewers` (
  `uuid` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `firstname` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `lastname` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `house` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `viewers`
--

INSERT INTO `viewers` (`uuid`, `firstname`, `lastname`, `email`, `house`, `grade`) VALUES
('320e3230a3c87de8c288d72e7c40d6cf', 'Leslie', 'Luna', '', 'S', 12),
('7afbe6061f3ee5a35d380ea536fc52e5', 'Zi', 'Xu', '', 'E', 12),
('3333093995dd5bbe663e2e2a47ffbe11', 'Aubree', 'Amano', '', 'W', 12),
('92ddccd6a05b41a366be0d0ac6ba5ddb', 'Gretel', 'Mejia', '', 'W', 12),
('c1dfa781b1dc5bed3088c984e712cbce', 'Givanti', 'Chatapal', '', 'S', 12),
('3fde4dac2b0352cf6d0f7e265d407648', 'Natali', 'Valle', '', 'W', 12),
('1f43c68e1bc34d755b01f4c106c85d23', 'Victor', 'Gamboa', '', 'S', 12),
('615f6a868619790124c3061f4945ae22', 'Hannah', 'Tran', '', 'S', 12),
('98f82cb3b716afec62e01bfe1a0180b3', 'Joseph', 'Garcia', '', 'S', 12),
('0244922a9ff05cc4144c241470af8be3', 'Hannah', 'Seyffert', '', 'S', 12),
('aacb417242b60ae38f47b3940779c66c', 'Cheyenne', 'Jarman', '', 'S', 12),
('bb4225291e83f7961f5dc2e06cc6ecb3', 'Hasan', 'Khan', '', 'E', 12),
('3c25a31330362da13eab4933d7b58f89', 'Elijah', 'Garcia', '', 'E', 12),
('20f95d26bc802f52d012d96bce8cd07e', 'Edwin', 'Davila', '', 'S', 12),
('a653e5b669f2c3d9230137b4ad730f85', 'Stephanie', 'Marin', '', 'E', 12),
('17b5043c3ce76b8531986aac66984a73', 'Samantha', 'Angel', '', 'W', 12),
('23090310c22877080e319a4b09a8f8fc', 'Iliana', 'Solorzano', '', 'E', 12),
('f9937cf4825b3e346a7bf97bc5823416', 'Sara', 'Baggia', '', 'S', 12),
('3a4c2a25e203ba8ba457971ec671d4a1', 'Justine', 'Solorio', '', 'S', 12),
('7427f564eb8bdeea248ec2ccf0c7972e', 'Ester America', 'Gonzalez', '', 'N', 12),
('6760bff5a88885db3e94d8ff939d09dd', 'Jennifer', 'Pulido', '', 'E', 12),
('1d73613e935ae4c20ed83fcb1a7a2ec7', 'Anais', 'Bolden', '', 'E', 12),
('fc41dcfff68626334143d01a2b6848d1', 'Guadalupe', 'Huaracha', '', 'S', 12),
('913ce147f7a470024730f52259ae142c', 'Susana', 'Pinon', '', 'N', 12),
('768f4cdcf2a2d386ab011eae4ef728a7', 'Stephanie', 'Soriano', '', 'S', 12),
('29b464e149e1c89c9d520877d466ae1d', 'Alyanna', 'Landayan', '', 'E', 12),
('8a49a1aeee2024981178c32731ae31e5', 'Monique', 'Rivera', '', 'W', 12),
('7d1b06ffe3377545c70a63d7e78bf36a', 'Valerie', 'Lopez', '', 'S', 12),
('769bd2e60cb2d3c73bd8d68651ae1998', 'Daniela', 'Diaz', '', 'S', 12),
('92b81dfbe666eadf7e3dcf6aad6e02f9', 'Andrew', 'Morris', '', 'E', 12),
('c19d710a81dfafb621c658bc82fadd53', 'Marisa', 'Ruiz', '', 'W', 12),
('f90343fc9eb8331dacf5177ce9aa59e3', 'Lilliana', 'Yzaguirre', '', 'W', 12),
('46bcac1028004c295eba3d75d61ed5cb', 'Marissa', 'Jasso', '', 'S', 12),
('7b07414ed366d6b2337c7e67234e9f47', 'Sabrina', 'Dalan', '', 'W', 12),
('e2611e37f727c05ebddb4f9c037cd36a', 'Paulina', 'Dominguez', '', 'W', 12),
('d14f4aeba2236a2eb7d191c5cfa668e8', 'Matthew', 'Ibarra', '', 'S', 12),
('2da43f3cc6b6ba97758cb01d771dd55b', 'Adrienne', 'Alba', '', 'S', 12),
('50a1af44db4f042486f9de22f8ea35bf', 'Lisette', 'Alvarado', '', 'S', 12),
('8fc153f47f308340dd46d35c5e0f465b', 'Leslie', 'Salazar', '', 'S', 12),
('a0b4625ed934e6ee474ddbd504ff21ad', 'Ronny', 'Rodriguez', '', 'N', 12),
('99b9df4cb8f91baf864afbd43eba13d6', 'Jacob', 'Reyes', '', 'E', 12),
('6b4e1adcf4135f58b6b8529d9f4d28a5', 'Nickolas', 'Herrers', '', 'N', 12),
('75e9dd7e74789bc5be820571621b0701', 'Aaron', 'Ramos', '', 'W', 12),
('c93931083b987497407c9c4f69d8baa3', 'Nathan', 'Guevara', '', 'W', 12),
('229b93430f927891dd133ee9ca82492b', 'Daisy', 'Torres', '', 'W', 12),
('07f56bcca7bf4dc18200d75c9c7b2ba6', 'Andrea', 'Rosales', '', 'W', 12),
('bdfe7bb568897f696d6699e7ac99afa8', 'Armando', 'Rivera', '', 'E', 12),
('337a7e3fd1cf45433ea3d5c44bc6f66e', 'Sara', 'Pachamango', '', 'E', 12),
('a0246f85b44ab9c1655090564c702b72', 'Elizabeth', 'Garcia', '', 'W', 12),
('c46f33f939ee68bf9982c73b2d7d9e9c', 'Rebecca', 'Barberi', '', 'S', 12),
('d432f8491c50b8cace287fb3c43bd838', 'Jason', 'Wu', '', 'E', 12),
('09e68aec9f52632d10616a92cba0fc13', 'Denesh', 'Chandrahasan', '', 'S', 12),
('2bf1def788c556fbe6b20be87a80c8fb', 'Malorie', 'Wolfe', '', 'N', 12),
('861bf5ee6dd9b43f734b5ac77e506cd8', 'Gabriel', 'Marquez', '', 'E', 12),
('61e7b6ab27c2f678ae7b506b0c549096', 'Sarah', 'Regan', '', 'N', 12),
('5c7b3fb04978fcb89e0e42ad2570c94d', 'Alondra', 'Bernardino', '', 'E', 12),
('98ed5f0246410a74394fd87e11a5ab72', 'Kate', 'Khousavath', '', 'E', 12),
('4a6717958239cc5cd73d576ac6d4984f', 'Sean', 'Bustamante', '', 'E', 12),
('a30c97b84299b0d15b27522a72be1498', 'Isabel', 'Elvira', '', 'S', 12),
('5c033fb4cc815b64744438d1d1c69aec', 'Esai', 'Cordova', '', 'S', 12),
('e382c9fdb70107df40f7e41f3ab86159', 'Brandon', 'Le', '', 'E', 12),
('3511c6de2797dadd0b37b9bfc6ac0c5b', 'Micah', 'Chambers', '', 'N', 12),
('2ee4577a4e5cb2569adee7bfdd7e02d0', 'Yuritzi', 'Mora', '', 'E', 12),
('958f5b7380ed6815df2585d778750d1d', 'Alexandru', 'Andronescu', '', 'S', 12),
('09d5a4a277d0109b05a3e29b0efc7fd9', 'Sabrina', 'Carrera', '', 'E', 12),
('827bd65ded3d0dd333922e3e51f1087f', 'Brandon', 'Salinas', '', 'N', 12),
('2b4ff3136ef1de2ade722b7265b2a5c4', 'Diego', 'Luna', '', 'N', 12),
('34d78977e611a28357ccde7b985e3dda', 'Ian', 'Kam', '', 'N', 12),
('9aa78606af0f9ae0c8642c652e33525e', 'Roman', 'Gutierrez', '', 'W', 12),
('8c83694832a9beb3f7b4a53c51452f34', 'Jessica', 'Castillo', '', 'N', 12),
('d7a83bf7f999df4bef093800d7a4ba90', 'Tommy', 'Trang', '', 'N', 12),
('47000a8feb68f4af9fd499cf001e76d0', 'Michael', 'Sadrach', '', 'W', 12),
('bff90eb8fd157614fe4ffa67d7b0a148', 'Vanessa', 'Contreras', '', 'N', 12),
('f57bbe881099635a04d74d6ea68387f2', 'Cesar', 'Ponce', '', 'E', 12),
('e61da12b0057419f1261c95f667ac6f0', 'Ana', 'Nieto', '', 'N', 12),
('c80300f7b0bc00574074f22f4d19018c', 'Victoria', 'Gonzalez', '', 'W', 12),
('7943c61cd2db50e7f3b5cd624b7b0703', 'Vincent', 'Zepeda', '', 'N', 12),
('91e78d33d89bef7a4369c1b6c529c7a9', 'Anthony', 'Torres', '', 'E', 12),
('23d0514879ba9528b918ade9e65280d8', 'Nathalie', 'Iannetta', '', 'W', 12),
('b7c08963b2c3d4f624556dbf1ae8410b', 'Ariami', 'Garcia', '', 'N', 12),
('7c6c997b02268c8abfe06694f2f9977e', 'Sachin', 'Suresh', '', 'N', 12),
('658089b53fc417cba9961f174b2a8b13', 'Caroline', 'Salinas', '', 'W', 12),
('75dd27fe53782f7baf72b41a41658f35', 'Lauren', 'Coronado', '', 'S', 12),
('4a8e49d0b2ba4da50f2e5023a899112c', 'Peter', 'Steinwald', '', 'S', 12),
('896f4c2a64aa2f9b79a1b2cd52ccf833', 'Adriane', 'Parale', '', 'E', 12),
('0249328f773a0df2c932c092c6b8b6cf', 'Aaron', 'Martinez', '', 'S', 12),
('8ac856bc7a57974238185ad23de2e265', 'Desiree', 'Zarate', '', 'S', 12),
('026530ea885790b9aa41600f4aae9a37', 'Papitchaya', 'Sutthisoonthorn', '', 'S', 12),
('e529f2bf36fc01427e304e5975fe8148', 'Daniel', 'Bustamante', '', 'W', 12),
('714e825cae51844dbe7b32543bcd014b', 'Slade', 'Suzuki', '', 'W', 12),
('f16f92c381da1dee3b96cf498e71e6af', 'Seanna', 'Vasquez', '', 'W', 12),
('5f10ed7a0ed88a3cf91e5b6ff8ad272c', 'Aralia', 'Giron', '', 'N', 12),
('1a860a86b42fc17974037d8bc440e64d', 'Isabella', 'Grello', '', 'N', 12),
('c579c0d2637f77e774c7ff3526de0078', 'Imelda', 'Gomez', '', 'N', 12),
('286c23ea75a6f428cffee62719bc6d4a', 'Benedict', 'Paz', '', 'E', 12),
('3a2fde6dccdc57d49f03233b5e180f77', 'Claire', 'Dix', '', 'W', 12),
('452892a1848d75c0098488af8bea514d', 'Joseph', 'Mirabal', '', 'W', 12),
('7b5af520a3b016025bb58224e592a8a0', 'Ingrid', 'Mata', '', 'N', 12),
('a60f64e59500e946ff5f783e71d89482', 'Gicelle', 'Alarcon', '', 'E', 12),
('3ab5596b5675ab6c619a1d6ab6207dfc', 'Patty', 'Arellano', '', 'E', 12),
('c6996eed67262fbd4ddb30b6134df239', 'Veronica', 'Lopez', '', 'N', 12),
('9ed2e9fe71a5d073d002859ec5e18221', 'Jj', 'Navarro', '', 'E', 12),
('ec17b4b4bd2a67e52ed625d091c5289d', 'Alexis', 'Crisanto', '', 'N', 12),
('888c0eb124cf2f382c42fe2235bcebe5', 'Jessica', 'Nesci', '', 'N', 12),
('fb102df1544f35eb51918298458db259', 'Brian', 'Arteaga', '', 'N', 12),
('8ebea92bc77edec31807e3f85c526393', 'Joshua', 'Aguirre-dahdouh', '', 'W', 12),
('67f2abf3df58be12072c06e543c1ef85', 'Humberto', 'Tavira', '', 'N', 12),
('bad7a0a510b67938eb009b1079bea376', 'Kade', 'Peich', '', 'E', 12),
('27fac1018deab1b6c2a4b801737244d8', 'Carl', 'La Russa', '', 'N', 12),
('63006ac0099e240df2e800ba65be8001', 'Eliora', 'Smith', '', 'E', 12),
('ebdec6a369739d93431e69608f37aab7', 'Avery', 'Brinkley', '', 'W', 12),
('4693f7d7876206575a1110710ffe5556', 'Camille', 'Erskine', '', 'N', 12),
('6028fee58eff49b6c473634b068aac40', 'Nicole', 'Lopez', '', 'S', 12),
('fa3403954729908a70991f18cc3bb5c2', 'Christopher', 'Figueroa', '', 'W', 12),
('b8068b99549779f139a3d614422c59a8', 'Alonso', 'Villanueva', '', 'N', 12),
('a3ad3ae952a3fe28e56d8f1406497426', 'Karlavanessa', 'Rodriguez', '', 'W', 12),
('e2e76fc8dc7d11a922780ea64768bb26', 'Hannah', 'Leonard', '', 'N', 12),
('0996385517656674e2db931bbc08b398', 'Alan', 'Gutierrez', '', 'E', 12),
('95014663f007cd147ed30f79bbcdf375', 'Nicholas', 'Ayala', '', 'W', 12),
('aaa7eb909c69ed0efe8f35c51e1e5a01', 'Vincent', 'Valadez', '', 'W', 12),
('be022cc1cda35d0bb370971272d2b2e9', 'Alexis', 'Mendoza', '', 'W', 12),
('8a9fd48aef73c9badeb865d66d9d6d27', 'Myles', 'Price', '', 'S', 12),
('5b04f053e871517278bff647cdbf00a7', 'Ashley', 'Rodriguez', '', 'W', 11),
('ecac3ea3cfeddb680947d7070338f4e6', 'Natalie', 'Byrne', '', 'E', 12),
('fced840e5fe8e43daaf744ee52cb7788', 'Inez', 'Torres', '', 'E', 12),
('53a50a67b03d4420790745de027320c5', 'Emaan', 'Ahmed', '', 'N', 12),
('96e0fb3059ae88964f8db2a61c55ec3d', 'Mila Therese', 'Reyes', '', 'S', 11),
('8f0b0c20a2dd21d51259a9514c55f2cf', 'Sarah', 'Morales', '', 'N', 11),
('14783471b3439531070929fa7037f650', 'Donovan', 'Behen', '', 'S', 11),
('be136296ba7b99a2a41754bb4e7af5b8', 'Andrea', 'Yzaguirre', '', 'S', 11),
('fd818e2fbd9ba11c29a5330a4d47f0c3', 'Lauren', 'Burney', '', 'S', 11),
('f527ee4673fc5323f439c571597bac7c', 'Jordan', 'Partida', '', 'N', 11),
('c7ba211c7005e1c00df9272cf1aaa32d', 'Karina', 'Tostado', '', 'S', 11),
('4c203332c63c4fba6916dd1e5b66e129', 'Kaylyn', 'Ruiz', '', 'N', 11),
('f3e4415f95e92645d0c4e57cf0668ee0', 'John', 'Della Penna', '', 'E', 11),
('e16b0bde54dffd5950701846016e90fe', 'Christopher', 'Perez', '', 'E', 11),
('71980f9eb7527538ee2aaef46665e1e1', 'Elizabeth', 'Plascencia', '', 'S', 11),
('0e41e7c53be64248e10dc36e925df860', 'Amir', 'Freeman', '', 'E', 11),
('baa67ecd24a448d9cb31e429d16fdde4', 'Josue', 'Arellano', '', 'S', 11),
('144f9205b1290393cd2cdea9a98348a1', 'Robert', 'Machuca', '', 'S', 11),
('7ef5a67cff2df0e190140d860dc54f16', 'Amanda', 'Mesa', '', 'N', 11),
('b98e697202c9fc95df89eee85da40153', 'Isaiah Kai', 'Maylad', '', 'W', 11),
('091ef33b41dafe1101c3d0e76e5923ce', 'Jenelle', 'Huck', '', 'E', 11),
('0294a91ce158bcf51c48bb7176b6cac8', 'Chad', 'Maass', '', 'E', 11),
('4ab52e37bb047afc169fe5412cdb595d', 'Kiley', 'Moore', '', 'W', 11),
('9577e032c8e1e3cf1f64d367e82a80d2', 'Julianne', 'General', '', 'W', 11),
('225ff41c9e11e75249f34d97043a8eb6', 'Mariah', 'Martinez', '', 'N', 11),
('2fad5ac9ef07b345f241b12b7d190952', 'Elizabeth', 'Basilio', '', 'S', 11),
('cb937f4553ebeb220895eda9567c9105', 'Sabrina', 'Velez', '', 'E', 11),
('5252453dbca58470b383fb7faaddb061', 'Christian', 'Legaspino', '', 'W', 11),
('327171d966288f8fcacecdcf184335d6', 'Leslie', 'Torres', '', 'W', 11),
('e0c3b009884da06d9f302e33894c69ae', 'Perla', 'Navarro', '', 'W', 11),
('2770ffaa2a5fde728dc12f33de4d12b3', 'Mario', 'Mendoza', '', 'W', 11),
('7838129b67d5b8f1df7058254de6ecda', 'Justin', 'Ilagan', '', 'N', 11),
('5a1458f7d0744b846810c1ee117515db', 'Leo', 'Montelongo', '', 'W', 11),
('43f382de5db1b367f1821c3bff23308c', 'Jennifer', 'Aguilera', '', 'N', 11),
('83abfcad7c4648ef4e4fc08dc323a608', 'Megan', 'Thi', '', 'N', 11),
('3d92fb87a21c8dd209588921d146f819', 'Alexis', 'Alvarez', '', 'E', 11),
('46584d17dcbf53fdffa13a7a6feec64d', 'Santiago', 'Hernandez', '', 'S', 11),
('c2e7b88ca83731d41d8cbeb6d10ab3a8', 'Yuji', 'Karuhaka', '', 'S', 11),
('1e18150b928452b43dfe0e06f57de103', 'Ethan', 'Porsona', '', 'S', 11),
('64ff5c2039b38287e856d93dc24d3fca', 'Julissa', 'Ortiz', '', 'E', 11),
('5df7cdbd8b6d64c1af6c9439bf953502', 'Brianna', 'Beltran', '', 'S', 11),
('f94cf60ef9470a29ae604d95d6ed1b09', 'Brooke', 'Cooper', '', 'W', 11),
('3be63dbfdee34ed3fee968c98a39e451', 'Ariadne', 'Meza', '', 'N', 11),
('82349968e54a47a7ef4f1ee2db54acd7', 'Victoria', 'Nakai', '', 'S', 11),
('46fb9e1f81403c692b8bdd95b4dc46b0', 'Kimberly', 'Ramos', '', 'W', 11),
('dc69295c8bc3c63c664a8225ce2b0982', 'Omar', 'Osornio', '', 'E', 11),
('9495d38ede83ab9523158a677bc18fa2', 'Salvador', 'Vargas', '', 'S', 11),
('3e25632ccfa21f84aec64c092889292b', 'Pauline', 'Miramontes', '', 'S', 11),
('057c993c85dc1122a74522c5be4a2db1', 'Jake', 'Taylor', '', 'W', 11),
('1f65a15f9003e01ed1025f7f04eb4ff6', 'Kyle', 'Levin', '', 'W', 11),
('5d4e26285704e7c5efb93cf8b6208e04', 'Anthony', 'Gomez', '', 'W', 11),
('bcf2cc17558e99e74aa1b23cbf70ac3b', 'Luis', 'Viramontes', '', 'N', 11),
('98d8697f7c6868b7f976aa15322c8dfb', 'Trino', 'Arellano', '', 'N', 11),
('1950e6698ca8941b92ea955d7814a115', 'Scully', 'Kuo', '', 'W', 11),
('10c97d22f8b2ba0a7a532cdcc05866be', 'Jessica', 'Jimenez', '', 'N', 11),
('fa3eb1cb6bdacd21c8a6ca75c5814da3', 'Brianne', 'Estrada', '', 'N', 11),
('a2d6ffe04a063fb2fdcc659db9a1d14e', 'Itzia', 'Chavez', '', 'N', 11),
('66d89a92edfc5856c27b60db5fd81125', 'Zuhayr', 'Khan', '', 'S', 11),
('706a0ae4425df8b6baa444f89a7dc2c5', 'Brandy', 'Govea', '', 'E', 11),
('db35497f0661e2cf0645a9c0f3fc6e9d', 'Joshua', 'Sanchez', '', 'N', 11),
('4cbdb1a5dfbf3929c16fceb697f5625d', 'Michael', 'Nunez', '', 'S', 11),
('4c165a3c93b96603fa824cce7374e870', 'Hunter', 'Baugus', '', 'E', 11),
('7ab3fe71ad2fef27d36666b7477abd3b', 'Samantha', 'Villanueva', '', 'S', 11),
('80aa4bce63bfb494b91c768c0f483157', 'Raelene', 'Calderon', '', 'N', 11),
('f419dc69b3c5278b8a8e422d85234629', 'Cheyenne', 'Medina', '', 'S', 11),
('923e57c1e865031981486724072ee994', 'Jocelyn', 'Sanchez', '', 'N', 11),
('f09a3af3caa30823af4d70592a81d34a', 'Maddison', 'October', '', 'S', 11),
('090df5a0135dc86bc31a292b352f7a27', 'Katie', 'Lopez', '', 'E', 11),
('c4e75e523601b26eb55975266448baea', 'Madeline', 'Doctor', '', 'E', 11),
('f8b852d0cc930ed30d595c61875a8d3c', 'Jayson', 'Mcisaac', '', 'S', 11),
('b896c9ad0c1b7f638d165afdadb2e9d5', 'Maylon', 'Day', '', 'W', 11),
('1b518e5590b3853e8d444fa848cc8681', 'Jacob', 'Smith', '', 'E', 11),
('d7c71b2ba9c0a7b5530e1936bb0fc6fe', 'Simrit', 'Sohal', '', 'W', 11),
('1862cfa88f0807c9804d6ab7080bf066', 'Jose', 'Alonso', '', 'S', 11),
('2bd581acf0dd3f694374d120f815de84', 'Owen', 'Montoya', '', 'E', 11),
('fda71ccaac3c147db4fabccb4a748a04', 'Kenzie', 'Mccarrel', '', 'E', 11),
('328bda1bf6f6ed3e11bba88d00443139', 'Jordan', 'Banuelos', '', 'S', 11),
('d83c3e924b028240190705c2d0899049', 'Eden', 'Reyna', '', 'S', 11),
('8afaa023b2678d17568e738a878453a7', 'Alondra', 'Gutierrez', '', 'S', 11),
('2f7df4d05919a1bf0b98afcce236857f', 'Nicole', 'Giannini', '', 'S', 11),
('31d5898ea4cbccd19aa729cd55375aef', 'Kathleen', 'Sison', '', 'N', 11),
('5fba9a376f157c148ef6bed5a83e854c', 'Mychel', 'Lim', '', 'W', 11),
('6203c5ae2432a3adbc54519b1d4fc770', 'Gennesis', 'Romero', '', 'S', 11),
('a0af5b4eac4b7c2e9dddba090158cb1c', 'Karla', 'Milicich', '', 'W', 11),
('c6c7c90c362e6aa94a9425f131bd7bfd', 'Valerie', 'Uy', '', 'S', 11),
('a3072de45c36cc12970ef992c56344ba', 'Claudia', 'Steinwald', '', 'N', 11),
('e697c5c2faf3693d7b4c265fd8119bc9', 'Alex', 'Cortez', '', 'N', 11),
('546c9858cb273248b28d7f56a9948f27', 'Kris', 'Flores', '', 'S', 11),
('82b4c64c6b0ea89fe03cfc845925081c', 'Kyndra', 'Isom', '', 'W', 11),
('a9d22b5efc158cd188b277300d88bd87', 'Michelle', 'Villasenor', '', 'W', 11),
('c00050a39b43a9f2c818da9a142311b3', 'Starla', 'Seale', '', 'E', 11),
('aac5d0f18756922ce184db464e90a24c', 'Chris', 'Arnold', '', 'E', 11),
('d408a931a086dea727786f2657ab8ceb', 'Phillip', 'Rosenblum', '', 'W', 11),
('29804b2527fbcf5c424d4afa17616769', 'Miriam', 'Leon', '', 'W', 11),
('00e148eaac7c3d68191b91165fae399c', 'Jose', 'Aceves', '', 'N', 11),
('0cb5cc8a7eb3a8481d5f83fe97cbcbfb', 'Diane', 'Gordon', '', 'E', 11),
('0ef62567ac25bf689aff244dd4a502e4', 'Anthony', 'Clark', '', 'E', 11),
('e825d935c2f4fade1a54f034f25a088d', 'Stephanie', 'Lopez', '', 'N', 11),
('09c86fa06cb8f9f0075f28578a839e1d', 'Alicia', 'Ramirez', '', 'W', 11),
('ebbf2e79ab357b60c1aaf88f6b629734', 'Idalia', 'Lopez', '', 'E', 11),
('9445b1c9678d01f8fb8d419210e64b0f', 'Liah', 'Martinez', '', 'N', 11),
('9dc34880c0c44e5c7177fa8bd888eaa7', 'Gomez', 'Rogine', '', 'E', 11),
('c0a0f30ddf1bc55f94ec3f1a0adf19ad', 'Clerisse', 'Cornejo', '', 'N', 11),
('cb0fd44f4598d3d70f38b7091f624f10', 'Jaska', 'Adoptante', '', 'N', 11),
('a47ae50552eec3dba0212ad01eeb5e7d', 'Jessica', 'Bui', '', 'E', 11),
('ef96b7c3bb2a0e64895dc53d1d3ad741', 'Daren', 'Lugo', '', 'W', 11),
('ce63d38dfb756054e76c0b315026d50f', 'Kyle', 'Desiderio', '', 'N', 11),
('1572eb36714e011bae2829606729cdec', 'Isaac', 'Diaz', '', 'W', 11),
('1a62a6c17e7bdcb4cb93b5d16b5f7ddf', 'Jesse', 'Eyster', '', 'W', 11),
('3868a6b5ce67b4ea3e1f0892340605ab', 'Nathaly', 'Perez', '', 'E', 11),
('3f709def6c38b1aec7f705d4d180af92', 'Mac', 'Chandrahasan', '', 'W', 11),
('35ae6aabbf631a46ef3b2f5c64c4b11d', 'Preston', 'Le', '', 'N', 11),
('fd48b251d7a762907e5e9e150b145809', 'Sid', 'Suresh', '', 'N', 11),
('ac488e25577fcaf687777f9bab06bfed', 'Edward', 'Hernandez', '', 'S', 11),
('e100544aeba6a311ea381d27e7a9696c', 'Jonathan', 'Alvarado', '', 'N', 11),
('efb28839f395eae382239400c958eea5', 'Peyton', 'Birchler', '', 'W', 11),
('eacc214691c3c01d3162e57c5d2d47b1', 'Vivian', 'Garcia', '', 'W', 11),
('5e306f7ae5c27e8fc2e0b256a6fba864', 'Lesley', 'Moreira', '', 'E', 11),
('3dc244bb040640aa8f21d742f502d3b6', 'Christian', 'Cabunag', '', 'E', 11),
('a63505931e5e28428e2c8602529b575b', 'Isaiah', 'Leon', '', 'W', 11),
('cf4f5436fcf6dbe5f3e38fbe94151926', 'Brooke', 'Bailey', '', 'E', 11),
('1496cd4019283725b5035bbe53c2f222', 'Diego', 'Moreno', '', 'N', 12),
('d53ad6b6500ec982d921609893bab4ee', 'Ilse', 'Gutierrez', '', 'S', 12),
('16a51d2bd2c614459aaae8354729851c', 'JosÃ©', 'Moreno', '', 'E', 11),
('9fbd15cc88006a7e80720ab135f9552e', 'Brianna', 'Moreno', '', 'N', 11),
('f73b9eac0c73128e896f70825765c8b8', 'Austin', 'Rode', '', 'W', 11),
('db99acf825c5111a8e5eb51afb20b948', 'Aaron', 'Noble', '', 'S', 11),
('dff67ba840be8bc70aa7edca7c4c2c81', 'Alyssa', 'Jurkevics', '', 'E', 12),
('21365f39c9d80073b9d5b49f46fc129f', 'Giselle', 'Pineda', '', 'N', 11),
('2fa3720934f0e33145dd664f5f6d3c10', 'Ethan', 'Walls', '', 'N', 11),
('d856a3ffcd31f8c70752f991fe8defcc', 'Dawson', 'Khoury', '', 'N', 11),
('9193391af4674315f650b3da9f8d3f46', 'Brian', 'Manly', '', 'N', 11),
('d9a671510f5a5bb02d1987fef3fcbff6', 'David', 'Sikes', '', 'N', 11),
('1be1ce937dbe81802f4b5a1932ac1aa0', 'Noah', 'Cortez', '', 'E', 11),
('5ef7fb152c6e461c0eb361ac103ec1f9', 'Ethan', 'Howie', '', 'E', 11),
('657c9f60039d4a3598dadf091f843c31', 'Isaias', 'Crisanto', '', 'E', 11),
('38b2f1ea9b143d391ec5ed714ade7880', 'Rodolfo', 'Gutierrez', '', 'E', 11),
('6499b57ba9951800eb1a82540efd8c3f', 'Val', 'Ruvalcaba', '', 'E', 11),
('93fe55fc77e168ce778c1b796d1c1553', 'Alek', 'Redmon', '', 'E', 11);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
