project(KubeAudio)

get_filename_component(KubeAudioDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeAudioSources
    ${KubeAudioDir}/Dummy.cpp
)

add_library(${PROJECT_NAME} ${KubeAudioSources})

target_link_libraries(${PROJECT_NAME}
PUBLIC
    KubeCore
)

if(${KF_TESTS})
    include(${KubeAudioDir}/Tests/AudioTests.cmake)
endif()

if(${KF_BENCHMARKS})
    include(${KubeAudioDir}/Benchmarks/AudioBenchmarks.cmake)
endif()