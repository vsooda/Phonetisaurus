option(BUILD_SHARED_LIBS "Build shared libraries" OFF)

OPTION(BUILD_USE_SOLUTION_FOLDERS "Enable grouping of projects in VS" OFF)
#SET_PROPERTY(GLOBAL PROPERTY USE_FOLDERS ${BUILD_USE_SOLUTION_FOLDERS})

option(HAVE_BIN          "Build the fst binaries" OFF)
option(HAVE_SCRIPT       "Build the fstscript" ON)
option(HAVE_COMPACT      "Build compact" ON)
option(HAVE_COMPRESS "Build compress" OFF)
option(HAVE_CONST   "Build const" ON)
option(HAVE_FAR  "Build far" ON)
option(HAVE_GRM "Build grm" ON)
option(HAVE_PDT "Build pdt" ON)
option(HAVE_MPDT "Build mpdt" ON)
option(HAVE_LINEAR "Build linear" ON)
option(HAVE_LOOKAHEAD "Build lookahead" ON)
option(HAVE_NGRAM "Build ngram" ON)
option(HAVE_PYTHON "Build python" OFF)
option(HAVE_SPECIAL "Build special" ON)

add_subdirectory(src)

