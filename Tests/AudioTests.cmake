project(KubeAudioTests)

get_filename_component(KubeAudioTestsDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeAudioTestsSources
    ${KubeAudioTestsDir}/tests_Audio.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeAudioTestsSources})

add_test(NAME ${CMAKE_PROJECT_NAME} COMMAND ${CMAKE_PROJECT_NAME})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeAudio
    GTest::GTest GTest::Main
)

if(KF_COVERAGE)
    target_compile_options(${PROJECT_NAME} PUBLIC --coverage)
    target_link_options(${PROJECT_NAME} PUBLIC --coverage)
endif()