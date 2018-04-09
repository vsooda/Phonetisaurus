AUX_SOURCE_DIRECTORY(../3rdparty/rnnlm/ SRC_RNNLM)
add_library(phonetisaurus ${SRC_RNNLM} feature-reader.cc LatticePruner.cc M2MFstAligner.cc util.cc)
target_link_libraries(phonetisaurus fst)

install(TARGETS phonetisaurus DESTINATION lib)
