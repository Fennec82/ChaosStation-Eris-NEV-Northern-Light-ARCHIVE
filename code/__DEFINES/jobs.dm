#define ASSISTANT_TITLE "Deckhand"

//Jobs depatment lists for use in constant expressions
#define JOBS_SECURITY "Ironhammer Commander","Gunnery Sergeant","Ironhammer Inspector","Ironhammer Operative","Ironhammer Medical Specialist"
#define JOBS_COMMAND "Captain","First Officer","Bridge Officer","Ironhammer Commander","Free Trade Union Merchant","Technomancer Exultant","Chief Medical Officer","Chief Science Officer"
#define JOBS_ENGINEERING "Technomancer Exultant","Technomancer"
#define JOBS_LAZARUS "Chief Medical Officer","Medical Doctor","Psychiatrist","Chemist","Paramedic", "Chief Science Officer","Scientist","Roboticist"
#define JOBS_CARGO "Free Trade Union Merchant","Union Cargo Technician","Union Miner"
#define JOBS_CIVILIAN "Club Manager","Club Worker",ASSISTANT_TITLE
#define JOBS_MEDICAL "Chief Medical Officer","Medical Doctor","Psychiatrist","Chemist","Paramedic"
#define JOBS_SCIENCE "Chief Science Officer","Scientist","Roboticist"
#define JOBS_CHURCH "NeoTheology Preacher","NeoTheology Acolyte","NeoTheology Custodian","NeoTheology Agrolyte",
#define JOBS_NONHUMAN "AI","Robot","pAI"
#define CREDITS "&cent;"
#define CREDS "&cent;"


#define DEPARTMENT_COMMAND	"Command"
#define DEPARTMENT_MEDICAL	"Medical"
#define DEPARTMENT_ENGINEERING	"Engineering"
#define DEPARTMENT_SCIENCE	"Science"
#define DEPARTMENT_SECURITY "Security"
#define DEPARTMENT_GUILD "Free Trade Union"
#define DEPARTMENT_CIVILIAN	"Civilian"
#define DEPARTMENT_CHURCH	"Church"
#define DEPARTMENT_OFFSHIP "Offship"

//Eclipse Additions for manual whitelist behaviour
//(refer to /code/game/jobs/job/job_eclipse.dm for manual and explanations)
#define WHITELIST_AUTO 0
#define WHITELIST_MANUAL_ON 1
#define WHITELIST_MANUAL_OFF 2


#define ALL_DEPARTMENTS list(DEPARTMENT_COMMAND, DEPARTMENT_MEDICAL, DEPARTMENT_ENGINEERING, DEPARTMENT_SCIENCE, DEPARTMENT_SECURITY, DEPARTMENT_GUILD, DEPARTMENT_CIVILIAN, DEPARTMENT_CHURCH)
#define ASTER_DEPARTMENTS list(DEPARTMENT_COMMAND, DEPARTMENT_GUILD)
