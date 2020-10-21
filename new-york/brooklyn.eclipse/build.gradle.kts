plugins {
  id("org.metaborg.spoofax.compiler.gradle.eclipse")
}

languageEclipseProject {
  // eclipseExternaldepsProject.set(project(":brooklyn.eclipse.externaldeps"))
  adapterProject.set(project(":brooklyn.spoofax"))
}
