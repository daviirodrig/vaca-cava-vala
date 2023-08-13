extends Node

const permited_chars = [
	"A",
	"B",
	"C",
	"Ç",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"N",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z",
	"Backspace",
	"Enter",
	"Tab",
	"Escape",
	"Up"
]

func words():

	const words: Array = [
		"amor",
		"fato",
		"mito",
		"viés",
		"você",
		"caos",
		"como",
		"esmo",
		"brio",
		"vide",
		"ação",
		"após",
		"sede",
		"pois",
		"vida",
		"casa",
		"auge",
		"saga",
		"medo",
		"ônus",
		"ermo",
		"suma",
		"mote",
		"vovó",
		"idem",
		"tolo",
		"além",
		"sina",
		"urge",
		"crer",
		"apto",
		"pela",
		"veio",
		"zelo",
		"pude",
		"tudo",
		"área",
		"ruim",
		"rude",
		"mais",
		"amar",
		"coxo",
		"cota",
		"para",
		"soar",
		"ater",
		"fase",
		"ente",
		"será",
		"auto",
		"trás",
		"voga",
		"doce",
		"logo",
		"onde",
		"rima",
		"deus",
		"ante",
		"cedo",
		"pelo",
		"jugo",
		"meio",
		"meta",
		"arte",
		"cujo",
		"sela",
		"alma",
		"traz",
		"numa",
		"cela",
		"teor",
		"face",
		"nojo",
		"noia",
		"asco",
		"sido",
		"pose",
		"alvo",
		"foco",
		"base",
		"isso",
		"vale",
		"sair",
		"teve",
		"agir",
		"ódio",
		"todo",
		"alto",
		"ócio",
		"rito",
		"eita",
		"irão",
		"alva",
		"ágil",
		"novo",
		"tese",
		"alta",
		"nexo",
		"peço",
		"orla",
		"bojo",
		"mero",
		"rege",
		"água",
		"nada",
		"útil",
		"fora",
		"caso",
		"quer",
		"frio",
		"seio",
		"joia",
		"lume",
		"hoje",
		"haja",
		"tema",
		"algo",
		"quão",
		"pena",
		"hera",
		"fito",
		"belo",
		"nome",
		"pode",
		"fiel",
		"evoé",
		"nude",
		"gama",
		"país",
		"bola",
		"vibe",
		"tipo",
		"coça",
		"dote",
		"luta",
		"virá",
		"buço",
		"poxa",
		"siso",
		"prol",
		"guia",
		"este",
		"nato",
		"seja",
		"anti",
		"suar",
		"opor",
		"qual",
		"alfa",
		"dolo",
		"mera",
		"tino",
		"tais",
		"item",
		"dico",
		"real",
		"ópio",
		"afim",
		"povo",
		"essa",
		"leal",
		"fuga",
		"azul",
		"esse",
		"grau",
		"lide",
		"erro",
		"tabu",
		"chão",
		"puro",
		"post",
		"usar",
		"selo",
		"bolo",
		"lida",
		"orar",
		"modo",
		"hein",
		"rara",
		"raca",
		"sito",
		"taxa",
		"cair",
		"rola",
		"P.S.",
		"aval",
		"peão",
		"fogo",
		"asno",
		"café",
		"ledo",
		"pião",
		"sexy",
		"dois",
		"dado",
		"obra",
		"raro",
		"gana",
		"quis",
		"cume",
		"bobo",
		"gato",
		"quem",
		"fome",
		"rogo",
		"apor",
		"indo",
		"show",
		"pneu",
		"cena",
		"aqui",
		"caro",
		"sobe",
		"raiz",
		"juiz",
		"davi",
		"apta",
		"está",
		"leve",
		"flor",
		"meça",
		"cara",
		"hora",
		"bens",
		"seco",
		"rumo",
		"joio",
		"aula",
		"cada",
		"trem",
		"deve",
		"raso",
		"rico",
		"fera",
		"moço",
		"mora",
		"topo",
		"lema",
		"irmã",
		"rijo",
		"fado",
		"nego",
		"sebe",
		"peso",
		"tomo",
		"peça",
		"reto",
		"dano",
		"feio",
		"poli",
		"puto",
		"ramo",
		"seus",
		"sapé",
		"falo",
		"coro",
		"ária",
		"pejo",
		"lixo",
		"fofo",
		"eixo",
		"esta",
		"rixa",
		"vixe",
		"odor",
		"halo",
		"rede",
		"liso",
		"paço",
		"tido",
		"baia",
		"foro",
		"cimo",
		"limo",
		"mole",
		"doar",
		"xale",
		"voto",
		"vote",
		"laço",
		"fixo",
		"bela",
		"três",
		"sumo",
		"xará",
		"fiar",
		"maçã",
		"anel",
		"gado",
		"ismo",
		"dela",
		"cais",
		"coco",
		"ateu",
		"pipa",
		"mesa",
		"hexa",
		"tupi",
		"leão",
		"xodó",
		"fama",
		"ogro",
		"bebê",
		"voar",
		"meia",
		"duma",
		"semi",
		"dose",
		"éter",
		"pólo",
		"vara",
		"agem",
		"bora",
		"duro",
		"aura",
		"mimo",
		"vela",
		"acha",
		"cear",
		"cepa",
		"nota",
		"olho",
		"dica",
		"cego",
		"vaga",
		"cito",
		"saiu",
		"ceta",
		"dito",
		"pesa",
		"amém",
		"vovô",
		"reza",
		"toda",
		"luxo",
		"tato",
		"gafe",
		"teso",
		"rato",
		"fins",
		"ralé",
		"foge",
		"ilha",
		"dele",
		"cabo",
		"fuso",
		"moça",
		"arar",
		"sofá",
		"saia",
		"jiló",
		"óleo",
		"vero",
		"sapo",
		"anil",
		"mono",
		"pura",
		"breu",
		"foto",
		"cama",
		"bofe",
		"rosa",
		"hino",
		"seta",
		"laia",
		"leia",
		"maço",
		"muro",
		"look",
		"luto",
		"boca",
		"fixa",
		"mané",
		"dona",
		"nata",
		"leme",
		"quiz",
		"jaez",
		"sigo",
		"rota",
		"grei",
		"nora",
		"élan",
		"cuja",
		"bocó",
		"anca",
		"ogra",
		"polo",
		"laje",
		"sono",
		"guri",
		"jogo",
		"solo",
		"fala",
		"cima",
		"ceia",
		"azar",
		"dali",
		"ouro",
		"sopé",
		"idos",
		"faço",
		"unir",
		"vêem",
		"poça",
		"cocô",
		"nenê",
		"atém",
		"mana",
		"isto",
		"jaja",
		"copa",
		"osso",
		"digo",
		"orbe",
		"proa",
		"taba",
		"time",
		"bago",
		"site",
		"viço",
		"asso",
		"edil",
		"Éden",
		"roca",
		"rasa",
		"anjo",  # aq
		"raça",
		"ruço",
		"nova",
		"pomo",
		"poço",
		"rack",
		"sujo",
		"mapa",
		"momo",
		"raio",
		"cura",
		"mago",
		"boia",
		"vago",
		"leva",
		"luso",
		"veto",
		"José",
		"mega",
		"urbe",
		"acre",
		"roto",
		"diva",
		"sala",
		"lira",
		"nela",
		"mudo",
		"seca",
		"coxa",
		"xepa",
		"cipó",
		"riso",
		"peia",
		"moco",
		"pior",
		"luna",
		"data",
		"rolê",
		"tona",
		"caju",
		"jabá",
		"vaso",
		"cite",
		"dama",
		"faia",
		"cina",
		"viva",
		"gula",
		"buxo",
		"seda",
		"azia",
		"sabe",
		"lado",
		"roça",
		"vivo",
		"cola",
		"oral",
		"celo",
		"domo",
		"luar",
		"nerd",
		"teia",
		"cabe",
		"sopa",
		"pera",
		"pane",
		"onda",
		"agro",
		"moda",
		"zoar",
		"bula",
		"nulo",
		"boné",
		"toga",
		"içar",
		"pele",
		"sega",
		"caça",
		"pagã",
		"divã",
		"angu",
		"hall",
		"gaze",
		"adro",
		"musa",
		"colo",
		"pede",
		"maré",
		"assa",
		"atar",
		"iaiá",
		"cova",
		"hipo",
		"cadê",
		"pedi",
		"lady",
		"ruir",
		"beco",
		"cruz",
		"táxi",
		"mãos",
		"gera",
		"sois",
		"vaca",
		"leso",
		"frei",
		"sebo",
		"baby",
		"ecrã",
		"ocre",
		"açaí",
		"lato",
		"papo",
		"tara",
		"pais",
		"xixi",
		"mano",
		"dedo",
		"cria",
		"veda",
		"fulo",
		"ágio",
		"tapa",
		"teto",
		"bala",
		"maná",
		"grão",
		"zona",
		"baço",
		"naco",
		"pajé",
		"céus",
		"gene",
		"tufo",
		"miss",
		"link",
		"ioiô",
		"alho",
		"mina",
		"robô",
		"boxe",
		"doze",
		"rama",
		"baio",
		"jipe",
		"dono",
		"suja",
		"veia",
		"roxo",
		"dita",
		"humo",
		"lago",
		"cera",
		"arco",
		"gelo",
		"vivi",
		"tatu",
		"órfã",
		"sete",
		"homo",
		"czar",
		"pala",
		"ator",
		"eles",
		"duas",
		"erva",
		"feto",
		"faca",
		"beta",
		"tina",
		"arma",
		"deem",
		"rebu",
		"mato",
		"pino",
		"bons",
		"coar",
		"dias",
		"neve",
		"copo",
		"inda",
		"inté",
		"babá",
		"fada",
		"saná",
		"titã",
		"lama",
		"pato",  # aq
		"etc.",
		"pôde",
		"silo",
		"dons",
		"fino",
		"cepo",
		"safo",
		"raia",
		"mofo",
		"bisa",
		"dada",
		"fole",
		"jeca",
		"duto",
		"boom",
		"onça",
		"nume",
		"ajam",
		"seis",
		"poro",
		"suco",
		"gume",
		"muda",
		"eira",
		"deva",
		"baía",
		"mini",
		"urso",
		"coió",
		"lote",
		"goto",
		"gajo",
		"islã",
		"cuia",
		"neno",
		"fedo",
		"anão",
		"veem",
		"galo",
		"suso",
		"galã",
		"acto",
		"gris",
		"pelé",
		"toca",
		"zero",
		"pito",
		"lobo",
		"eito",
		"bode",
		"loja",
		"urze",
		"pivô",
		"olmo",
		"mala",
		"popa",
		"moto",
		"cita",
		"fria",
		"sege",
		"bote",
		"cone",
		"égua",
		"noro",
		"soma",
		"filo",
		"tela",
		"feno",
		"Att.",
		"juro",
		"pras",
		"liça",
		"fumê",
		"peru",
		"doer",
		"ísis",
		"robe",
		"leda",
		"cega",
		"play",
		"orto",
		"coma",
		"gaja",
		"tour",
		"vate",
		"leoa",
		"velo",
		"vila",
		"lata",
		"irar",
		"bidu",
		"muco",
		"amem",
		"oito",
		"bixa",
		"pico",
		"álea",
		"book",
		"poda",
		"ergo",
		"suor",
		"paul",
		"lava",
		"liga",
		"capô",
		"olha",
		"olor",
		"mico",
		"tear",
		"veja",
		"vala",
		"pata",
		"doxa",
		"soer",
		"blog",
		"pote",
		"cedê",
		"rapé",
		"nagô",
		"fumo",
		"nega",
		"saci",
		"peta",
		"meme",
		"bati",
		"valo",
		"ônix",
		"rego",
		"saco",
		"endo",
		"baga",
		"roda",
		"tira",
		"guru",
		"luva",
		"vezo",
		"mata",
		"menu",
		"biza",
		"gala",
		"sova",
		"anta",
		"pego",
		"javé",
		"isca",
		"fiat",
		"mira",
		"fuça",
		"chat",
		"demo",
		"bizu",
		"migo",
		"ruga",
		"tutu",
		"lido",
		"nero",
		"foca",
		"capa",
		"trio",
		"tejo",
		"tupã",
		"mofa",
		"vice",
		"caia",
		"gare",
		"furo",
		"tava",
		"caco",
		"júri",
		"bule",
		"tevê",
		"sino",
		"fava",
		"pisa",
		"gole",
		"sena",
		"fina",
		"fila",
		"vime",
		"gibi",
		"muar",
		"boga",
		"favo",
		"alça",
		"ralo",
		"moca",
		"jato",
		"pupa",
		"fita",
		"doca",
		"psiu",
		"zoom",
		"mona",
		"dura",
		"poti",
		"João",
		"odre",
		"gral",
		"reta",
		"rolo",
		"saio",
		"íris",
		"sóis",
		"pago",
		"relê",
		"arca",
		"puxo",
		"cava",
		"soro",
		"meus",
		"joça",
		"moer",
		"soja",
		"Zeus",
		"malê",
		"B.O.",
		"ansa",
		"vera",
		"sima",
		"rodo",
		"soez",
		"gema",
		"funk",
		"fula",
		"dual",
		"nele",
		"viga",
		"etos",
		"cebo",
		"rabi",
		"aedo",
		"kiwi",
		"nave",
		"peba",
		"seto",
		"paga",
		"toma",
		"atro",
		"tiro",
		"abra",
		"poia",
		"nuns",
		"elmo",
		"unha",
		"deão",
		"nano",
		"bota",
		"duna",
		"urna",
		"gira",
		"maça",
		"self",
		"soco",
		"grua",
		"mola",
		"riba",
		"rega",
		"melô",
		"cana",
		"noda",
		"diet",
		"deck",
		"gari",
		"piso",
		"juba",
		"roer",
		"bege",
		"maga",
		"maio",
		"asar",
		"lima",
		"zica",
		"cora",
		"adão",
		"faro",
		"viso",
		"miga",
		"rudo",
		"pano",
		"paca",
		"baal",
		"boas",
		"apar",
		"bate",
		"levo",
		"alar",
		"doma",
		"ável",
		"fofa",
		"xote",
		"bufê",
		"poer",
		"gomo",
		"maís",
		"anto",
		"rosé",
		"rela",
		"obus",
		"maiô",
		"pega",
		"mula",
		"puxa",
		"sita",
		"taça",
		"ursa",
		"gata",
		"napa",
		"lêem",
		"néon",
		"cotó",
		"pira",
		"luau",
		"lero",
		"tico",
		"bico",
		"sola",
		"bole",
		"taxo",
		"réis",
		"fico",
		"nona",
		"roxa",
		"etno",
		"preá",
		"roco",
		"gota",
		"ruge",
		"oiro",
		"cubo",
		"bobó",
		"jaça",
		"gude",
		"ache",
		"cast",
		"abre",
		"fake",
		"folk",
		"siga",
		"piti",
		"dial",
		"sabá",
		"rapa",
		"palo",
		"urro",
		"bica",
		"gogo",
		"avós",
		"papa",
		"ruar",
		"fero",
		"baba",
		"adir",
		"kilo",
		"cash",
		"loca",
		"galé",
		"erga",
		"siri",
		"atum",
		"lais",
		"mica",
		"pila",
		"miau",
		"jacu",
		"cica",
		"fela",
		"mate",
		"toco",
		"tamo",
		"puma",
		"soga",
		"FIFA",
		"triz",
		"spot",
		"meso",
		"bato",
		"chef",
		"mimi",
		"godo",
		"rubi",
		"gará",
		"lona",
		"amão",
		"pegá",
		"cano",
		"abro",
		"sreo",
		"anal",
		"abri",
		"acho",
		"acne",
		"amei",
		"anos",
		"anda",
		"cala",
		"saca",
		"neon",
		"maca",
		"xota",
		"pica",
		"rica",
		"rose",
		"jaré",
		"tome",
		"gola",
		"alan",
		"goma",
		"Abel",
		"Acab",
		"Ajax",
		"Anás",
		"Aral",
		"Baco",
		"CNPq",
		"Ciro",
		"Cuba",
		"Dido",
		"Dion",
		"Egeu",
		"Elon",
		"Eros",
		"Esaú",
		"Etna",
		"Ezra",
		"Haia",
		"IMPA",
		"Inês",
		"Java",
		"Jean",
		"Laos",
		"Luiz",
		"Luís",
		"Marx",
		"Mary",
		"Meno",
		"Nair",
		"Nilo",
		"Nina",
		"Ogum",
		"Pará",
		"Reno",
		"Rita",
		"Roma",
		"Rose",
		"Rute",
		"Satã",
		"Sião",
		"UFRJ",
		"URSS",
		"Unix",
		"Utah",
		"York",
		"Zair",
		"abas",
		"abri",
		"acho",
		"achá",
		"acne",
		"acua",
		"acue",
		"acuo",
		"acuá",
		"adia",
		"adie",
		"adio",
		"adis",
		"adiu",
		"adiá",
		"afia",
		"afie",
		"afio",
		"afiá",
		"afro",
		"afta",
		"afãs",
		"agar",
		"ages",
		"agia",
		"agis",
		"agiu",
		"agua",
		"ague",
		"aguo",
		"aguá",
		"aias",
		"aids",
		"ajas",
		"alas",
		"alce",
		"alga",
		"alia",
		"alie",
		"alio",
		"aliá",
		"alço",
		"alçá",
		"amai",
		"amam",
		"amas",
		"amei",
		"ames",
		"amos",
		"amou",
		"anal",
		"anda",
		"ande",
		"ando",
		"andá",
		"anis",
		"anos",
		"anua",
		"anui",
		"anuo",
		"anuí",
		"anãs",
		"apeá",
		"arai",
		"aram",
		"aras",
		"arcá",
		"arda",
		"arde",
		"ardi",
		"ardo",
		"ardê",
		"arei",
		"arem",
		"ares",
		"arfa",
		"arfe",
		"arfo",
		"arfá",
		"arme",
		"armo",
		"armá",
		"aros",
		"arou",
		"asas",
		"asma",
		"aspa",
		"asse",
		"assá",
		"atai",
		"atam",
		"atas",
		"atei",
		"atem",
		"ates",
		"ateá",
		"atol",
		"atos",
		"atou",
		"atua",
		"atue",
		"atuo",
		"atuá",
		"aves",
		"avia",
		"avie",
		"avim",
		"avio",
		"avir",
		"aviá",
		"avos",
		"avém",
		"babe",
		"babo",
		"bafo",
		"bale",
		"bali",
		"balo",
		"balé",
		"bane",
		"bani",
		"bata",
		"batê",
		"baús",
		"beba",
		"bebe",
		"bebi",
		"bebo",
		"beca",
		"beça",
		"bicá",
		"bidê",
		"biga",
		"bits",
		"boba",
		"bois",
		"boiá",
		"bolá",
		"boro",
		"boto",
		"botá",
		"brim",
		"broa",
		"buda",
		"bufa",
		"bufe",
		"bufo",
		"bufá",
		"buli",
		"bulo",
		"bóia",
		"bóie",
		"bóio",
		"bôer",
		"cabê",
		"caca",
		"cace",
		"caem",
		"caga",
		"cago",
		"cagá",
		"caie",
		"caio",
		"caiu",
		"caiá",
		"cala",
		"cale",
		"calo",
		"calá",
		"cape",
		"capo",
		"capá",
		"case",
		"casá",
		"cata",
		"cate",
		"cato",
		"catá",
		"cave",
		"cavo",
		"cavá",
		"caço",
		"caçá",
		"caía",
		"caís",
		"ceai",
		"ceda",
		"cede",
		"cedi",
		"ceei",
		"cegá",
		"ceie",
		"ceio",
		"ceou",
		"chia",
		"chie",
		"chio",
		"chiá",
		"citá",
		"clãs",
		"coai",
		"coam",
		"coas",
		"coca",
		"coce",
		"coei",
		"coem",
		"coes",
		"cole",
		"colá",
		"come",
		"comi",
		"comê",
		"coou",
		"core",
		"corá",
		"cosa",
		"cose",
		"cosi",
		"coso",
		"cosê",
		"cote",
		"coto",
		"cotá",
		"coza",
		"coze",
		"cozi",
		"cozo",
		"cozê",
		"coço",
		"coçá",
		"creu",
		"crie",
		"crio",
		"criá",
		"crua",
		"crês",
		"crús",
		"cuba",
		"cuca",
		"cuco",
		"cure",
		"curo",
		"curá",
		"cães",
		"dais",
		"damo",
		"dana",
		"dane",
		"daná",
		"dará",
		"date",
		"dato",
		"datá",
		"dava",
		"deis",
		"depô",
		"dera",
		"detê",
		"devi",
		"devo",
		"devê",
		"diga",
		"dirá",
		"dite",
		"ditá",
		"dize",
		"dizê",
		"doai",
		"doam",
		"doas",
		"doei",
		"doem",
		"does",
		"doeu",
		"dome",
		"domá",
		"doou",
		"dopa",
		"dope",
		"dopo",
		"dopá",
		"dosa",
		"doso",
		"dosá",
		"dota",
		"doto",
		"dotá",
		"doía",
		"duns",
		"dure",
		"durá",
		"dêem",
		"ecoa",
		"ecoe",
		"ecos",
		"ecoá",
		"ecôo",
		"elas",
		"elos",
		"emas",
		"emir",
		"eram",
		"eras",
		"erra",
		"erre",
		"errá",
		"expô",
		"fale",
		"fali",
		"falá",
		"fará",
		"faze",
		"fazê",
		"faça",
		"feda",
		"fede",
		"fedi",
		"fedê",
		"feia",
		"fere",
		"feri",
		"fiai",
		"fiam",
		"fias",
		"fica",
		"ficá",
		"fiei",
		"fiem",
		"fies",
		"figa",
		"figo",
		"file",
		"filá",
		"filé",
		"fios",
		"fiou",
		"fira",
		"firo",
		"fite",
		"fitá",
		"fixe",
		"fixá",
		"flua",
		"flui",
		"fluo",
		"fluí",
		"focá",
		"fone",
		"freá",
		"frua",
		"frui",
		"fruo",
		"fruí",
		"fuce",
		"fugi",
		"fuja",
		"fuje",
		"fuji",
		"fujo",
		"fuma",
		"fume",
		"fumá",
		"fura",
		"fure",
		"furá",
		"fuço",
		"fuçá",
		"gaba",
		"gabe",
		"gabo",
		"gabá",
		"gaga",
		"gago",
		"gamo",
		"gane",
		"gani",
		"geai",
		"gear",
		"geei",
		"geia",
		"geie",
		"geio",
		"gela",
		"gele",
		"gelá",
		"geme",
		"gemi",
		"gemo",
		"gemê",
		"geou",
		"gere",
		"geri",
		"gero",
		"gerá",
		"gire",
		"giro",
		"girá",
		"gnus",
		"gola",
		"gols",
		"goma",
		"gora",
		"gore",
		"goro",
		"gorá",
		"goza",
		"goze",
		"gozo",
		"gozá",
		"guie",
		"guio",
		"guiá",
		"gusa",
		"góis",
		"gôdo",
		"gôzo",
		"havê",
		"huno",
		"iara",
		"iate",
		"icei",
		"icem",
		"ices",
		"idas",
		"ides",
		"iene",
		"ilhe",
		"ilho",
		"ilhá",
		"impô",
		"inca",
		"iodo",
		"ioga",
		"iota",
		"irei",
		"irem",
		"ires",
		"iria",
		"irás",
		"içai",
		"içam",
		"iças",
		"içou",
		"jaca",
		"jade",
		"jaza",
		"jaze",
		"jazi",
		"jazo",
		"jazê",
		"joga",
		"jogá",
		"jota",
		"judô",
		"jura",
		"jure",
		"jurá",
		"juta",
		"jóia",
		"laca",
		"lace",
		"lapa",
		"late",
		"lati",
		"lave",
		"lavo",
		"lavá",
		"laça",
		"laçá",
		"lede",
		"lega",
		"lego",
		"legá",
		"leio",
		"leis",
		"lemo",
		"lera",
		"lerá",
		"lesa",
		"lese",
		"lesá",
		"levá",
		"lhas",
		"lhes",
		"lhos",
		"liam",
		"lias",
		"lidá",
		"ligo",
		"ligá",
		"lime",
		"limá",
		"lisa",
		"lixa",
		"lixe",
		"lixá",
		"loba",
		"loco",
		"locá",
		"lodo",
		"lota",
		"loto",
		"lotá",
		"luas",
		"luiz",
		"lula",
		"lupa",
		"lusa",
		"lute",
		"lutá",
		"luza",
		"luze",
		"luzi",
		"luzo",
		"luís",
		"maca",
		"maia",
		"mama",
		"mame",
		"mamo",
		"mamá",
		"matá",
		"maus",
		"mede",
		"medi",
		"mela",
		"mele",
		"melo",
		"melá",
		"mete",
		"meti",
		"meto",
		"metê",
		"mexa",
		"mexe",
		"mexi",
		"mexo",
		"mexê",
		"meço",
		"miai",
		"miam",
		"miar",
		"mias",
		"miei",
		"miem",
		"mies",
		"mija",
		"mije",
		"mijo",
		"mijá",
		"mima",
		"mime",
		"mimá",
		"mine",
		"mino",
		"miná",
		"miou",
		"mire",
		"miro",
		"mirá",
		"mixo",
		"moam",
		"moas",
		"moei",
		"moem",
		"moes",
		"moeu",
		"mofe",
		"mofá",
		"moge",
		"more",
		"moro",
		"morá",
		"mova",
		"move",
		"movi",
		"movo",
		"movê",
		"moía",
		"mude",
		"mudá",
		"mugi",
		"muja",
		"mujo",
		"mune",
		"muni",
		"mura",
		"mure",
		"murá",
		"mães",
		"nabo",
		"nade",
		"nado",
		"nadá",
		"naja",
		"nana",
		"nane",
		"naná",
		"nazi",
		"negá",
		"neta",
		"neto",
		"neva",
		"nevo",
		"nevá",
		"nina",
		"nine",
		"nino",
		"niná",
		"noel",
		"nono",
		"note",
		"noto",
		"notá",
		"nove",
		"nuas",
		"nuca",
		"nula",
		"néri",
		"oboé",
		"obtê",
		"ocas",
		"ocos",
		"odes",
		"odiá",
		"olhe",
		"olhá",
		"onze",
		"opta",
		"opte",
		"opto",
		"optá",
		"opus",
		"opôs",
		"opõe",
		"orai",
		"oram",
		"oras",
		"orca",
		"orce",
		"orei",
		"orem",
		"ores",
		"orge",
		"orle",
		"orlo",
		"orlá",
		"orna",
		"orne",
		"orno",
		"orná",
		"orou",
		"orça",
		"orço",
		"orçá",
		"ousa",
		"ouse",
		"ouso",
		"ousá",
		"ouve",
		"ouvi",
		"ouça",
		"ouço",
		"oval",
		"ovos",
		"pagá",
		"paio",
		"pape",
		"papá",
		"pare",
		"pari",
		"paro",
		"pará",
		"paus",
		"peca",
		"peco",
		"pecá",
		"pelá",
		"pene",
		"peno",
		"pená",
		"pese",
		"pesá",
		"piai",
		"piam",
		"piar",
		"pias",
		"pica",
		"picá",
		"piei",
		"piem",
		"pies",
		"pifa",
		"pife",
		"pifo",
		"pifá",
		"pios",
		"piou",
		"pipi",
		"pise",
		"pisá",
		"podo",
		"podá",
		"podê",
		"porá",
		"posa",
		"poso",
		"posá",
		"puas",
		"pula",
		"pule",
		"pulo",
		"pulá",
		"puna",
		"pune",
		"puni",
		"puno",
		"purê",
		"puta",
		"puxe",
		"puxá",
		"pães",
		"pêlo",
		"põem",
		"pões",
		"rabo",
		"raie",
		"raiá",
		"raja",
		"raje",
		"rajo",
		"rajá",
		"rala",
		"rale",
		"ralá",
		"rape",
		"rapo",
		"rapá",
		"rata",
		"raíz",
		"regi",
		"regá",
		"regê",
		"reis",
		"reja",
		"rejo",
		"reli",
		"rema",
		"reme",
		"remi",
		"remo",
		"remá",
		"rena",
		"repô",
		"retê",
		"revi",
		"revê",
		"reze",
		"rezo",
		"rezá",
		"riam",
		"rias",
		"rica",
		"ride",
		"rido",
		"riem",
		"rifa",
		"rife",
		"rifo",
		"rifá",
		"rija",
		"rime",
		"rimo",
		"rimá",
		"rins",
		"rios",
		"ripa",
		"rira",
		"rirá",
		"roam",
		"roas",
		"roce",
		"rode",
		"rodá",
		"roei",
		"roem",
		"roes",
		"roeu",
		"roga",
		"roge",
		"rogá",
		"role",
		"rolá",
		"roma",
		"romã",
		"roço",
		"roçá",
		"roía",
		"ruas",
		"rufa",
		"rufe",
		"rufo",
		"rufá",
		"rugi",
		"rugo",
		"rugá",
		"ruia",
		"ruis",
		"ruiu",
		"ruja",
		"rujo",
		"ruma",
		"rume",
		"rumá",
		"rããs",
		"réus",
		"sabê",
		"saca",
		"sacá",
		"saem",
		"safa",
		"safe",
		"safá",
		"sais",
		"sana",
		"sane",
		"sano",
		"sara",
		"sare",
		"saro",
		"sará",
		"satã",
		"saía",
		"saís",
		"secá",
		"sele",
		"selá",
		"seno",
		"sexo",
		"soai",
		"soam",
		"soas",
		"soca",
		"socá",
		"soda",
		"soei",
		"soem",
		"soes",
		"sole",
		"solá",
		"some",
		"somo",
		"somá",
		"sons",
		"soou",
		"sove",
		"sovo",
		"sová",
		"suai",
		"suam",
		"suas",
		"suba",
		"subi",
		"subo",
		"suei",
		"suem",
		"sues",
		"suga",
		"sugo",
		"sugá",
		"suje",
		"sujá",
		"sumi",
		"suou",
		"supô",
		"sãos",
		"taca",
		"taco",
		"tacá",
		"tala",
		"talo",
		"tape",
		"tapo",
		"tapá",
		"taxe",
		"taxá",
		"tece",
		"teci",
		"tecê",
		"tele",
		"teme",
		"temi",
		"temo",
		"temê",
		"tens",
		"terá",
		"tesa",
		"teta",
		"teus",
		"teça",
		"teço",
		"tias",
		"tida",
		"tifo",
		"tine",
		"tini",
		"tios",
		"tire",
		"tirá",
		"tito",
		"tive",
		"tocá",
		"tola",
		"tome",
		"tomá",
		"tomé",
		"tons",
		"topa",
		"tope",
		"topá",
		"tora",
		"toro",
		"tosa",
		"tose",
		"toso",
		"tosá",
		"trai",
		"traí",
		"tuas",
		"tubo",
		"uiva",
		"uive",
		"uivo",
		"uivá",
		"umas",
		"unam",
		"unas",
		"unem",
		"unes",
		"unge",
		"ungi",
		"unia",
		"unis",
		"uniu",
		"unta",
		"unte",
		"unto",
		"untá",
		"urda",
		"urde",
		"urdi",
		"urdo",
		"urgi",
		"urja",
		"urjo",
		"urra",
		"urre",
		"urrá",
		"usai",
		"usam",
		"usas",
		"usei",
		"usem",
		"uses",
		"usos",
		"usou",
		"uvas",
		"vagi",
		"vagá",
		"vaia",
		"vaie",
		"vaio",
		"vais",
		"vaiá",
		"vali",
		"valê",
		"vamo",
		"vare",
		"varo",
		"vará",
		"vaza",
		"vaze",
		"vazo",
		"vazá",
		"vede",
		"vedo",
		"vedá",
		"vejo",
		"vele",
		"velá",
		"vemo",
		"vens",
		"verá",
		"veta",
		"vete",
		"vetá",
		"vexa",
		"vexe",
		"vexo",
		"vexá",
		"viam",
		"vias",
		"vier",
		"viis",
		"vilã",
		"vimo",
		"vira",
		"vire",
		"viro",
		"visa",
		"vise",
		"visá",
		"vive",
		"vivê",
		"vião",
		"viãs",
		"voai",
		"voam",
		"voas",
		"voei",
		"voem",
		"voes",
		"voou",
		"vota",
		"votá",
		"vãos",
		"véus",
		"vôos",
		"zaga",
		"zebu",
		"zela",
		"zele",
		"zelá",
		"zera",
		"zere",
		"zerá",
		"zuna",
		"zune",
		"zuni",
		"zuno",
		"Ásia",
		"ânus",
		"íeis",
		"ímãs",
		"ítem",
	]
	var final_words = []
	for w in words:
		if not final_words.has(w.to_lower()):
			final_words.append(w.to_lower())
	return final_words

const has_picture = [
	"moto",
	"casa",
	"café",
	"anel",
	"pena",
	"maçã",
	"água",
	"gato",
	"fogo",
	"pneu",
	"leão",
	"sapo",
	"vaca",
	"alan",
	"sreo",
	"joia",
	"meia",
	"vela",
	"jaré",
	"rola",
	"vovô",
	"rato",
	"ouro",
	"cama",
	"cocô",
	"acre",
	"anjo",
	"arma",
	"açaí",
	"bala",
	"boné",
	"cova",
	"erva",
	"gelo",
	"lago",
	"mago",
	"onda",
	"pato",
	"robô",
	"sopa",
	"bota",
	"doce",
	"gota",
	"jato",
	"lobo",
	"logo",
	"nave",
	"onça",
	"rubi",
	"suco",
	"urso"
]
const shines = ["sreo", "jaré", "alan"]

var initial_word: String = "vaca"

var current_word: String = initial_word

var matched_words := []
const debug = true
var revealed_words := []
var screen_list := []

var _on_keydown_callback = JavaScriptBridge.create_callback(_on_tab)

func _on_tab(e):
	if get_tree().current_scene.to_string().contains("Main"):
		get_tree().change_scene_to_file("res://WordListScene.tscn")
	else:
		get_tree().change_scene_to_file("res://main.tscn")


func save_game():
	var file = FileAccess.open("user://file_data.json", FileAccess.WRITE)
	var data_dict = {
		"current_word": Consts.current_word,
		"matched_words": Consts.matched_words,
		"revealed_words": Consts.revealed_words,
		"screen_list": Consts.screen_list
	}
	var words_data = JSON.stringify(data_dict)
	file.store_line(words_data)
	file.close()


func load_save():
	if not FileAccess.file_exists("user://file_data.json"):
		reset_progress()
		return
	var file = FileAccess.open("user://file_data.json", FileAccess.READ)
	var words_data = JSON.parse_string(file.get_as_text())
	Consts.screen_list = words_data.get("screen_list")
	Consts.revealed_words = words_data.get("revealed_words")
	Consts.matched_words = words_data.get("matched_words")
	Consts.current_word = words_data.get("current_word")


func reset_progress() -> void:
	Consts.matched_words = []
	Consts.matched_words.append(Consts.initial_word)
	Consts.current_word = Consts.initial_word
	Consts.screen_list = []
	Consts.screen_list.append(Consts.initial_word)
	Consts.revealed_words = []
	var w1 = new_revealed_word()
	var w2 = new_revealed_word()
	if w1 != null:
		Consts.revealed_words.append(w1)
	if w2 != null:
		Consts.revealed_words.append(w2)
	Consts.save_game()


func new_revealed_word():
	randomize()
	# Create an array containing items from the other three lists
	var other_lists_items = Consts.matched_words + Consts.revealed_words + Consts.shines

	# Filter the items in the first list that are not in the other lists
	var available_items = []
	for item in Consts.has_picture:
		if not other_lists_items.has(item):
			available_items.append(item)

	# Check if there are available items in the first list
	if available_items.size() > 0:
		var random_item = available_items.pick_random()
		return random_item
	else:
		var shines_available = Consts.shines.filter(func(i): return i in Consts.matched_words)
		if available_items.size() > 0:
			return shines_available.pick_random()
		else:
			return null
	# var w = Consts.has_picture.pick_random().to_lower()
	# var only_shiny_remaining = abs(len(Consts.matched_words)-len(Consts.has_picture)) <= len(Consts.shines)
	# if only_shiny_remaining:
	# 	while (w in Consts.matched_words) || (w in Consts.revealed_words):
	# 		if len(Consts.matched_words)+1 >= len(Consts.has_picture)-1:
	# 			return null
	# 		w = Consts.has_picture.pick_random().to_lower()
	# else:
	# 	while (w in Consts.matched_words) || (w in Consts.revealed_words) || (w in Consts.shines):
	# 		if len(Consts.matched_words)+1 >= len(Consts.has_picture)-1:
	# 			return null
	# 		w = Consts.has_picture.pick_random().to_lower()
	# return w
