[![Build Status](https://travis-ci.org/EagleGenomics-cookbooks/TrimGalore.svg?branch=master)](https://travis-ci.org/EagleGenomics-cookbooks/TrimGalore)

# TrimGalore

Description
===========


A wrapper tool around Cutadapt and FastQC to consistently apply quality and
adapter trimming to FastQ files, with some extra functionality for
MspI-digested RRBS-type (Reduced Representation Bisufite-Seq) libraries.

http://www.bioinformatics.babraham.ac.uk/projects/trim_galore/

Requirements
============

## Platform:

* Centos 6.5
* RHEL 6.5

Notes
=====


Usage
=====
Simply include the recipe wherever you would like it installed, such as a run list (recipe[TrimGalore]) or a cookbook (include_recipe 'TrimGalore')


## Testing
To test the recipe we use chef test kitchen:

kitchen converge default-centos65

kitchen login default-centos65

kitchen verify default-centos65

kitchen destroy default-centos65

Attributes
==========
See attributes/default.rb for default values.

default['TrimGalore']['version']

License and Authors
===================

* Authors:: Bart Ailey (<chef@eaglegenomics.com>)

Copyright:: 2016, Eagle Genomics Ltd, Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

ToDo
====
