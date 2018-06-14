baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: varscan
inputs:
  readcount:
    doc: The output file from bam-readcount for those positions
    inputBinding:
      position: 2
      prefix: --readcount
    type: File
  variant:
    doc: A file of SNPs or indels in VarScan-native or VCF format
    inputBinding:
      position: 1
      prefix: --variant
    type: File
label: VarScan
outputs:
  filtered:
    doc: filtered file from varscan
    outputBinding:
      glob: filtered/*
    type: File
  output:
    doc: output file from varscan
    outputBinding:
      glob: output/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/varscan:6
s:author:
  class: s:Person
  s:name: Alice Yu
