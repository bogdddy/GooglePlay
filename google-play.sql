-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Temps de generació: 04-04-2022 a les 13:28:00
-- Versió del servidor: 5.7.33
-- Versió de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `google-play`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_play_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` double(8,2) NOT NULL,
  `installs` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `developer_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `release_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `apps`
--

INSERT INTO `apps` (`id`, `name`, `google_play_id`, `country`, `url`, `score`, `installs`, `price`, `description`, `developer_id`, `category_id`, `release_date`, `update_date`, `created_at`, `updated_at`) VALUES
(1, 'BeMyEye - Earn money', 'com.bemyeye.app', 'es', 'https://play.google.com/store/apps/details?id=com.bemyeye.app', 4.09, 2959998, 0.00, 'Uneix-te a les  2.000.000 persones  que ja utilitzen l’aplicació i realitzen missions breus amb el teu telèfon intel·ligent a les botigues properes. Guanyar diners al vostre temps lliure mai no ha estat més fàcil 💸💰\n\nTreballem amb les marques més grans (Coca Cola, Nestle, Heineken, Ferrero, Mattel, etc.): recopilem informació sobre els seus productes i  rebem una mitjana de 5 £ per una missió de 10 minuts . Alguns mini treballs us poden guanyar fins a 25 £.\n\n  COM FUNCIONA  \n\n  ✓   Seleccioneu una missió al mapa o a la llista de missions\n  ✓   Llegiu la descripció de la missió i reserveu-la si esteu interessats\n  ✓   Vés a la ubicació i segueix les instruccions per completar aquesta missió\n  ✓   Rebreu la paga al vostre compte bancari o compte Paypal.\n\nAcumuleu punts d’experiència: com més alt sigui el vostre nivell, més oportunitats rebreu per reservar missions i guanyar diners en efectiu 📈💹\n\n  QUINS TIPUS DE Missió hi ha?  \n\nAmb BeMyEye, podeu guanyar diners fent diferents tipus de mini treballs:\n\n  ☆   Comproveu la presència de productes, promocions, demostracions de vendes, etc. en una botiga: fes  algunes imatges 📸  i respongui  Unes preguntes  ☑️\n  ☆   Juga el paper de  misteri comprador  🕵️: parla breument amb un venedor i respon a un qüestionari.\n  ☆   Localitzeu un lloc específic col·locant un marcador al mapa 📍🗺️\n  ☆   Feu una enquesta o un test de casa 🏠\n\nBaixeu l\'aplicació per veure totes les mini treballs disponibles al vostre voltant.\n\n  PUBLICACIÓ DE NOVES MISSIONS  \n\n📅 Us recomanem que reserveu els mini treballs que us interessen tan aviat com es publiquen.\n\n🔄 Si no hi ha cap missió disponible a prop teu,  no dubteu a revisar regularment l\'aplicació : les noves missions es publiquen cada dia.\n\n🔔 També us enviem alertes per informar-vos de les darreres missions publicades.\n\n  PAGAMENT  \n\nSense crèdits per desbloquejar, les mini feines que permeten guanyar diners reals directament: el pagament és segur, rebre la paga directament al seu compte bancari o compte de Paypal pal\n\n  CONDICIONS D\'ÚS  \n\n Heu de tenir com a mínim 18 anys per realitzar missions per BeMyEye  🔞\n\nL’aplicació és completament gratuïta i no cal fer cap compra després de la instal·lació: descarregueu BeMyEye, registreu-vos i comenceu a guanyar diners reals ara.\n\n  SUPPORT  \n\nEls nostres equips d’operacions estan disponibles cada dia per ajudar-vos a realitzar les vostres missions i fer diners fàcils. En cas de problemes o per enviar suggeriments i idees, envieu-nos un missatge directament a través del  xat a l\'aplicació  💬, envieu-nos un correu electrònic a support.uk@bemyeye.com 📧 o visiteu les nostres pàgines de Facebook i Twitter.\n\nVoleu trobar llocs de treball fàcils i ràpids per guanyar diners al vostre temps lliure?  Baixeu l’aplicació BeMyEye avui i descobriu les missions disponibles al vostre voltant. \n\nAmb BeMyEye, podeu guanyar diners amb enquestes o qüestionaris, fent algunes fotos a una botiga, jugant el paper de mister shopper, etc.: simples mini treballs que podeu fer amb el vostre telèfon intel·ligent.', 1, 1, '2015-08-10 22:00:00', '2022-02-15 10:31:29', '2022-04-01 15:59:52', '2022-04-01 15:59:52'),
(2, 'Geevv (Acquired by Invo)', 'com.geevv', 'es', 'https://play.google.com/store/apps/details?id=com.geevv', 0.00, 296366, 0.00, 'Des de desembre de 2019, Geevv.com s’ha unit a Invo. Baixeu l\'aplicació Invo a http://bit.do/invoapp', 2, 2, '2016-11-09 23:00:00', '2017-02-09 10:58:01', '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(3, 'Joc de Trencaclosques', 'com.quarterborrowresult.customer', 'es', 'https://play.google.com/store/apps/details?id=com.quarterborrowresult.customer', 4.18, 58226739, 0.00, 'Aquest és el joc de blocs més interessant que heu tingut mai a les mans!\nTé tot l\'encant del joc de trencaclosques: senzill, divertit, atractiu i adequat per a tothom.\nTambé és la manera més divertida d’entrenar el cervell i mantenir la ment aguda!\n\n> Com jugar?\nCol·loca les peces a la taula. Un cop emplenat una línia vertical o horitzontal, desapareixerà, alliberant espai per a peces noves.\nEl joc s’haurà acabat si no hi ha espai per als blocs indicats a sota del tauler.\n\n> Elements destacats\nTambé s\'ha afegit un sistema de rànquing per reptar als teus amics, companys i cercles.\nPodeu gaudir d’aquest joc cerebral en qualsevol moment, a qualsevol lloc i a poca estona.', 3, 3, '2016-09-20 22:00:00', '2022-03-17 07:46:28', '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(4, 'Turnip:Livestream, Watch Party', 'gg.turnip.android', 'es', 'https://play.google.com/store/apps/details?id=gg.turnip.android', 4.00, 6971444, 0.00, 'Turnip és una plataforma comunitària de jocs en directe, xat de veu i jocs en directe.\n\nExecuteu les vostres comunitats de jocs:\nAmb els clubs de Turnip, gestiona les teves comunitats de jocs a Turnip. Reclama les teves sales d\'àudio i xat de Turnip per interactuar amb els teus fans, espectadors, companys d\'equip o amics. Comença a veure festes de pel·lícules, música, clips esportius, vídeos de comèdia, reproduccions en directe o vídeos de YouTube. Convida amics i membres de la comunitat a unir-se. Xateja de veu, envia missatges de text i diverteix-te!\n\nMillor transmissió en directe mòbil:\nCrea reproduccions en directe de jocs de qualitat professional per als teus millors moments de joc directament des del teu telèfon mòbil. És cert, només un telèfon. No necessiteu un Elgato o un ordinador / portàtil o OBS. Transmet tots els teus jocs mòbils com Among Us, Battlegrounds Mobile India BGMI, PUBG Mobile, Call of Duty Mobile CODM, Free Fire, Fortnite, Brawl Stars, Clash of Clans, eFootball, Mobile Legends, Clash Royale, Pokemon GO, Pokemon Unite, GTA , Minecraft, Roblox, Escacs, Skribble, Ludo. a YouTube Live, Facebook Live i Twitch TV, alhora absolutament gratuït! També reprodueix a qualsevol altra plataforma amb la funció de transmissió personalitzada RTMP: Loco, Rooter, Booyah, Trovo i més.\n\nCaracterístiques:\n⭐️ Clubs de joc\nCrea clubs per a les teves comunitats de jocs. Juga a jocs com Among Us, Battlegrounds Mobile India BGMI, PUBG Mobile, Call of Duty Mobile CODM, Free Fire, Fortnite, Brawl Stars, Clash of Clans, eFootball, Mobile Legends, Clash Royale, Pokemon Unite, Minecraft, Roblox, Chess, Skribble , Ludo. o realitzeu esdeveniments per als vostres amics, subscriptors i espectadors. Gaudeix d\'organitzar i participar en festes de visualització de pel·lícules, música, reproduccions en directe o mirant vídeos de YouTube junts. Transmet esdeveniments en directe al teu canal de YouTube, a la pàgina de Facebook o al canal de Twitch des del teu telèfon mòbil i afegeix la teva superposició animada personalitzada a la reproducció.\n\n⭐️ Multi-streaming gratuït\nReprodueix jocs mòbils com Among Us, Battlegrounds Mobile India BGMI, PUBG Mobile, Call of Duty Mobile CODM, Free Fire, Fortnite, Brawl Stars, Clash of Clans, eFootball, Mobile Legends, Clash Royale, Pokemon GO, Pokemon Unite, GTA, Minecraft , Roblox, Escacs, Skribble, Ludo. de manera gratuïta a Youtube Live, Facebook Live i Twitch en directe al mateix temps i augmenta els teus espectadors. Transmet a Loco, Rooter, Booyah, Trovo i amb el streaming RTMP personalitzat.\n\n⭐️ Crea reproduccions en directe d\'alta qualitat\n- Full HD, qualitat de transmissió de 1080p d\'alta resolució (sense filigrana)\n- Transmissió compatible tant en mode horitzontal (horitzontal) com en mode vertical (vertical)\n- Afegiu una càmera frontal a la transmissió en directe mitjançant la càmera frontal\n- Afegiu el número de donació, l\'identificador UPI i els identificadors de xarxes socials al vostre flux. Guanya diners amb donacions.\n- Transmet a qualsevol plataforma amb la funció de transmissió personalitzada RTMP\n- Carregueu miniatures personalitzades\n- Superposicions genials predissenyades, superposicions animades personalitzades per a un aspecte professional.\n- Reconnexió de flux en cas de problemes d\'emmagatzematge en memòria intermèdia/de xarxa\n- Efectes de vídeo en flux com ara adhesius divertits, gifs i efectes visuals\n- Començar una festa de rellotge\n\n⭐️ Experiència de transmissió senzilla i fàcil amb\n- Suggeriments intel·ligents de títols i descripcions per promocionar el vostre flux\n- Dissenyeu fluxos professionals afegint càmeres facials i superposicions animades\n- Xats, subscriptors i alertes de donacions per interactuar amb el vostre públic.\n- So de micròfon de millor qualitat + so del joc (suport d\'àudio intern) + so dels companys per a tots els jocs\n- Xat de veu dins del joc i suport d\'àudio intern\n- Ajust de bitrate. No hi ha retard de flux\n- Transmet en mode vertical / vídeo vertical a YouTube i Facebook\n- I molts més!\n\n⭐️ Grava vídeos de joc amb Screen Recorder\n- Retalla els teus moments preferits mentre jugues/reprodueixes\n- Grava jocs d\'alta qualitat amb una resolució de 1080P HD 60 fps (sense filigrana)\n- So de micròfon de millor qualitat + so del joc (suport d\'àudio intern) + so dels companys d\'equip\n\nViu la següent onada de transmissió de jocs i comunitat al teu mòbil. Reprodueix fàcilment en directe qualsevol joc per a mòbils instal·lat des del teu telèfon i arriba al teu públic. En qualsevol moment. On sigui. Baixeu Turnip ara i comenceu a reproduir!', 4, 4, '2021-01-13 23:00:00', '2022-03-29 15:47:06', '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(5, 'Zoosk - Online Dating App to Meet New People', 'com.zoosk.zoosk', 'es', 'https://play.google.com/store/apps/details?id=com.zoosk.zoosk', 3.76, 38536568, 0.00, 'ZOOSK ÉS L\'APLICACIÓ DE CITES MÉS PRINCIPAL, expliquem per què ...  \nMés de 40 milions de solters a tot el món han confiat en Zoosk per trobar dates en línia o xatejar amb gent nova i crear relacions significatives i ara és el vostre torn!\n\n  GAUDEIX DE LA MILLOR EXPERIÈNCIA DE CITES POSSIBLE, vine a bord!  \n• Busqueu amor, una parella casual o ampliar la vostra xarxa professional? T’hem cobert!\n• Amb Zoosk, tant si sou lesbiana, gai, bisexual o heterosexual, us podem relacionar amb solters locals a prop vostre. La nostra comunitat internacional de més de 3 milions d’usuaris actius us espera.\n\n  PER QUÈ ZOOSK ALTRES APLICACIONS DE CITES EN LÍNIA?  \n• Acabem de llançar la nostra nova funció de reproducció en directe gratuïta: Zoosk Live. Gaudeix de veure i iniciar les reproduccions en directe mundials 24/7, a més de reunir-te i sortir amb altres solters en temps real.\n• Prioritzem les cites segures. La nostra eina de verificació de fotos està instal·lada per proporcionar-vos la confiança que la persona amb qui parleu sembla la seva foto de perfil. Per garantir que els nostres membres siguin qui diuen que són, també proporcionem un número de telèfon i una verificació del compte de xarxes socials.\n• Amb el nostre SmartPick ™ podeu obtenir millors coincidències en funció de la compatibilitat i les preferències. Un cop trobeu algú amb qui vulgueu xatejar, proveu un dels nostres trencaglaços, escriviu un missatge * o fins i tot envieu un regal *.\n\n  LIST. CONJUNT. DATA.  \nJa no us feu lliscar sense sentit: descarregueu l’aplicació de cites Zoosk i prepareu-vos, perquè conèixer algú és a tocar.\n\n  DESCOBREIX LES NOSTRES CARACTERÍSTIQUES GRATUAZTES:  \nTots els membres bàsics poden accedir a aquestes funcions:\n- La nostra nova funció de transmissió en directe gratuïta: Zoosk Live\n- Veure les imatges dels membres\n- Envia l’ullet i els cors\n- Utilitzeu el carrusel per descobrir gent nova\n\n  AMPLIQUEU LES VOSTRES DATES AMB LES NOSTRES CARACTERÍSTIQUES EXCLUSIVES  \nSi esteu disposat a passar a les qüestions serioses, convertiu-vos en subscriptor de Zoosk perquè també pugueu:\n\n• Desbloqueja els partits del carrusel\n• Augmenteu el vostre perfil\n• Envia regals\n• Obteniu la confirmació de lliurament als missatges\n• Xateja amb les teves connexions\n• Desbloqueja i connecta amb persones que t\'han vist\n• Digueu que sí i comenceu a xatejar amb els vostres SmartPicks ™\n\nL\'aplicació de cites Zoosk és d\'ús gratuït. Si decidiu actualitzar o comprar una de les nostres subscripcions, això és el que heu de saber:\n\n• Totes les subscripcions i actualitzacions com les monedes es renoven automàticament tret que cancel·leu com a mínim 24 hores abans que finalitzi el període de subscripció actual sense cap limitació.\n• Desactiveu la renovació automàtica mitjançant la configuració del compte i la vostra subscripció o actualització caducarà al final del seu mandat\n• Per obtenir més informació, llegiu el nostre Acord de condicions d\'ús: http://www.zoosk.com/tos i\n• Consulteu les nostres PMF: http://zoosk.com/help.\n• Consulteu la nostra Política de privadesa: www.zoosk.com/privacy i guia de seguretat de cites en línia a https://www.zoosk.com/safety.\n\n  BUZZ AROUND ZOOSK  \n‘’ El servei de cites ha fet que sigui molt fàcil iniciar un perfil, conèixer altres usuaris i generar una àmplia xarxa per a possibles coincidències. ’’ - Mashable\n\n‘’ Llançat el 2007, Zoosk s’ha convertit en el brindis del món de les cites en línia ’’ - AskMen\n\nVoleu fer la vostra pròpia opinió? Descarregueu l\'aplicació de cites Zoosk ara i gaudiu xatejant amb gent emocionant. Diversió o connexió, l\'amor és aquí!\n\n  Seguiu-nos per obtenir consells sobre cites i relacions:  \n- Facebook: https://www.facebook.com/Zoosk/\n- Instagram: https://www.instagram.com/zoosk/\n- Mescla de dates: https://www.zoosk.com/date-mix/\n\n El vostre de cada milió pot estar més a prop del que us penseu. Descarregueu-vos l\'aplicació de cites Zoosk GRATU andTAMENT i descobriu nous solters a la vostra zona, connecteu-vos amb els vostres partits segons interessos comuns i aneu a una cita.', 5, 5, '2010-10-07 22:00:00', '2022-03-31 19:02:11', '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(6, 'Ooredoo Money', 'qa.ooredoo.omm', 'es', 'https://play.google.com/store/apps/details?id=qa.ooredoo.omm', 5.00, 1061359, 0.00, 'Una forma senzilla, segura i fàcil de mantenir-se connectat amb els seus diners a través de la xarxa Ooredoo. Ooredoo Diners Mòbil (OMM) aplicació és una aplicació gratuïta que ofereix un mitjà convenient d\'enviar diners, comprar temps aire, fer pagaments i gestionar el seu compte de diners. Es pot accedir als dipòsits en efectiu lliures, desar i enviar els seus diners de manera segura i retirar efectiu de qualsevol caixer automàtic QNB. Li oferim una de les millors taxes de canvi amb una quota competitiva, per a l\'enviament de diners a més de 198 països de Qatar.', 6, 6, '2014-11-03 23:00:00', '2022-03-02 07:57:17', '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(7, 'Dice With Buddies™ - The Fun Social Dice Game', 'com.withbuddies.dice.free', 'es', 'https://play.google.com/store/apps/details?id=com.withbuddies.dice.free', 4.30, 10423519, 0.00, '* Dices With Buddies ™ *\n\nDice With Buddies és un divertit i nou gir al teu joc clàssic de daus clàssic preferit. Gaudit per milions de jugadors, podeu jugar a jocs de taula multijugador gratuïts amb la família, els amics o els nous amics. Comparteix la diversió jugant a jocs gratuïts allà on està el teu oponent, ja sigui al teu costat o a milers de quilòmetres de distància. Emprèn els daus amb tots els teus amics en una divertida i nova experiència de joc de taula social.\n\nEls jocs de taula de daus són fàcils i emocionants de jugar! Agafeu els oponents amb nous daus personalitzats, interfície fàcil d’utilitzar, nous modes de joc i emocionants tornejos diaris. Juga a aquest emocionant joc de taula des del mateix compte en qualsevol iPad o iPhone!\n\nCom jugar a daus amb amigues:\n\nA Dice With Buddies, l’objectiu del joc és aconseguir el màxim de punts mitjançant diverses combinacions. Els seus cinc daus es poden enrotllar fins a tres vegades per torn per puntuar en una categoria. Un cop s\'hagi utilitzat una categoria en el joc, no es pot tornar a utilitzar. El joc consta de tretze torns. Et sents afortunat? Feu un llançament de cinc i guanyeu 50 punts. Anoteu més punts que el vostre oponent per guanyar el partit i obtenir recompenses!\n\nAquest joc de daus també ha anomenat Poker Dice, perquè hi ha combinacions divertides com Full House, Three-of-a-Kind, Four-of-a-Kind, Small Straight, Large Straight, tot allò que s’assembla al pòquer.\n\nSi us encanten Yahtzee, Yatzy i Farkle, us encantarà Dice With Buddies! Juga aquest clàssic joc de daus a qualsevol lloc amb els teus amics i familiars i prepara’t per divertir-te.\n\n=== Dats amb els amic Característiques ===\n\nBonificacions per a jocs daus:\n• Finalitzar els jocs a daus per guanyar ratlladors al joc amb l\'oportunitat de guanyar tones de rotlles de daus bonus.\n• Activeu un rotlle de daus addicionals per obtenir un rotlle de daus addicional quan ho necessiteu.\n\nDerrota als amos:\n• Els Dics Masters es reprodueixen a l’instant a Dice With Buddies reinvented aventura en solitari: fes caure els Dices Masters i guanya increïbles daus personalitzats al llarg del camí.\n• Conqueriu desenes de nous nivells amb nous impulsos i obstacles com blocs de gel, multiplicadors voladors i molt més.\n• Participeu a la cursa per aconseguir la competició màxima i guanyant recompenses excel·lents.\n\nParticipa en tornejos multijugador:\n• Els tornejos de daus són un nou i emocionant repte! Solitari Dice, Dice Bingo i Dice Stars són formes completament noves de jugar a aquest clàssic joc. Els tornejos s’executen diàriament!\n• Juga a través de 10 lligues més per guanyar premis emocionants.\n\nJocs socials amb els amics\n• Juga amb els amics i la família. Creeu la vostra família al joc per agrupar el xat i compartir recompenses!\n• Jocs multijugador amb oponents aleatoris: juga a jocs amb daus amb jugadors de tot el món.\n• Xateu, desafieu i favoriteu els vostres amics amb el nou sistema de companys socials.\n\nPersonalitza l\'experiència de rodatge de daus:\n• CÀRREGES DE DOS CLIENTS!\n• MOLTES MARQUES ESPECIALS DEL RETRAT!\n• TONES DE JUNTS DE JOC TEMATS!\n\nEls aficionats als jocs de cartes i a les divertides experiències socials els encantarà els dauets amb els companys! Jocs divertits amb amics esperen a Dice With Buddies! Descarregueu avui i feu rodar els daus!\n\nSi us plau, poseu-vos en contacte amb nosaltres a dicesupport@scopely.com per a preguntes, inquietuds o suggeriments.\n\nPolítica de privacitat:\nhttps://scopely.com/privacy/\n\nInformació addicional, drets i opcions disponibles per als jugadors de Califòrnia: https://scopely.com/privacy/#additionalinfo-california', 7, 7, '2012-03-02 23:00:00', '2022-03-25 18:50:57', '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(8, 'Tennis Clash: Multiplayer Game', 'com.tfgco.games.sports.free.tennis.clash', 'es', 'https://play.google.com/store/apps/details?id=com.tfgco.games.sports.free.tennis.clash', 4.04, 70611284, 0.00, 'Fan of sports video games?? Then here is a great tennis experience on mobile!\n\nTennis Clash is an online, multiplayer tennis game with amazing 3D graphics and intuitive controls, all you have to do to score is to swipe.\n\nDespite the simple controls, the game is anything but casual! High-tier gameplay is deep, engaging and yet hard to master.\n\nTo further improve your game, you can invite your Facebook friends and club peers to practice and discuss the best strategies to become the ultimate Tennis Clash player!\n\nTennis Clash features:\n- Intuitive controls which are easy to learn but hard to master.\n- Arenas with increasingly high stakes, all around the world: New York, Rome, Paris and many others!\n- Collect and upgrade all 10 exclusive characters and 54 special items to improve your skills.\n- Play and interact with your friends in fun, real-time matches.\n- Join a Club to get to meet thousands of other players, accelerate your progress and have private competitions.\n- Enter special tournaments to test your skills against the best!', 8, 8, '2019-10-02 22:00:00', '2022-03-29 16:46:05', '2022-04-01 16:00:00', '2022-04-01 16:00:00'),
(9, 'Feeding Frenzy - Eat Fish', 'com.taobien.feedingfrenzy', 'es', 'https://play.google.com/store/apps/details?id=com.taobien.feedingfrenzy', 0.00, 528974, 0.00, 'Feeding Frenzy - Coma peix (Els peixos s\'alimenten de peix) és una guerra entre molts tipus de peixos, el millor joc de 2016. El seu objectiu és menjar boletes de peix i els peixos més petits per créixer. No toqueu els peixos que són més grans que. I obtenir la màxima potència per completar el nivell.\n\n- Gràfics d\'alta definició\n- Lliure i divertit de jugar.\n- Puntuació més alta.\n- Estil de Feeding Frenzy.\n- 99 nivell Coma els peixos\n- Molts tipus de peixos per Feeding Frenzy.\n\nFeeding Frenzy - Coma peix per a tothom, el joc Feeding Frenzy menjar peix en qualsevol moment.\nBona sort !', 9, 9, '2015-12-30 23:00:00', '2016-01-01 16:16:16', '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(10, 'Clean Simple Eats +', 'com.cleansimpleeats.cseplus', 'es', 'https://play.google.com/store/apps/details?id=com.cleansimpleeats.cseplus', 0.00, 13767, 0.00, 'L’aplicació Clean Simple Eats Android us ajudarà en el vostre viatge cap a una millor salut. Podeu utilitzar-ho per a:\n\n-Veure qualsevol recepta CSE\n-Calcular quant hauria d’estar menjant\n-Planar els àpats cada dia / setmana\n-Exporteu el vostre pla d’àpats a una llista de queviures per fer-vos les compres més fàcils\n-Veure vídeos d’entrenament CSE\n\nEsperem que us agradi l’ús!', 10, 10, '2019-04-11 22:00:00', '2022-03-02 13:35:36', '2022-04-01 16:00:02', '2022-04-01 16:00:02');

-- --------------------------------------------------------

--
-- Estructura de la taula `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_play_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_games_category` tinyint(1) NOT NULL,
  `is_family_category` tinyint(1) NOT NULL,
  `is_application_category` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `categories`
--

INSERT INTO `categories` (`id`, `google_play_id`, `name`, `is_games_category`, `is_family_category`, `is_application_category`, `created_at`, `updated_at`) VALUES
(1, 'LIFESTYLE', 'Estil de vida', 0, 0, 1, '2022-04-01 15:59:51', '2022-04-01 15:59:51'),
(2, 'COMMUNICATION', 'Comunicació', 0, 0, 1, '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(3, 'GAME_STRATEGY', 'Estratègia', 1, 0, 0, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(4, 'ENTERTAINMENT', 'Entreteniment', 0, 0, 1, '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(5, 'DATING', 'Cites', 0, 0, 1, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(6, 'FINANCE', 'Finances', 0, 0, 1, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(7, 'GAME_BOARD', 'Jocs de taula', 1, 0, 0, '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(8, 'GAME_SPORTS', 'Esports', 1, 0, 0, '2022-04-01 15:59:59', '2022-04-01 15:59:59'),
(9, 'GAME_ADVENTURE', 'Aventura', 1, 0, 0, '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(10, 'HEALTH_AND_FITNESS', 'Salut i fitnes', 0, 0, 1, '2022-04-01 16:00:02', '2022-04-01 16:00:02');

-- --------------------------------------------------------

--
-- Estructura de la taula `developers`
--

CREATE TABLE `developers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_play_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `developers`
--

INSERT INTO `developers` (`id`, `name`, `google_play_id`, `url`, `website`, `created_at`, `updated_at`) VALUES
(1, 'BeMyEye - Earn Money', 'BeMyEye - Earn Money', 'https://play.google.com/store/apps/developer?id=BeMyEye+-+Earn+Money', 'https://www.bemyeye.com', '2022-04-01 15:59:52', '2022-04-01 15:59:52'),
(2, 'Varbs Digital, Inc.', 'Varbs Digital, Inc.', 'https://play.google.com/store/apps/developer?id=Varbs+Digital,+Inc.', 'https://www.geevv.com/', '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(3, 'Mahjong solitaire mahjongg', 'Mahjong solitaire mahjongg', 'https://play.google.com/store/apps/developer?id=Mahjong+solitaire+mahjongg', 'http://blockpuzzlegame.net/', '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(4, 'Turnip Media', 'Turnip Media', 'https://play.google.com/store/apps/developer?id=Turnip+Media', 'https://turnip.gg', '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(5, 'Zoosk Inc.', 'Zoosk Inc.', 'https://play.google.com/store/apps/developer?id=Zoosk+Inc.', 'https://www.zoosk.com', '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(6, 'Ooredoo Qatar', '5559148754152872963', 'https://play.google.com/store/apps/dev?id=5559148754152872963', 'http://www.ooredoo.qa/en/omm', '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(7, 'Scopely', '9028773071151690823', 'https://play.google.com/store/apps/dev?id=9028773071151690823', 'http://www.scopely.com', '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(8, 'Wildlife Studios', '7486557340409834297', 'https://play.google.com/store/apps/dev?id=7486557340409834297', 'https://www.wildlifestudios.com/', '2022-04-01 15:59:59', '2022-04-01 15:59:59'),
(9, 'TL Entertainment', 'TL Entertainment', 'https://play.google.com/store/apps/developer?id=TL+Entertainment', 'http://nguyentienbao.com', '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(10, 'Clean Simple Eats, Inc', 'Clean Simple Eats, Inc', 'https://play.google.com/store/apps/developer?id=Clean+Simple+Eats,+Inc', 'http://www.cleansimpleeats.com', '2022-04-01 16:00:02', '2022-04-01 16:00:02');

-- --------------------------------------------------------

--
-- Estructura de la taula `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataInstalls` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `histories`
--

INSERT INTO `histories` (`id`, `package`, `dataInstalls`, `created_at`, `updated_at`) VALUES
(1, 'com.bemyeye.app', '{\"01-04-2022\": 2959998}', '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(2, 'com.geevv', '{\"01-04-2022\": 296366}', '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(3, 'com.quarterborrowresult.customer', '{\"01-04-2022\": 58226739}', '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(4, 'gg.turnip.android', '{\"01-04-2022\": 6971444}', '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(5, 'com.zoosk.zoosk', '{\"01-04-2022\": 38536568}', '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(6, 'qa.ooredoo.omm', '{\"01-04-2022\": 1061359}', '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(7, 'com.withbuddies.dice.free', '{\"01-04-2022\": 10423519}', '2022-04-01 15:59:59', '2022-04-01 15:59:59'),
(8, 'com.tfgco.games.sports.free.tennis.clash', '{\"01-04-2022\": 70611284}', '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(9, 'com.taobien.feedingfrenzy', '{\"01-04-2022\": 528974}', '2022-04-01 16:00:02', '2022-04-01 16:00:02'),
(10, 'com.cleansimpleeats.cseplus', '{\"01-04-2022\": 13767}', '2022-04-01 16:00:03', '2022-04-01 16:00:03');

-- --------------------------------------------------------

--
-- Estructura de la taula `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `images`
--

INSERT INTO `images` (`id`, `url`, `app_id`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 'https://play-lh.googleusercontent.com/s3BPwFVEA1vKqppcp-iLxMYGleUGPnlNgPL93kHm36G7rF31OZZk4nizqJD7X9HNfQ', 1, 1, '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(2, 'https://play-lh.googleusercontent.com/632qPtJQ8zXS8Pubt2RFYNk-ab_D2UsESJWcqAAzi44yx1efTgAHPqp3_o-TrhUR_syC', 1, 2, '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(3, 'https://play-lh.googleusercontent.com/9OBE0tQD30gWaAvSLxuuEr9o3rWuj8-oXO45WxRNB5SDxfjUXwZXx2PuqMa16-dcaUI', 1, 3, '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(4, 'https://play-lh.googleusercontent.com/B1CNsg0DEMbrKRvJigcEWeMD6Oy-xo-WxJuxFUGTIeRe8Rt3i-T2tlbKh46VleQWVAs', 2, 1, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(5, 'https://play-lh.googleusercontent.com/mDytSVG2dt94rLIv4Q0JuVDvhxFZskcicXf7_AMKQQifp5dJ54HfK6htpWWiKP3HYw', 2, 2, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(6, 'https://play-lh.googleusercontent.com/DPjP_yJ-s08G5J2Io9vTFdM2TbQdgrqxZ0-sPJ3i6pJ0OceYjWDgpn8caBj891FTpAA', 2, 3, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(7, 'https://play-lh.googleusercontent.com/u3frcutB3NcfoTyrVg_pGcJmrw4YX_QW4plJ6Uu3u-RnAKc-HbTluLKh6rQve2bT3Uk', 3, 1, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(8, 'https://play-lh.googleusercontent.com/zlE2yMNa7b3xUzDHBU9nAnYvL1o8PIH_5SHcqOb_Rg2S0bmb-a2-VqfPwmCXRv6qwg', 3, 2, '2022-04-01 15:59:55', '2022-04-01 15:59:55'),
(9, 'https://play-lh.googleusercontent.com/3qJMIkpiY6KJyjHVvVaZYgWdMYBYGszNOA-ggxYmkESeW8UJTNNHwm8WimZLleZ6pw8', 3, 3, '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(10, 'https://play-lh.googleusercontent.com/4UiBvTD3kvFmGSovxnixPnRpkwhOdEdoi36FOzessrPaKwLupd-bikzbm6C7EGk6sbA', 4, 1, '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(11, 'https://play-lh.googleusercontent.com/RHDsovGNQjmghWgVNGJsgF47zwtbqpmZTpHv67_-_sYgVjCscix6LYpB1lfroS1YoA', 4, 2, '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(12, 'https://play-lh.googleusercontent.com/Eabx3kmFA9Klgj7JVYadfejJMXHnF_tlJa9dFr2LRAfpkST9o-ol0T_Fx6UPSLPdU1l0', 4, 3, '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(13, 'https://play-lh.googleusercontent.com/TpVzmU03srx9M2QvK79d3tc2p274fb99ATMLznn_Vea5cR9T31MYnXjB0KQE-CzKT8bE', 5, 1, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(14, 'https://play-lh.googleusercontent.com/0tkZX-HI-xc7h__SWNysgTGEUYK_4jFeSEJFLdATpW1OXmR58491l978GZdcdD6hA2U', 5, 2, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(15, 'https://play-lh.googleusercontent.com/erENgVkLcuRlfSZoXtOcIUS9mv7GB7C9S0J3gnOO0T9eLp82JH9EnAVCd5a01FPMYsU', 5, 3, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(16, 'https://play-lh.googleusercontent.com/_37ZFX-T-nmeeGFv_hJEqnQyhAvHqqVQBurDnPsXqjWEc3znNuOYTDh96q-tD5F8TvhJ', 6, 1, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(17, 'https://play-lh.googleusercontent.com/5vqy8D4Zv8T50RgGeCfpecsdNNZooJuNQKlkx1qxg0abRHrZ4NW99bMw3BES9rXveTs', 6, 2, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(18, 'https://play-lh.googleusercontent.com/J7TzgqwPc17XKDZeMVgCzNNiYaw5hF7uhEDFW63HAno_h7N6OrdWPV2SVwM9kPr0JLXE', 6, 3, '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(19, 'https://play-lh.googleusercontent.com/a4_pL_SgeQpUH215kMtS2hZgLU7TQfnrGn4lkOd8cR0q8gBXDg_PZ6as9Vu9u9J7fehb', 7, 1, '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(20, 'https://play-lh.googleusercontent.com/N9WcgnQ30KbLehfQ7JWHnN5iOXSGEeDkNAhMU08m01hUUwmhti3EFFROcEaxw4-zyw', 7, 2, '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(21, 'https://play-lh.googleusercontent.com/jDjSNlwBLpnhu0WdfDUwXqjCwpn-IX3Xho5UClQw4fEmwpLSmgGD1KoONdgRyTqDkBw', 7, 3, '2022-04-01 15:59:58', '2022-04-01 15:59:59'),
(22, 'https://play-lh.googleusercontent.com/JCgAs2jj_5af-mI-UWlR-cpW1UVaoBxFSzaMjvdmHXEwMSYqJeBQYi7G6GpYT66B_-E', 8, 1, '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(23, 'https://play-lh.googleusercontent.com/5ZvF6sfrtZSP_GKN6P6WHV0oiCdjqPI2tXd2Ka5AXPqC5LQeEGSeO5BSCmiEwW3fLyi_', 8, 2, '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(24, 'https://play-lh.googleusercontent.com/C-tIuCRg-jEk-p8pn89wiIRxwoMnzqYXMl_36tXwPkhuLTM2jygiTIiIevmUo36XP6kt', 8, 3, '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(25, 'https://play-lh.googleusercontent.com/gI9NFTkFEivZTg6lfEQ95C-Tr9g7w_xWUMDzgUk6TWWkMuvYVU_TXXDqhiPHtsVunVM', 9, 1, '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(26, 'https://play-lh.googleusercontent.com/fh0k6jVMStlkfrZwkDDrsn_OB6T19acXS427jODKfMEdZg-n4W3F_fmsuMxblI3q2g', 9, 2, '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(27, 'https://play-lh.googleusercontent.com/lFQ7yDBBMdkSLc7mteIj_nrbTO7zBUlPLVkEwEug8YK7Q3ERCZNF2JQB3A1xLfUAY9I', 9, 3, '2022-04-01 16:00:01', '2022-04-01 16:00:02'),
(28, 'https://play-lh.googleusercontent.com/3IWx8ohMT5pTN0M0boRhg4uj2JO4Pj0J7Az-OmuFxcFk09dAazJNQusi-OLSFxgKE24', 10, 1, '2022-04-01 16:00:02', '2022-04-01 16:00:02'),
(29, 'https://play-lh.googleusercontent.com/gT7OFgGIev-PdBMs-TKKsx3VUawknXZFmjzwYG0N67wYbnsXfU-icMvXr7bq0cvACUkP', 10, 2, '2022-04-01 16:00:02', '2022-04-01 16:00:02'),
(30, 'https://play-lh.googleusercontent.com/QogukNQZC9vfe01vLjd9c0lgEYppueEDHwHYP3YbYz7lJoOJQ8uEoUH4VyqXrwEW2k3R', 10, 3, '2022-04-01 16:00:02', '2022-04-01 16:00:03');

-- --------------------------------------------------------

--
-- Estructura de la taula `image_types`
--

CREATE TABLE `image_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `image_types`
--

INSERT INTO `image_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Icon', NULL, NULL),
(2, 'Cover', NULL, NULL),
(3, 'Screenshot', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de la taula `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_11_181034_create_sessions_table', 1),
(7, '2022_03_11_181927_create_packages_table', 1),
(8, '2022_03_22_151246_create_categories_table', 1),
(9, '2022_03_22_164635_create_developers_table', 1),
(10, '2022_03_22_165429_create_apps_table', 1),
(11, '2022_03_22_169151_create_image_types_table', 1),
(12, '2022_03_22_170618_create_images_table', 1),
(13, '2022_03_22_172054_create_ratings_table', 1),
(14, '2022_03_22_172330_create_videos_table', 1),
(15, '2022_03_25_165648_create_histories_table', 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package` text COLLATE utf8mb4_unicode_ci,
  `app_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `packages`
--

INSERT INTO `packages` (`id`, `package`, `app_url`, `created_at`, `updated_at`) VALUES
(996, NULL, 'ru.ok.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(997, NULL, 'com.selfawaregames.acecasino', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(998, NULL, 'com.web_view_mohammed.ad.webview_app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(999, NULL, 'com.lomotif.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1000, NULL, 'me.unfollowers.droid', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1001, NULL, 'com.tcm.gogoal', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1002, NULL, 'com.purpleteal.tweakandeat', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1003, NULL, 'com.bg.socialcardmaker', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1004, NULL, 'com.smokoko.careatscar4', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1005, NULL, 'com.keek', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1006, NULL, 'org.buffer.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1007, NULL, 'com.givvysocial', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1008, NULL, 'com.fooducate.nutritionapp', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1009, NULL, 'com.zappcues.gamingmode', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1010, NULL, 'io.starnetwork.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1011, NULL, 'com.allapps.allinone.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1012, NULL, 'com.zynga.wizardofoz', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1013, NULL, 'com.plantoeat.mobile', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1014, NULL, 'com.sopt.mafia42.client', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1015, NULL, 'au.com.liven.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1016, NULL, 'com.ghive.jeep.parking.car.free.game.master.apps', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1017, NULL, 'messenger.chat.social.messenger.lite', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1018, NULL, 'com.crowscrowscrows.EAT', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1019, NULL, 'com.social.detective', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1020, NULL, 'com.netboom.cloudgaming.vortex_stadia_shadow_GeForce', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1021, NULL, 'com.justunfollow.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1022, NULL, 'com.givvy', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1023, NULL, 'com.justeat.app.dk', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1024, NULL, 'com.bemyeye.app', '2022-03-21 23:00:00', '2022-04-01 15:59:53'),
(1025, NULL, 'com.quarterborrowresult.customer', '2022-03-21 23:00:00', '2022-04-01 15:59:56'),
(1026, NULL, 'com.zoosk.zoosk', '2022-03-21 23:00:00', '2022-04-01 15:59:57'),
(1027, NULL, 'com.withbuddies.dice.free', '2022-03-21 23:00:00', '2022-04-01 15:59:59'),
(1028, NULL, 'com.taobien.feedingfrenzy', '2022-03-21 23:00:00', '2022-04-01 16:00:02'),
(1029, NULL, 'com.kwai.video', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1030, NULL, 'com.SpaceInch.LoveOfMoney', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1031, NULL, 'com.water.balls', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1032, NULL, 'in.flyereats.clients', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1033, NULL, 'town.pony.game', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1034, NULL, 'com.wemesh.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1035, NULL, 'com.cocoplay.outfit.day', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1036, NULL, 'tv.fubo.mobile', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1037, NULL, 'online.cashyy.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1038, NULL, 'app.nl.socialdeal', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1039, NULL, 'vn.icheck.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1040, NULL, 'com.analog.clock.digital.clocks.wallpaper.livewallpaper.fourkwallpaper.nighttime.nightwatch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1041, NULL, 'com.slimfitgames.snakevsblock', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1042, NULL, 'com.naturalmotion.customstreetracer2', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1043, NULL, 'com.globe.gcash.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1044, NULL, 'fr.thema.wear.watch.feisar', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1045, NULL, 'ro.eatntrack.eatntrack', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1046, NULL, 'com.threesixteen.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1047, NULL, 'com.ashabe.www', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1048, NULL, 'co.triller.droid', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1049, NULL, 'com.easybrain.brain.test.easy.game', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1050, NULL, 'com.benoitletondor.pixelminimalwatchface', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1051, NULL, 'com.money.run.hypercasual3d', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1052, NULL, 'masood.mz.insatel', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1053, NULL, 'com.madfingergames.unkilled', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1054, NULL, 'com.coolapps.facebookpostmaker', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1055, NULL, 'com.catbag.whatsappvideosdownload', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1056, NULL, 'com.uber.restaurants', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1057, NULL, 'com.gspl.gamer', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1058, NULL, 'za.co.nedbank', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1059, NULL, 'com.disney.datg.videoplatforms.android.watchdxd', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1060, NULL, 'us.current.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1061, NULL, 'com.westernunion.moneytransferr3app.eu', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1062, NULL, 'com.fbs.ctand', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1063, NULL, 'com.easybrain.block.puzzle.games', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1064, NULL, 'com.yahoo.mobile.client.android.sportacular', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1065, NULL, 'com.etoro.openbook', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1066, NULL, 'at.dieschmiede.eatsmarter', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1067, NULL, 'silver.luxury.watch.wallpaper.live.keyboard', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1068, NULL, 'com.tvtwo.highest.paying.cash.app.make.money.surveys.rewards.free.income', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1069, NULL, 'online.moneyrawr.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1070, NULL, 'com.lumaticsoft.watchdroidphone', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1071, NULL, 'com.easybrain.jigsaw.puzzles', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1072, NULL, 'air.com.vudu.air.DownloaderTablet', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1073, NULL, 'com.ubercab.eats', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1074, NULL, 'com.disney.frozensaga_goo', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1075, NULL, 'com.game.whale.lucky.cash', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1076, NULL, 'io.friendly', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1077, NULL, 'com.remitly.androidapp', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1078, NULL, 'com.wave.personal', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1079, NULL, 'com.tvf.tvfplay', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1080, NULL, 'com.fishMobile.EatFruitLink', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1081, NULL, 'com.binteraktive.kniffel.live', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1082, NULL, 'com.socialmedia.socialmediapostmaker', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1083, NULL, 'com.burakgon.gamebooster3', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1084, NULL, 'com.hornet.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1085, NULL, 'com.westernunion.android.mtapp', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1086, NULL, 'co.pamobile.gamelauncher', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1087, NULL, 'com.kooapps.watchxpetandroid', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1088, NULL, 'com.biglime.cookingmadness', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1089, NULL, 'com.oprah.owntve', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1090, NULL, 'com.justeat.app.uk', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1091, NULL, 'com.eat.ch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1092, NULL, 'net.bitburst.pollpay', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1093, NULL, 'com.bambuser.sociallive', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1094, NULL, 'com.pop.cut.fruits', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1095, NULL, 'com.aetn.lifetime.watch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1096, NULL, 'com.claritasmindsciences.EatRightNowCommercial', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1097, NULL, 'com.poly.live', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1098, NULL, 'com.hungerrush.eatatoasis', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1099, NULL, 'com.sillens.shapeupclub', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1100, NULL, 'com.jeremysteckling.facerrel', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1101, NULL, 'se.ace.fishinc', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1102, NULL, 'it.papalillo.moviestowatch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1103, NULL, 'com.hidea.cat', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1104, NULL, 'com.winrgames.bigtime', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1105, NULL, 'com.video.downloader.facebook.download.instagram.downloader', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1106, NULL, 'com.fungames.sniper3d', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1107, NULL, 'com.ionicframework.scan_eat', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1108, NULL, 'com.real.cashapp.make.money.playing.games.earn.cash.rewards.paid.surveys', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1109, NULL, 'video.downloader.hdvideodownloader.storysaver', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1110, NULL, 'com.amar.socialmedianetwork', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1111, NULL, 'ru.innim.my_finance', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1112, NULL, 'com.apposter.watchmaker', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1113, NULL, 'com.gameloft.android.ANMP.GloftDMHM', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1114, NULL, 'com.bbtv.krew', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1115, NULL, 'live.video.shopping.simsim', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1116, NULL, 'com.supermoof.maneatsfish', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1117, NULL, 'com.fungames.blockcraft', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1118, NULL, 'com.hgtv.watcher', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1119, NULL, 'com.worldremit.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1120, NULL, 'com.diamondlife.slots.vegas.free', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1121, NULL, 'se.maginteractive.wordzee', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1122, NULL, 'com.initial.hungribles.pkx.game', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1123, NULL, 'com.taro.chat', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1124, NULL, 'in.golbol.share', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1125, NULL, 'com.WatchMoviesOnline', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1126, NULL, 'scratch.lucky.money.free.real.big.win', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1127, NULL, 'com.gpshopper.moneygram', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1128, NULL, 'com.google.android.play.games', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1129, NULL, 'com.gameloft.android.ANMP.GloftFWHM', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1130, NULL, 'com.givvysocial', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1131, NULL, 'com.Imagikraft.MnstreatsCity', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1132, NULL, 'com.boxeelab.healthlete.bpwatch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1133, NULL, 'com.justeat.app.es', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1134, NULL, 'com.clock.speakingclock.watchapp', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1135, NULL, 'com.nordcurrent.Games101', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1136, NULL, 'com.facily', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1137, NULL, 'com.asus.zencircle', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1138, NULL, 'com.Tanzapp.EatBTS', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1139, NULL, 'com.mobills.fiftytwoweeks', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1140, NULL, 'com.eastsidegames.trailerparkboys', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1141, NULL, 'slide.watchFrenzy', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1142, NULL, 'com.zynga.livepoker', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1143, NULL, 'com.make.money.now.big.cash.reward.app.paid.surveys.earn.money.mini.job', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1144, NULL, 'com.swagbuckstvmobile.views', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1145, NULL, 'tv.twitch.android.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1146, NULL, 'com.playtika.wsop.gp', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1147, NULL, 'com.tvtwo', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1148, NULL, 'com.glazeek.creaturio', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1149, NULL, 'com.justeat.app.ie', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1150, NULL, 'com.dinamicassociales', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1151, NULL, 'com.qian.eatFruit', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1152, NULL, 'pelisflix.peliculas.gratis', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1153, NULL, 'com.dana.gaib.ga.ib', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1154, NULL, 'com.whizdm.moneyview.loans', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1155, NULL, 'com.mnhaami.pasaj', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1156, NULL, 'com.rur', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1157, NULL, 'com.animelab.android.handset', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1158, NULL, 'jp.naver.SJLGPP', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1159, NULL, 'com.melesta.coffeeshop', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1160, NULL, 'com.SpilGames.CarEatsCar', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1161, NULL, 'com.os.airforce', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1162, NULL, 'torrent.safe.watch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1163, NULL, 'com.cash_max.freemoney.cashapp', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1164, NULL, 'com.imoo.watch.global', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1165, NULL, 'de.nebenan.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1166, NULL, 'com.xoom.android.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1167, NULL, 'com.gonline.AppBravoCasino', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1168, NULL, 'reward.fox.free.recharge.cash.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1169, NULL, 'com.alamesacuba.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1170, NULL, 'com.winrgames.solitaire', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1171, NULL, 'com.two31play.mahjongcity', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1172, NULL, 'es.myrealfood.myrealfood', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1173, NULL, 'com.strategygame.gameofwarriors', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1174, NULL, 'com.epix.epix.now', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1175, NULL, 'com.aetn.history.watch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1176, NULL, 'fi.seehowyoueat.shye', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1177, NULL, 'com.dopuz.klotski.riddle', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1178, NULL, 'com.facebook.games', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1179, NULL, 'online.moneywell.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1180, NULL, 'com.lucky.sweepstakes.match.cash.paypal.win', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1181, NULL, 'com.ripl.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1182, NULL, 'lea87crzz.tu.secreto', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1183, NULL, 'com.nordcurrent.canteenhd', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1184, NULL, 'air.com.spicerackmedia.bingoshowdown', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1185, NULL, 'com.coupang.mobile.eats', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1186, NULL, 'app.eattherainbow.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1187, NULL, 'com.dankolab.bablometnew', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1188, NULL, 'com.tencent.qqlivei18n.tw', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1189, NULL, 'com.MelsoftGames.FamilyIslandFarm', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1190, NULL, 'com.bongo.bongobd', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1191, NULL, 'com.swipegame.season', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1192, NULL, 'com.bigcash.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1193, NULL, 'com.bancocajasocial.geolocation', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1194, NULL, 'com.rewardy.rewardy', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1195, NULL, 'com.topfreegames.bikeracefreeworld', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1196, NULL, 'com.playtika.caesarscasino', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1197, NULL, 'com.foxsports.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1198, NULL, 'org.extremesolution.nogoumfm', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1199, NULL, 'net.makerlabs.birthday_cake_party', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1200, NULL, 'com.funtap.io.gamebox', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1201, NULL, 'com.justeat.app.it', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1202, NULL, 'se.maginteractive.wordbrain', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1203, NULL, 'com.alegrium.cong2', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1204, NULL, 'com.nbs.useetv', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1205, NULL, 'com.paytmmoney', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1206, NULL, 'free.download.allvideodownloader.privatebrowser', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1207, NULL, 'com.smartspends', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1208, NULL, 'com.sparkistic.photowear', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1209, NULL, 'com.smokoko.careatscar3', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1210, NULL, 'com.braindom2riddle', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1211, NULL, 'com.wb.goog.mkx', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1212, NULL, 'com.watchit.vod', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1213, NULL, 'com.animocabrands.google.EatThemAll', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1214, NULL, 'com.premise.android.prod', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1215, NULL, 'com.fox.now', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1216, NULL, 'com.leolegaltechapps.translate', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1217, NULL, 'com.realbyteapps.moneymanagerfree', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1218, NULL, 'com.mozaic.www.eatdelivery', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1219, NULL, 'com.yy.hiyo', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1220, NULL, 'com.mediagrowth.watch.movies.free.online', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1221, NULL, 'com.InkosGames.HoleIn', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1222, NULL, 'com.ludia.jurassicworld', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1223, NULL, 'com.aetn.aetv.watch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1224, NULL, 'com.fulldive.mobile', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1225, NULL, 'org.goodwall.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1226, NULL, 'com.cg.moneybuster', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1227, NULL, 'com.ea.watchface.pvzzombie', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1228, NULL, 'com.mobiroller.mobi733336369836', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1229, NULL, 'com.cashpiggy.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1230, NULL, 'com.pujie.wristwear.pujieblack', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1231, NULL, 'com.mobilityware.spider', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1232, NULL, 'com.cocktail.BananaEats', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1233, NULL, 'com.recoveryrecord', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1234, NULL, 'com.framy.placey', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1235, NULL, 'air.com.playtika.slotomania', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1236, NULL, 'com.asg.shoothunter3d.modern.army.assassian.free', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1237, NULL, 'co.vero.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1238, NULL, 'com.moregames.makemoney', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1239, NULL, 'com.gg.oceanking', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1240, NULL, 'com.gsn.android.tripeaks', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1241, NULL, 'com.samsung.android.gearrplugin', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1242, NULL, 'com.SidtechStudios.LuckyCube2', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1243, NULL, 'com.surfcityapps.mindfuleating', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1244, NULL, 'com.kflixhdmovies.kflixfreehdmovies', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1245, NULL, 'com.vng.g6.a.zombie', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1246, NULL, 'com.hdmoviesfree.watchfreemovies.freemovies', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1247, NULL, 'com.ria.moneytransfer', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1248, NULL, 'tw.gov.cdc.exposurenotifications', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1249, NULL, 'com.braindom', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1250, NULL, 'br.com.tapps.moneytree', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1251, NULL, 'com.gameloft.android.ANMP.GloftA8HM', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1252, NULL, 'com.nazo.snitch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1253, NULL, 'com.dhstudio.fisheatfish', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1254, NULL, 'fr.thema.wear.watch.oxyde', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1255, NULL, 'com.samsung.android.samsungpay.gear', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1256, NULL, 'com.wixot.coinroll', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1257, NULL, 'com.free.video.downloader.fbdownloader', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1258, NULL, 'com.playgendary.partymasters', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1259, NULL, 'com.eureka.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1260, NULL, 'com.eatthismuch', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1261, NULL, 'com.gameCenter.eatFruit2', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1262, NULL, 'net.hubalek.android.apps.atomic_clock_watch_accuracy_tool', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1263, NULL, 'com.gameeapp.android.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1264, NULL, 'com.pokkt.app.pocketmoney', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1265, NULL, 'com.disney.disneylife_goo', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1266, NULL, 'com.desygner.socialposts', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1267, NULL, 'com.xmonetize.quizzland', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1268, NULL, 'com.bplus.vtpay', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1269, NULL, 'com.brighterbite.brighterbite', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1270, NULL, 'com.spilgames.CarEatsCar2', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1271, NULL, 'com.ohbibi.fps', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1272, NULL, 'social.tsu.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1273, NULL, 'com.bookmark.money', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1274, NULL, 'com.bet.shows', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1275, NULL, 'com.prestoeat', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1276, NULL, 'com.overseasolutions.ieatwell.app', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1277, NULL, 'com.estoty.game2048', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1278, NULL, 'paint.by.number.pixel.art.coloring.drawing.puzzle', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1279, NULL, 'mm.com.wavemoney.wavepay', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1280, NULL, 'com.geevv', '2022-03-21 23:00:00', '2022-04-01 15:59:54'),
(1281, NULL, 'gg.turnip.android', '2022-03-21 23:00:00', '2022-04-01 15:59:57'),
(1282, NULL, 'qa.ooredoo.omm', '2022-03-21 23:00:00', '2022-04-01 15:59:58'),
(1283, NULL, 'com.tfgco.games.sports.free.tennis.clash', '2022-03-21 23:00:00', '2022-04-01 16:00:01'),
(1284, NULL, 'com.cleansimpleeats.cseplus', '2022-03-21 23:00:00', '2022-04-01 16:00:03'),
(1285, NULL, 'com.dc.hwsj', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1286, NULL, 'com.ouwi.eattheline', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1287, NULL, 'com.samsung.android.geargplugin', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1288, NULL, 'com.chill2softs.videosocialdownloader', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1289, NULL, 'com.miniclip.carrom', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1290, NULL, 'com.uber.restaurantmanager', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1291, NULL, 'com.justeat.app.fr', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1292, NULL, 'com.mytona.cookingdiary.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1293, NULL, 'me.vyng.android', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1294, NULL, 'com.brunswickbowling.sync.passport', '2022-03-21 23:00:00', '2022-03-21 23:00:00'),
(1295, NULL, 'com.madfingergames.deadtrigger2', '2022-03-21 23:00:00', '2022-03-21 23:00:00');

-- --------------------------------------------------------

--
-- Estructura de la taula `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `five_stars` int(11) NOT NULL,
  `four_stars` int(11) NOT NULL,
  `three_stars` int(11) NOT NULL,
  `two_stars` int(11) NOT NULL,
  `one_star` int(11) NOT NULL,
  `app_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `ratings`
--

INSERT INTO `ratings` (`id`, `five_stars`, `four_stars`, `three_stars`, `two_stars`, `one_star`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 23756, 1810, 793, 589, 6284, 1, '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(2, 0, 0, 0, 0, 0, 2, '2022-04-01 15:59:53', '2022-04-01 15:59:53'),
(3, 143453, 56998, 24020, 9759, 17781, 3, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(4, 17472, 8736, 1747, 0, 5241, 4, '2022-04-01 15:59:56', '2022-04-01 15:59:56'),
(5, 327667, 85202, 55009, 23851, 125092, 5, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(6, 41289, 0, 0, 0, 0, 6, '2022-04-01 15:59:57', '2022-04-01 15:59:57'),
(7, 122554, 30024, 20744, 0, 15012, 7, '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(8, 846000, 181324, 95126, 44743, 200221, 8, '2022-04-01 16:00:00', '2022-04-01 16:00:00'),
(9, 0, 0, 0, 0, 0, 9, '2022-04-01 16:00:01', '2022-04-01 16:00:01'),
(10, 0, 0, 0, 0, 0, 10, '2022-04-01 16:00:02', '2022-04-01 16:00:02');

-- --------------------------------------------------------

--
-- Estructura de la taula `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6NqTI443JR1OEpIXzO1TM8zpA3Nmsy9s7zsZz8qT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFkxbzE5alRnSjNSUDRoaHFBVVZnM24yUW83MVFFNVZJdUVBRWl6byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9nb29nbGVwbGF5LnRlc3QvZ2V0X2FwcF9pbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1648836003);

-- --------------------------------------------------------

--
-- Estructura de la taula `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `videos`
--

INSERT INTO `videos` (`id`, `url`, `image_url`, `youtube_id`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/R3eT0I2650I?ps=play&vq=large&rel=0&autohide=1&showinfo=0', 'https://play-lh.googleusercontent.com/mDytSVG2dt94rLIv4Q0JuVDvhxFZskcicXf7_AMKQQifp5dJ54HfK6htpWWiKP3HYw', 'R3eT0I2650I', 2, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(2, 'https://www.youtube.com/embed/3RJTxL7rqz0?ps=play&vq=large&rel=0&autohide=1&showinfo=0', 'https://play-lh.googleusercontent.com/zlE2yMNa7b3xUzDHBU9nAnYvL1o8PIH_5SHcqOb_Rg2S0bmb-a2-VqfPwmCXRv6qwg', '3RJTxL7rqz0', 3, '2022-04-01 15:59:54', '2022-04-01 15:59:54'),
(3, 'https://www.youtube.com/embed/Xw7UlBCDdNA?ps=play&vq=large&rel=0&autohide=1&showinfo=0', 'https://play-lh.googleusercontent.com/N9WcgnQ30KbLehfQ7JWHnN5iOXSGEeDkNAhMU08m01hUUwmhti3EFFROcEaxw4-zyw', 'Xw7UlBCDdNA', 7, '2022-04-01 15:59:58', '2022-04-01 15:59:58'),
(4, 'https://www.youtube.com/embed/H43S_MitpF8?ps=play&vq=large&rel=0&autohide=1&showinfo=0', 'https://play-lh.googleusercontent.com/5ZvF6sfrtZSP_GKN6P6WHV0oiCdjqPI2tXd2Ka5AXPqC5LQeEGSeO5BSCmiEwW3fLyi_', 'H43S_MitpF8', 8, '2022-04-01 16:00:01', '2022-04-01 16:00:01');

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apps_developer_id_foreign` (`developer_id`),
  ADD KEY `apps_category_id_foreign` (`category_id`);

--
-- Índexs per a la taula `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índexs per a la taula `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_package_index` (`package`);

--
-- Índexs per a la taula `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_app_id_foreign` (`app_id`),
  ADD KEY `images_type_id_foreign` (`type_id`);

--
-- Índexs per a la taula `image_types`
--
ALTER TABLE `image_types`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índexs per a la taula `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índexs per a la taula `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_app_id_foreign` (`app_id`);

--
-- Índexs per a la taula `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índexs per a la taula `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índexs per a la taula `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_app_id_foreign` (`app_id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `developers`
--
ALTER TABLE `developers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la taula `image_types`
--
ALTER TABLE `image_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la taula `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1296;

--
-- AUTO_INCREMENT per la taula `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `apps`
--
ALTER TABLE `apps`
  ADD CONSTRAINT `apps_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `apps_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Restriccions per a la taula `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `images_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `image_types` (`id`) ON DELETE CASCADE;

--
-- Restriccions per a la taula `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`);

--
-- Restriccions per a la taula `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
