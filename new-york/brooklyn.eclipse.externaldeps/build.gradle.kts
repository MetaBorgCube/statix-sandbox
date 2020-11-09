plugins {
  id("org.metaborg.spoofax.compiler.gradle.eclipse.externaldeps")
}

languageEclipseExternaldepsProject {
  adapterProject.set(project(":brooklyn.spoofax"))
}
