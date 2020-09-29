rootProject.name = "new-york"

pluginManagement {
  repositories {
    maven("https://artifacts.metaborg.org/content/groups/public/")
    // maven("https://artifacts.metaborg.org/content/repositories/releases/")
  }
}

if(org.gradle.util.VersionNumber.parse(gradle.gradleVersion).major < 6) {
  enableFeaturePreview("GRADLE_METADATA")
}

include("canarsie.spoofaxcore")
include("brooklyn.spoofaxcore")
include("manhattan.spoofaxcore")

