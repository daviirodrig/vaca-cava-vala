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
	"Tab"
]

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
	"Davi",
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
	"anjo",
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
	"pato",
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
	"cala"
]

const has_picture = ["sapo", "vaca", "alan", "sreo", "joia", "meia"]
const shines = ["sreo"]

var current_word: String = "vaca"

var matched_words := []
