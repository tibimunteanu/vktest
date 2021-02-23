project "vktest"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.c",
        "src/**.hpp",
        "src/**.cpp",
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS",
    }

    includedirs
    {
        "src",
        "C:/VulkanSDK/1.2.162.1/Include",
        "%{wks.location}/vendor/glfw/include",
        "%{wks.location}/vendor/glm",
    }

    libdirs
    {
        "%{wks.location}/vendor/glfw/lib-vc2019",
        "C:/VulkanSDK/1.2.162.1/Lib"
    }

    links
    {
        "vulkan-1.lib",
        "glfw3.lib"
    }

    filter "system:windows"
        systemversion "latest"

        defines
        {
        }

    filter "configurations:Debug"
        defines "SU_DEBUG"
        runtime "Debug"
        buildoptions "/MDd"
        symbols "on"

    filter "configurations:Release"
        defines "SU_RELEASE"
        runtime "Release"
        buildoptions "/MD"
        optimize "on"

    filter "configurations:Dist"
        defines "SU_DIST"
        runtime "Release"
        buildoptions "/MD"
        optimize "on"

