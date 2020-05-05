local _, addonTable = ...

XToLevel.AVERAGE_WINDOWS =
{
    [0] = "None",
    [1] = "Blocky",
    [2] = "Classic"
}

XToLevel.TIMER_MODES = 
{
    [1] = "Session",
    [2] = "Level"
}

XToLevel.BG_NAMES =
{
    [1] = "Alterac Valley",
    [2] = "Warsong Gulch",
    [3] = "Arathi Basin",
    [4] = "Eye of the Storm",
    [5] = "Strand of the Ancients",
    [6] = "Isle of Conquest"
}

XToLevel.LDB_PATTERNS = 
{
    [1] = "default", 
    [2] = "minimal", 
    [3] = "minimal_dashed", 
    [4] = "brackets", 
    [5] = "countdown", 
    [6] = "custom"
}

XToLevel.DISPLAY_LOCALES = addonTable.GetDisplayLocales()

XToLevel.UNIT_CLASSIFICATIONS = {
    [1] = "normal",
    [2] = "rare",
    [3] = "elite",
    [4] = "rareelite",
    [5] = "worldboss",
    [6] = "minus",
    [7] = "trivial"
}

XToLevel.CATACLYSM_ZONES = {
    [1] = "Mount Hyjal",
    [2] = "Uldum",
    [3] = "Vashj'ir",
    [4] =  "Twilight Highlands"
}

-- A list of zones introduced in cata that are would use the zone ID 5, yet who's
-- XP modifier should be that of normal pre-Cata low-level zones.
XToLevel.CATACLYSM_LOWLEVEL_ZONES = {
    [1] = "Kezan",
    [2] = "The Lost Isles",
    [3] = "Ruins of Gilneas"
}

-- XP Modifiers for the standard XP forumla. The values listed here cover all levels between
-- the level indicated up until the next level listed. Note that it's not 100% accurate, as
-- the actual value is calculated based on some formula I'm too stupid/lazy to figure out.
-- This is pretty close tho, based on actual recorded values from the game client.
-- Note that this is only neede for lower level mobs. Higher level mobs are always
-- +5% per level at all levels.
XToLevel.XP_MULTIPLIERS = {
    {["level"] = 1, ["modifier"] = 0.27},
    {["level"] = 3, ["modifier"] = 0.23},
    {["level"] = 8, ["modifier"] = 0.19},
    {["level"] = 12, ["modifier"] = 0.16},
    {["level"] = 15, ["modifier"] = 0.15},
    {["level"] = 18, ["modifier"] = 0.14},
    {["level"] = 20, ["modifier"] = 0.13},
    {["level"] = 25, ["modifier"] = 0.12},
    {["level"] = 30, ["modifier"] = 0.11},
    {["level"] = 33, ["modifier"] = 0.10},
    {["level"] = 40, ["modifier"] = 0.095},
    {["level"] = 45, ["modifier"] = 0.09},
    {["level"] = 48, ["modifier"] = 0.085},
    {["level"] = 52, ["modifier"] = 0.08},
    {["level"] = 56, ["modifier"] = 0.075},
    {["level"] = 60, ["modifier"] = 0.07}   -- All mobs above 60 are -7% per level
}

XToLevel.XP_CLASSIC_ZERO_DIFFERENCE = {
    {["level"] = 1, ["divider"] = 5},
    {["level"] = 8, ["divider"] = 6},
    {["level"] = 10, ["divider"] = 7},
    {["level"] = 12, ["divider"] = 8},
    {["level"] = 16, ["divider"] = 9},
    {["level"] = 20, ["divider"] = 11},
    {["level"] = 30, ["divider"] = 12},
    {["level"] = 40, ["divider"] = 13},
    {["level"] = 45, ["divider"] = 14},
    {["level"] = 50, ["divider"] = 15},
    {["level"] = 55, ["divider"] = 16},
    {["level"] = 60, ["divider"] = 17} -- Future proofing, for if/when TBC is released.
}

XToLevel.QUEST_XP = {
    -- 1-9
    120, 260, 250, 360, 450, 625, 825, 1050, 1300,
    -- 10-19
    1550, 1850, 2150, 2450, 2800, 3150, 3400, 3550, 3700, 3800,
    -- 20-29
    3950, 4100, 4250, 4350, 4500, 4650, 4800, 4900, 5050, 5200,
    -- 30-39
    5300, 5450, 5600, 5750, 5850, 6000, 6150, 6300, 6400, 6550, 
    -- 40-49
    6700, 6850, 6950, 7100, 7250, 7350, 7500, 7650, 7800, 7900, 
    -- 50-59
    8050, 8200, 8350, 8450, 8600, 8750, 8850, 9000, 9150, 9300, 
    -- 60-69
    9450, 9600, 9700, 9850, 10000, 10150, 10250, 10400, 10550, 10700, 
    -- 70-79
    10800, 10950, 11100, 11250, 11350, 11500, 11650, 11750, 11900, 12050, 
    -- 80-89
    12200, 12300, 12450, 12600, 12700, 12850, 13000, 13150, 13300, 13400, 
    -- 90-99
    13700, 13850, 13950, 14100, 14250, 14400, 14500, 14650, 14800, 14950, 
    -- 100-109
    15050, 15200, 15350, 15500, 15600, 15750, 15900, 16050, 16150, 16300, 
    -- 110-119
    16450, 16600, 16750, 16850, 17000, 17150, 17300, 17450, 17550, 17700
}

XToLevel.RETAIL_XP_MATRIX = {
	[1]={["-2"]=nil,["-1"]=nil,["1"]=52},
	[2]={["-2"]=nil,["-1"]=40,["1"]=58},
	[3]={["-2"]=30,["-1"]=44,["1"]=63},
	[4]={["-2"]=nil,["-1"]=50,["1"]=68},
	[5]={["-2"]=40,["-1"]=54,["1"]=75},
	[6]={["-2"]=43,["-1"]=58,["1"]=79},
	[7]={["-2"]=47,["-1"]=62,["1"]=84},
	[8]={["-2"]=54,["-1"]=69,["1"]=89,["2"]=94,["3"]=98},
	[9]={["-2"]=57,["-1"]=73,["1"]=94,["2"]=99},
	[10]={["-2"]=61,["-1"]=77,["1"]=100},
	[11]={["-2"]=64,["-1"]=81,["1"]=105},
	[12]={["-2"]=71,["-1"]=88,["1"]=110},
	[13]={["-2"]=75,["-1"]=92,["1"]=115},
	[14]={["-2"]=79,["-1"]=96,["1"]=121},
	[15]={["-2"]=86,["-1"]=102,["1"]=126},
	[16]={["-2"]=89,["-1"]=107,["1"]=131},
	[17]={["-2"]=93,["-1"]=111,["1"]=136},
	[18]={["-2"]=97,["-1"]=116,["1"]=142},
	[19]={["-2"]=101,["-1"]=120,["1"]=147,["2"]=154,["3"]=161},
	[20]={["-2"]=108,["-1"]=126,["1"]=152,["2"]=160},
	[21]={["-2"]=112,["-1"]=130,["1"]=158},
	[22]={["-2"]=116,["-1"]=135,["1"]=163},
	[23]={["-2"]=120,["-1"]=140,["1"]=168},
	[24]={["-2"]=124,["-1"]=144,["1"]=173,["2"]=182},
	[25]={["-2"]=131,["-1"]=150,["1"]=178},
	[26]={["-2"]=135,["-1"]=155,["1"]=184},
	[27]={["-2"]=139,["-1"]=159,["1"]=189},
	[28]={["-2"]=143,["-1"]=164,["1"]=194},
	[29]={["-2"]=147,["-1"]=168,["1"]=199},
	[30]={["-2"]=154,["-1"]=174,["1"]=205},
	[31]={["-2"]=158,["-1"]=179,["1"]=210},
	[32]={["-2"]=162,["-1"]=183,["1"]=215},
	[33]={["-2"]=167,["-1"]=188,["1"]=220},
	[34]={["-2"]=171,["-1"]=192,["1"]=226},
	[35]={["-2"]=178,["-1"]=198,["1"]=231},
	[36]={["-2"]=182,["-1"]=203,["1"]=236},
	[37]={["-2"]=186,["-1"]=208,["1"]=241},
	[38]={["-2"]=190,["-1"]=212,["1"]=nil},
	[39]={["-2"]=nil,["-1"]=217,["1"]=252},
	[40]={["-2"]=nil,["-1"]=222,["1"]=257},
	[41]={["-2"]=203,["-1"]=226,["1"]=nil},
	[42]={["-2"]=207,["-1"]=231,["1"]=268},
	[43]={["-2"]=nil,["-1"]=235,["1"]=nil},
	[44]={["-2"]=nil,["-1"]=240,["1"]=278},
	[45]={["-2"]=nil,["-1"]=245,["1"]=284},
	[46]={["-2"]=224,["-1"]=249,["1"]=289},
	[47]={["-2"]=228,["-1"]=254,["1"]=294},
	[48]={["-2"]=236,["-1"]=260,["1"]=299},
	[49]={["-2"]=240,["-1"]=265,["1"]=nil},
	[50]={["-2"]=244,["-1"]=269,["1"]=nil},
	[51]={["-2"]=249,["-1"]=274,["1"]=315},
	[52]={["-2"]=256,["-1"]=280,["1"]=320},
	[53]={["-2"]=260,["-1"]=285,["1"]=326},
	[54]={["-2"]=264,["-1"]=289,["1"]=nil},
	[55]={["-2"]=269,["-1"]=294,["1"]=336},
	[56]={["-2"]=276,["-1"]=300,["1"]=341},
	[57]={["-2"]=nil,["-1"]=305,["1"]=346},
	[58]={["-2"]=nil,["-1"]=309,["1"]=352},
	[59]={["-2"]=nil,["-1"]=314,["1"]=357},
	[60]={["-2"]=296,["-1"]=320,["1"]=362},
	[61]={["-2"]=nil,["-1"]=325,["1"]=367},
	[62]={["-2"]=304,["-1"]=329,["1"]=373},
	[63]={["-2"]=309,["-1"]=334,["1"]=378},
	[64]={["-2"]=313,["-1"]=339,["1"]=383},
	[65]={["-2"]=318,["-1"]=344,["1"]=388},
	[66]={["-2"]=322,["-1"]=348,["1"]=394},
	[67]={["-2"]=nil,["-1"]=353,["1"]=399},
	[68]={["-2"]=331,["-1"]=358,["1"]=404},
	[69]={["-2"]=335,["-1"]=362,["1"]=409},
	[70]={["-2"]=340,["-1"]=367,["1"]=415},
	[71]={["-2"]=344,["-1"]=372,["1"]=420},
	[72]={["-2"]=349,["-1"]=376,["1"]=425},
	[73]={["-2"]=353,["-1"]=381,["1"]=430},
	[74]={["-2"]=357,["-1"]=386,["1"]=436},
	[75]={["-2"]=362,["-1"]=391,["1"]=441},
	[76]={["-2"]=366,["-1"]=nil,["1"]=446},
	[77]={["-2"]=371,["-1"]=400,["1"]=451},
	[78]={["-2"]=375,["-1"]=405,["1"]=457},
	[79]={["-2"]=379,["-1"]=409,["1"]=462},
	[80]={["-2"]=384,["-1"]=414,["1"]=nil},
	[81]={["-2"]=nil,["-1"]=419,["1"]=472},
	[82]={["-2"]=393,["-1"]=424,["1"]=nil},
	[83]={["-2"]=nil,["-1"]=428,["1"]=483},
	[84]={["-2"]=401,["-1"]=433,["1"]=nil},
	[85]={["-2"]=nil,["-1"]=438,["1"]=nil},
	[86]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[87]={["-2"]=nil,["-1"]=447,["1"]=nil},
	[88]={["-2"]=nil,["-1"]=452,["1"]=nil},
	[89]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[90]={["-2"]=428,["-1"]=460,["1"]=520},
	[91]={["-2"]=nil,["-1"]=466,["1"]=525},
	[92]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[93]={["-2"]=nil,["-1"]=475,["1"]=nil},
	[94]={["-2"]=nil,["-1"]=480,["1"]=nil},
	[95]={["-2"]=450,["-1"]=485,["1"]=546},
	[96]={["-2"]=454,["-1"]=489,["1"]=nil},
	[97]={["-2"]=nil,["-1"]=494,["1"]=556},
	[98]={["-2"]=nil,["-1"]=499,["1"]=nil},
	[99]={["-2"]=nil,["-1"]=504,["1"]=567},
	[100]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[101]={["-2"]=nil,["-1"]=513,["1"]=nil},
	[102]={["-2"]=nil,["-1"]=518,["1"]=nil},
	[103]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[104]={["-2"]=nil,["-1"]=527,["1"]=nil},
	[105]={["-2"]=nil,["-1"]=532,["1"]=nil},
	[106]={["-2"]=nil,["-1"]=536,["1"]=nil},
	[107]={["-2"]=nil,["-1"]=541,["1"]=nil},
	[108]={["-2"]=nil,["-1"]=546,["1"]=nil},
	[109]={["-2"]=nil,["-1"]=551,["1"]=nil},
	[110]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[111]={["-2"]=nil,["-1"]=560,["1"]=nil},
	[112]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[113]={["-2"]=nil,["-1"]=569,["1"]=nil},
	[114]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[115]={["-2"]=nil,["-1"]=nil,["1"]=nil},
	[116]={["-2"]=nil,["-1"]=584,["1"]=nil},
	[117]={["-2"]=nil,["-1"]=588,["1"]=nil},
	[118]={["-2"]=nil,["-1"]=593,["1"]=nil},
	[119]={["-2"]=nil,["-1"]=598,["1"]=nil}
}