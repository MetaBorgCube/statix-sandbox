import mb.spoofax.compiler.gradle.plugin.*
import mb.spoofax.compiler.gradle.spoofax2.plugin.*
import mb.spoofax.compiler.language.*
import mb.spoofax.compiler.spoofax2.language.*
import mb.spoofax.compiler.util.*

plugins {
  id("org.metaborg.spoofax.compiler.gradle.spoofax2.language")
}

languageProject {
  shared {
    name("Canarsie")
    fileExtensions(listOf())
    defaultPackageId("mb.canarsie")
  }
  compilerInput {
    withMultilangAnalyzer().run {
      rootModules(listOf("canarsie/mod", "canarsie/types"))
    }
  }
}

spoofax2BasedLanguageProject {
  compilerInput {
    withMultilangAnalyzer()
    project
      .languageSpecificationDependency(GradleDependency.project(":canarsie.spoofaxcore"))
  }
}
