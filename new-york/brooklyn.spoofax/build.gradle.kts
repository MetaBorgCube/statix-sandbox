import mb.spoofax.compiler.adapter.*
import mb.spoofax.compiler.adapter.data.*
import mb.spoofax.compiler.gradle.plugin.*
import mb.spoofax.compiler.util.*
import mb.spoofax.core.language.command.*

plugins {
  id("org.metaborg.spoofax.compiler.gradle.adapter")
}

languageAdapterProject {
  languageProject.set(project(":brooklyn"))
  compilerInput {
    withParser()
    withStyler()
    withStrategoRuntime()
    withMultilangAnalyzer().run {
      rootModule("brooklyn")
      preAnalysisStrategy("pre-analyze")
      postAnalysisStrategy("post-analyze")
      fileConstraint("brooklyn!fileOk")
      projectConstraint("brooklyn!projectOk")
      contextId("new-york")
    }
  }
}
