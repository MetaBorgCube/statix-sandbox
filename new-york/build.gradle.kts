plugins {
  id("org.metaborg.gradle.config.root-project") version "0.3.21" apply false

  id("de.set.ecj") version "1.4.1" apply false
  id("org.metaborg.coronium.bundle") version "0.3.3" apply false

  id("org.metaborg.spoofax.gradle.base") version "0.4.5" apply false
  id("org.metaborg.spoofax.compiler.gradle.language") version "0.3.0" apply false
  id("org.metaborg.spoofax.compiler.gradle.adapter") version "0.3.0" apply false
  id("org.metaborg.spoofax.compiler.gradle.eclipse.externaldeps") version "0.3.0" apply false
  id("org.metaborg.spoofax.compiler.gradle.eclipse") version "0.3.0" apply false
  id("org.metaborg.spoofax.compiler.gradle.spoofax2.language") version "0.3.0" apply false
}


allprojects {
  group = "org.example"
  version = "0.1.0"

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

tasks.register("cleanAll") {
  group = "composite build"
  dependsOn(subprojects.map { it.tasks.named("clean") })
}

tasks.register("newYorkEclipse") {
  group = "demo"
  dependsOn(project(":new-york.eclipse").tasks.named("runEclipse"))
}

// registerDelegateTask("newYorkEclipse", it, ":new-york.eclipse:runEclipse")
