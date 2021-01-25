project(KubeAudioBenchmarks)

get_filename_component(KubeAudioBenchmarksDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeAudioBenchmarksSources
    ${KubeAudioBenchmarksDir}/Main.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeAudioBenchmarksSources})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeAudio
    benchmark::benchmark
)