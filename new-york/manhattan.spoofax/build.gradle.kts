import mb.spoofax.compiler.adapter.*
import mb.spoofax.compiler.adapter.data.*
import mb.spoofax.compiler.gradle.plugin.*
import mb.spoofax.compiler.util.*
import mb.spoofax.core.language.command.*

plugins {
  id("org.metaborg.spoofax.compiler.gradle.adapter")
}

languageAdapterProject {
  languageProject.set(project(":manhattan"))
  compilerInput {
    withParser()
    withStyler()
    withStrategoRuntime()
    withMultilangAnalyzer().run {
      rootModule("manhattan")
      preAnalysisStrategy("pre-analyze")
      postAnalysisStrategy("post-analyze")
      fileConstraint("manhattan!fileOk")
      projectConstraint("manhattan!projectOk")
      contextId("new-york")
    }
  }
}
