if(ANDROID)
    set(LIBLZMA_INCLUDE_DIR
        ${THIRD_PARTY_LIBLZMA_DIR}/${ANDROID_ABI}/include)
    set(LIBLZMA_LIBRARY
        ${THIRD_PARTY_LIBLZMA_DIR}/${ANDROID_ABI}/lib/liblzma.a)
endif()

find_package(LibLZMA REQUIRED)

add_library(LibLZMA::LibLZMA UNKNOWN IMPORTED)
set_target_properties(
    LibLZMA::LibLZMA
    PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "C"
    IMPORTED_LOCATION "${LIBLZMA_LIBRARIES}"
    INTERFACE_INCLUDE_DIRECTORIES "${LIBLZMA_INCLUDE_DIRS}"
)
