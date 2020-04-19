#include <fcntl.h> /* For file mode definitions */
#include <stdio.h>
#include <stdlib.h>

/* Enumerator */
enum { FALSE, TRUE }; /* Standard false and true values */
enum { STDIN, STDOUT, STDERR }; /* Standard I/O channel indices */

/* #define Statements */
#define BUFFER_SIZE	4096 /* Copy buffer sixe */
#define NAME_SIZE	12
#define MAX_LINES	100000 /* Max lines in file */

/* Function Prototypes */
void parseCommandLine (int argc, char* argv[]);
void processOptions (char* str);
void usageError (); void pass1	();
void trackLines (char* buffer, int charsRead);
void pass2	();
void processLine (int i);
void reverseLine (char* buffer, int size);
//fatalError();


