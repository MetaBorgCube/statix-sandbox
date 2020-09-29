plugins {
  id("org.metaborg.gitonium") version "0.1.3"

  // Set versions for plugins to use, only applying them in subprojects (apply false here).
  id("org.metaborg.spoofax.compiler.gradle.spoofaxcore.language") version "0.1.7" apply false
  id("org.metaborg.spoofax.gradle.langspec") version "0.4.4" apply false
  id("de.set.ecj") version "1.4.1" apply false
  id("org.metaborg.coronium.bundle") version "0.3.3" apply false
  id("biz.aQute.bnd.builder") version "5.1.1" apply false
  id("org.jetbrains.intellij") version "0.4.21" apply false
}

allprojects {
  group = "org.example"

  repositories {
    maven("https://artifacts.metaborg.org/content/groups/public/")
  }
}

subprojects {
  plugins.withId("java") {
    val javaVersion = JavaVersion.VERSION_1_8
    configure<JavaPluginExtension> {
      sourceCompatibility = javaVersion
      targetCompatibility = javaVersion
    }
    tasks.withType<JavaCompile> {
      options.encoding = "UTF-8"
    }
  }
}

tasks.register("buildAll") {
  group = "composite build"
  dependsOn(subprojects.map { it.tasks.named("build") })
}
