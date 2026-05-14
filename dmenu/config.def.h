static int topbar = 1;
static const char *fonts[] = {
	"Terminus:size=12:style=Bold"
};

static const char *prompt = NULL;

static const char *colors[SchemeLast][2] = {
    [SchemeNorm] = { "#BBBBBB", "#000000" },
    [SchemeSel]  = { "#FFFFFF", "#555555" },
    [SchemeOut]  = { "#000000", "#CCCCCC" },
};
 
static unsigned int lines = 0;
static const char worddelimiters[] = " ";
