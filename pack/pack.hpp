#include <iostream>
#include <sys/stat.h>
#include <sys/types.h>
#include <dirent.h>
#include <unistd.h>
#include <map>
using namespace std;

extern int yylex();

extern map<string,int> files;
extern map<string,int> dirs;

#define YYSTYPE string