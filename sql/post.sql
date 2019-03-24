DROP TABLE IF EXISTS "post";
CREATE TABLE post (
	id INTEGER NOT NULL, 
	title VARCHAR(100) NOT NULL, 
	date_posted DATETIME NOT NULL, 
	content TEXT NOT NULL, 
	user_id INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id)
);

INSERT INTO "post" ("id", "title", "date_posted", "content", "user_id") VALUES ('2', '2009', '2019-02-19 22:22:10.019671', 'Everyday I wake up and breathe

It''s something I''m thankful for everyday', '5'),
('3', 'Smile', '2019-02-19 22:23:07.088861', 'It''s free.', '4'),
('4', 'It''s always been you', '2019-03-24 04:13:27.956918', 'jksnkmasd,ad
dajdmasdas
dkdasdnkad


', '2'),
('5', 'My Updated Post', '2019-03-24 04:15:33.559984', 'My first updated post!


This is exciting!', '6'),
('6', 'A Second Post', '2019-03-24 04:16:05.546435', 'This is a post from a different user...', '3'),
('7', 'Top 5 Programming Lanaguages', '2019-03-24 04:17:23.346762', 'Te melius apeirian postulant cum, labitur admodum cu eos! Tollit equidem constituto ut has. Et per ponderum sadipscing, eu vero dolores recusabo nec! Eum quas epicuri at, eam albucius phaedrum ad, no eum probo fierent singulis. Dicat corrumpit definiebas id usu, in facete scripserit eam.\r\n\r\nVim ei exerci nusquam. Agam detraxit an quo? Quo et partem bonorum sensibus, mutat minimum est ad. In paulo essent signiferumque his, quaestio sadipscing theophrastus ad has. Ancillae appareat qualisque ei has, usu ne assum zril disputationi, sed at gloriatur persequeris.', '1'),
('8', 'Sublime Text Tips and Tricks', '2019-03-24 04:19:00.752569', 'Ea vix dico modus voluptatibus, mel iudico suavitate iracundia eu. Tincidunt voluptatibus pro eu? Nulla omittam eligendi his ne, suas putant ut pri. Ullum repudiare at duo, ut cum habeo minim laudem, dicit libris antiopam has ut! Ex movet feugait mea, eu vim impetus nostrud cotidieque.\r\n\r\nEi suas similique quo, his simul viris congue ex? Graeci possit in est, ne qui minim delectus invenire. Mei ad error homero maluisset, tacimates assentior per in, vix ut vocent accusata! Mei eu inermis pericula patrioque? Debet denique sea at, ad cibo reformidans theophrastus per, cu inermis maiestatis vim!\r\n\r\nUt odio feugiat voluptua est, euismod volutpat qualisque at sit, has ex dicit ornatus inimicus! Eu ferri laoreet vel, dicat corrumpit dissentias nec in. Illum dissentiunt eam ei, praesent voluptatum pri in? Ius in inani petentium, hinc elitr vivendum an vis, in vero dolores electram ius?', '2'),
('9', 'Best Python IDEs', '2019-03-24 04:19:37.613562', 'Elit contentiones nam no, sea ut consul adipiscing. Etiam velit ei usu, sonet clita nonumy eu eum. Usu ea utroque facilisi, cu mel fugit tantas legimus, te vix quem nominavi. Prima deserunt evertitur ne qui, nam reprimique appellantur ne.', '6'),
('10', 'Flask vs Django - Which Is Better?', '2019-03-24 04:20:10.307068', 'Ei dicta apeirian deterruisset eam, cu offendit invenire pri, cu possim vivendo vix? Nam nihil evertitur ad, ne vim nonumy legendos iracundia. Vix nulla dolorem intellegebat ea? Te per vide paulo dolor, eum ea erant placerat constituam? Dolores accumsan eum at.

Interesset consequuntur id vix. Eam id decore latine, iusto imperdiet ei qui. In ludus consul reformidans eam. Nec in recusabo posidonium, cu tantas volumus mnesarchum pro. Nam ut docendi evertitur, possim menandri persecuti ne sed, cum saepe ornatus delenit ei?


In mel debet aliquam. In his etiam legere, doming nominavi consetetur has ad, decore reprimique ea usu. Eam magna graeci suavitate cu, facete delenit cum ne. Ponderum evertitur tincidunt ei mel, ius ei stet euismod docendi.', '3'),
('11', 'You Won''t Believe These Clickbait Titles!', '2019-03-24 04:20:46.419014', 'Cu justo honestatis mel, pro ei appareat mediocrem suavitate. No his omnis ridens. Ludus ornatus voluptatum mei ut, an mentitum noluisse forensibus cum. Eam affert pertinax consequuntur ei, nisl zril meliore te vis? Ad animal persius concludaturque vix, eu graece audiam mel.


Vitae libris mentitum pri in. Cu rebum veritus sea, ex usu consul dolorum, pro tale maluisset consulatu ut. Quo ad clita persius ancillae. Vel illud blandit at, vel eu hinc graeco, usu doctus praesent ea! Vim rebum deserunt ex.

Ius lorem omittam id, est suavitate definitionem ad! Id vim insolens tacimates, pri at decore causae. Ex duo bonorum repudiandae? Vix no vidit facete impedit. An oportere indoctum eam.', '4'),
('12', 'These Beers Will Improve Your Programming', '2019-03-24 04:21:11.864205', 'Sanctus senserit vis id, ut eum iuvaret invidunt constituam? Nonumes facilis mei an, ad elit explicari persequeris pri, dico recusabo quo id? At mea lorem repudiandae. Sed causae sensibus forensibus ea, ne ornatus suscipiantur consectetuer mel, affert nostro nominati cu qui. Te sanctus constituto est, corrumpit pertinacia eos et, mei libris persequeris an.

Quo fuisset sensibus in. Ad est assueverit adversarium, viris aperiri numquam est ad. Pro mediocrem iudicabit ei! Cu aperiam diceret sit.', '6'),
('13', 'List of PyCon 2018 Talks', '2019-03-24 04:21:43.739862', 'Has ea verear adolescens, elit justo constituam duo in, vix an copiosae contentiones. Eos persius consequuntur no, esse percipit cum ea, per modus harum praesent at. Et clita delenit luptatum usu? No cum interpretaris concludaturque. Congue pertinax ea mea.

Brute iracundia philosophia ei quo, nam at adhuc idque, ex dolor homero mei. No mea affert tacimates pertinacia, in maluisset dissentias consectetuer mei, vel no aliquam splendide. In has nobis vocent adipisci? Pri clita delicata in, iusto viris scripserit vim in? Sit in lorem complectitur. Sanctus eloquentiam eum ut, et sumo apeirian mea? Vim te affert populo voluptaria, utinam consul ad duo.', '1'),
('14', 'How Dogs in the Workplace Boosts Productivity', '2019-03-24 04:22:22.030691', 'Has ea verear adolescens, elit justo constituam duo in, vix an copiosae contentiones. Eos persius consequuntur no, esse percipit cum ea, per modus harum praesent at. Et clita delenit luptatum usu? No cum interpretaris concludaturque. Congue pertinax ea mea.

Brute iracundia philosophia ei quo, nam at adhuc idque, ex dolor homero mei. No mea affert tacimates pertinacia, in maluisset dissentias consectetuer mei, vel no aliquam splendide. In has nobis vocent adipisci? Pri clita delicata in, iusto viris scripserit vim in? Sit in lorem complectitur. Sanctus eloquentiam eum ut, et sumo apeirian mea? Vim te affert populo voluptaria, utinam consul ad duo.', '6'),
('15', 'The Best Programming Podcasts', '2019-03-24 04:24:21.028851', 'Vidisse malorum platonem vel no. Persecuti adversarium ut sit, quo et stet velit mundi! Id per homero expetenda. Est brute adipisci et!

Lorem aliquip has in, quo debet ceteros sadipscing ne! An sea odio ornatus inermis, an per ipsum persecuti dissentiunt, no mea bonorum pertinacia delicatissimi? Ne sumo diceret mea, percipit repudiare eam no! Pro et lorem accommodare. At eius novum phaedrum mei?

Ignota conclusionemque mei no, eam ut munere fierent pertinacia. Ea enim insolens gloriatur duo, quis vituperatoribus pro no! Ei sed bonorum reprehendunt, aliquam nominavi his et. Magna decore referrentur id nec. Cum rebum ludus inimicus no, id cum iusto labores maluisset!

Qui no omnis numquam apeirian, et vide interesset cum? Et nec nulla signiferumque. Enim instructior eos ei, solum tollit phaedrum his in? No vix malorum ornatus, cu quo hinc everti iracundia, essent eruditi efficiendi ut nam. Altera saperet usu eu, errem expetenda cu duo. Has dolor splendide et, no mel cibo ancillae voluptatum, mutat antiopam deterruisset ei qui. Dolores scripserit concludaturque est id, ea animal facilisi splendide qui, quo at animal voluptua instructior.

Meis voluptatum eu eum.', '6'),
('16', 'Tips for Public Speaking', '2019-03-24 04:24:49.689015', 'Ex eam doctus accommodare. Ut oratio vivendo intellegebat qui. Ius ne doming petentium. Pri congue delectus ad, accumsan molestiae disputando te mea. Nam case inani eligendi at, per te esse iudico. Feugiat patrioque mei ad, harum mundi adversarium an per!

Ancillae verterem eleifend his at? Nam vidit iusto petentium at, vis nusquam dissentias cu, etiam doctus adversarium eam no. At alterum definiebas efficiantur eos, pro labitur vituperatoribus ne, eu odio legere vim. Ad nec verear appellantur? Ad qui vulputate persequeris.', '5'),
('17', 'Best Programmers Throughout History', '2019-03-24 04:25:13.574187', 'Mel nulla legimus senserit id. Vim purto tractatos in, te vix error regione, erant laudem legere an vel. Falli fierent ius ex! In legere iriure est, id vis prima maluisset, purto numquam inimicus ut eos! In duo antiopam salutatus, an vel quodsi virtute definitiones.

Est te sumo voluptaria, ius no putant argumentum, alienum ocurreret vim cu? Volumus democritum no vel, virtute commune an est. Vel te propriae lobortis rationibus, no eum odio neglegentur? Duo an sumo ignota latine! Nec mazim aperiam percipitur eu, id his dicit omnium.', '6'),
('18', 'How To Create A YouTube Channel', '2019-03-24 04:25:41.765084', 'Sit et novum omnes. Nec ea quas minim tractatos, usu in aperiam mentitum necessitatibus, ut omnis equidem moderatius quo. Eos ad putent aeterno praesent. Eos omnium similique id, his accommodare philosophia at. Causae lucilius similique in mea, ut regione tritani voluptatibus mel! At possim offendit eum, aeque denique prodesset pro te?

At pro quem laudem. Et agam democritum eos? Ea quod probatus usu, no ferri fabulas cotidieque mei? Numquam nusquam quo in, quo et molestiae complectitur. Nihil semper ei qui.

Modo omnes forensibus duo ex, te est diceret bonorum labores! Magna ponderum eos ea. Cu vim diceret mnesarchum, graeci periculis in vis. Est no iriure suavitate!', '6'),
('19', 'How I Record My Videos', '2019-03-24 04:26:04.870204', 'Ad vel possim delicatissimi, delectus detraxit per cu. Ad pri vidit modus altera! In erat complectitur sit, quo no nostro insolens? Aliquam patrioque scribentur quo ad, partem commune eos at. Eius vivendo comprehensam has ne, sea ne eros mazim oratio. Soluta populo te duo, ne pro causae fabulas percipitur, feugiat.', '5'),
('20', 'Python and Physics', '2019-03-24 04:27:55.673484', 'Agam mediocritatem sed ex, fabellas recusabo dissentias vix te. No principes consequat inciderint pri, ea mundi affert persecuti mea, ne usu veri regione nostrum! An tibique dissentiet referrentur pro, ridens temporibus eu est! Ius ne omnes affert rationibus, ut detraxit qualisque usu. Accusamus reformidans sea id?

Eu aliquip gloriatur mei. Qui ad sint scripserit? Te instructior definitiones mel, sale mutat everti at his. Ea mea quot recusabo philosophia. Et nam quod adipisci, quo atqui appetere recusabo id, detraxit inimicus vim.', '6'),
('21', 'Just A Few More Healines Should Do It', '2019-03-24 04:28:23.915933', 'Duo at tibique commune vulputate, ex facilis tacimates disputationi mei. Mel eu inani prompta labores! Audire omnesque offendit ex eos. An ferri accusata his, vel agam habeo maiestatis ex, eam mutat iisque concludaturque ut. Ut tamquam minimum partiendo vim. An nam vidit doming graecis.

Singulis abhorreant his in, et altera audiam feugiat mei. Pri eius dolor persequeris id! Nam ea dolorem expetendis, idque everti suscipit qui te, noster repudiare dignissim per ex? No vim iriure tibique comprehensam, per utamur consequat.', '6'),
('22', 'Music To Listen To While Coding', '2019-03-24 04:28:51.072467', 'Feugait reprimique eu mel, te eum dico electram. Nam no nemore cotidieque. Vim cu suas atqui dicunt. Id labitur dissentiunt per, ignota maiorum pri no? Clita altera sanctus ex his!

At alia electram reprehendunt eam, sea te volumus quaestio. Commodo voluptua senserit ius ne, eu enim disputationi eam? Id pri omnium blandit, nullam denique nec no? Sapientem vituperata sit et, nisl facilisis periculis in est. Elaboraret accommodare id vel? Cibo eripuit ut has, sed cu liber invidunt.

Ei pro vide quas dolorum, sea no fugit sanctus neglegentur. Sit feugait disputationi ne. Id diceret periculis nec, sint nonumes in sea, cum.', '6'),
('23', '5 Tips for Writing Catchy Headlines', '2019-03-24 04:29:06.986944', 'Ea homero possit epicuri est, debitis docendi tacimates cu duo? Ad lorem cetero disputando pri, veniam eruditi tacimates per te.', '6'),
('24', 'The Rise of Data Science', '2019-03-24 04:29:31.410944', 'Per omittam placerat at. Eius aeque ei mei. Usu ex partiendo salutandi. Pro illud placerat molestiae ex, habeo vidisse voluptatum cu vel, efficiendi accommodare eum ea! Ne has case minimum facilisis, pertinax efficiendi eu vel!

Et movet semper assueverit his. Mei at liber vitae. Vix et periculis definiebas, vero falli.', '6'),
('25', 'Best Videos For Learning Python', '2019-03-24 04:30:00.327260', 'Mei ei mazim dicunt feugait? Ludus mandamus ne est, per ne iusto facilisis moderatius! Has agam utamur ad! Ius reque aeterno cu, fabellas facilisi repudiare eu sit, te cibo convenire similique est. Ea cum viderer imperdiet liberavisse.

Pro minim iuvaret ad. No nam ornatus principes euripidis, at sale vituperatoribus eos, eros regione scripserit id mea. Has ne inermis nostrum, quo tantas melius dissentias at! Ut vim tibique omnesque. An mel modo ponderum, eum at probo appetere imperdiet? Natum quaeque intellegebat per ex. Cu viris clita sit?

Reque menandri dissentias sed ne, no tota nonumes eos, vix in tempor maiestatis erant.', '6'),
('26', 'Top 10 Python Tips and Tricks', '2019-03-24 04:30:49.543343', 'Pro minim iuvaret ad. No nam ornatus principes euripidis, at sale vituperatoribus eos, eros regione scripserit id mea. Has ne inermis nostrum, quo tantas melius dissentias at! Ut vim tibique omnesque. An mel modo ponderum, eum at probo appetere imperdiet? Natum quaeque intellegebat per ex. Cu viris clita sit?

Reque menandri dissentias sed ne, no tota nonumes eos, vix in tempor maiestatis erant.', '1'),
('27', 'Top 5 YouTube Channels For Learning Programming', '2019-03-24 04:31:13.862060', 'Quo inani quando ea, mel an vide adversarium suscipiantur. Et dicunt eleifend splendide pro. Nibh animal dolorem vim ex, nec te agam referrentur. Usu admodum ocurreret ne.

Et dico audire cotidieque sed, cibo latine ut has, an case magna alienum.', '2'),
('28', 'My Latest Updated Post', '2019-03-24 04:31:37.328631', 'Erat expetenda definitionem id eos. Semper suscipit eum ut, eum ex nemore copiosae. Nam probatus pertinacia eu! No alii voluptua abhorreant nec, te pro impedit concludaturque, in sea malis torquatos disputationi! Nam te alii nobis ponderum, ei fugit accusamus pro.

Congue salutandi ex eam! Mei an prima consulatu, erat detracto eu quo? Vim ea esse utinam efficiantur, at noster dicunt.', '5');
