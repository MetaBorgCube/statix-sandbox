module Module03a {
  def a = 1
  module ABC{ }
}

module Module03b {
  import Module03a
  import Module03a.ABC
}