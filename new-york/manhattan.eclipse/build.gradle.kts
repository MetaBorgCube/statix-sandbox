plugins {
  id("org.metaborg.spoofax.compiler.gradle.eclipse")
}

languageEclipseProject {
  eclipseExternaldepsProject.set(project(":manhattan.eclipse.externaldeps"))
  adapterProject.set(project(":manhattan.spoofax"))
}
