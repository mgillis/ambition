set (BINNAME test-ambition-helper-textcaptcha)

include(ValaPrecompile)

SET( TAHT_VALA_PACKAGES
	${CORE_DEPS_PACKAGES}
    ambition-0.1
    almanna-0.1
    ambition-helper-textcaptcha-${PPKGVERSION}
)

vala_precompile(TAHT_VALA_C
	TextCaptchaTest.vala
PACKAGES
    ${TAHT_VALA_PACKAGES}
    ${PKGNAME}-${PKGVERSION}
OPTIONS
    -g
	--thread
    --vapidir ${CMAKE_BINARY_DIR}/src/libambition
    --vapidir ${CMAKE_BINARY_DIR}/src/optional/textcaptcha
	--enable-experimental)

set(TAHT_CFLAGS
    ${CORE_DEPS_CFLAGS_ALL}
    -I${CMAKE_BINARY_DIR}/src/libambition
    -I${CMAKE_BINARY_DIR}/src/optional/textcaptcha
    -w
)
set(TAHT_LIB_PATHS
    ${CORE_DEPS_LIBRARY_DIRS}
    ${CMAKE_BINARY_DIR}/src/libambition
    ${CMAKE_BINARY_DIR}/src/optional/textcaptcha
)
add_definitions(${TAHT_CFLAGS})

add_executable(${BINNAME} ${TAHT_VALA_C})
include_directories(${CMAKE_BINARY_DIR}/src/libambition ${CMAKE_BINARY_DIR}/src/optional/textcaptcha)
add_dependencies(${BINNAME} ${PPKGNAME}-${PPKGVERSION})
target_link_libraries(${BINNAME} ${TAHT_DEPS_LIBRARIES} gthread-2.0 ambition-helper-textcaptcha-${PPKGVERSION})
include(Tests)
add_test_executable(${BINNAME})
set(ENV{LD_LIBRARY_PATH} "${CMAKE_BINARY_DIR}/src/libambition:..:$ENV{LD_LIBRARY_PATH}")
set(ENV{DYLD_LIBRARY_PATH} "${CMAKE_BINARY_DIR}/src/libambition:..:$ENV{DYLD_LIBRARY_PATH}")
