workspace "vktest"
    architecture "x86_64"
    startproject "vktest"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    flags
    {
        --"MultiProcessorCompile"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "vktest"

