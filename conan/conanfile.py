import os

from conan import ConanFile
from conan.tools.cmake import CMake, CMakeDeps, CMakeToolchain


class Kickstart(ConanFile):
    settings = "os", "arch", "compiler", "build_type"

    def requirements(self):
        self.requires("fmt/10.0.0")
        self.requires("gtest/1.14.0")

    def layout(self):
        self.folders.root = ".."
        self.folders.source = "."
        self.folders.build = os.path.join("out", "build", str(self.settings.build_type).lower())
        self.folders.generators = os.path.join(self.folders.build, "generators")

    def generate(self):
        deps = CMakeDeps(self)
        deps.generate()

        tc = CMakeToolchain(self)
        tc.user_presets_path = "ConanPresets.json"
        tc.generator = "Ninja"
        tc.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()
