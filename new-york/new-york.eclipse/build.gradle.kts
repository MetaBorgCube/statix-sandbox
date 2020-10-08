plugins {
  id("org.metaborg.coronium.bundle")
}

dependencies {
  bundleApi(project(":brooklyn.eclipse"))
  bundleApi(project(":manhattan.eclipse"))
}
