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

// Spoofax 2 projects
include("canarsie.spoofaxcore")
include("brooklyn.spoofaxcore")
include("manhattan.spoofaxcore")

// Language projects (these projects create java libraries of spoofax 2 projects)
include("canarsie")
include("brooklyn")
include("manhattan")

// Adapter projects (these project create the spoofax-3 wrapper stuff (Dagger modules + components, Pie tasks and such))
include("brooklyn.spoofax")
include("manhattan.spoofax")

include("brooklyn.eclipse.externaldeps")
include("manhattan.eclipse.externaldeps")

include("brooklyn.eclipse")
include("manhattan.eclipse")
include("new-york.eclipse")
