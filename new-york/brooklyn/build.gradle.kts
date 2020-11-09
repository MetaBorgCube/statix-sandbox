import mb.spoofax.compiler.gradle.plugin.*
import mb.spoofax.compiler.gradle.spoofax2.plugin.*
import mb.spoofax.compiler.language.*
import mb.spoofax.compiler.spoofax2.language.*
import mb.spoofax.compiler.util.*

plugins {
  id("org.metaborg.spoofax.compiler.gradle.spoofax2.language")
}

dependencies {
  api(project(":canarsie"))
}

languageProject {
  shared {
    name("Brooklyn")
    fileExtensions(listOf("sql"))
    defaultPackageId("mb.brooklyn")
  }
  compilerInput {
    withParser().run {
      startSymbol("Start")
    }
    withStyler()
    withMultilangAnalyzer().run {
      rootModules(listOf("brooklyn"))
    }
    withStrategoRuntime()
  }
  statixDependencies.set(listOf(project(":canarsie")))
}

spoofax2BasedLanguageProject {
  compilerInput {
    withParser()
    withStyler()
    withStrategoRuntime().run {
      copyCtree(true)
      copyClasses(false)
    }
    withMultilangAnalyzer()
    project
      .languageSpecificationDependency(GradleDependency.project(":brooklyn.spoofaxcore"))
  }
}
