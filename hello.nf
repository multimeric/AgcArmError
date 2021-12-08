nextflow.enable.dsl=2

process foo {
    container "ubuntu:latest"
    input:
      val text
    output:
      path 'foo.txt'
    script:
      """
      echo "${text}" > foo.txt
      """
}

workflow {
    input = Channel.value("Hello World")
    foo(input) | view
}
