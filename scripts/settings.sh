#
# Copyright (c) 2017 Stephen Ibanez
# All rights reserved.
#
# This software was developed by Stanford University and the University of Cambridge Computer Laboratory
# under National Science Foundation under Grant No. CNS-0855268,
# the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
# by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"),
# as part of the DARPA MRC research programme.
#
# Copyright (c) 2019 Mateus Saquetti
# All rights reserved.
#
# This software was modified by Institute of Informatics of the Federal
# University of Rio Grande do Sul (INF-UFRGS)
#
# Description:
#              Adapted to run in P4VBox architecture
# Create Date:
#              31.05.2019
#
# @NETFPGA_LICENSE_HEADER_START@
#
# Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
# license agreements.  See the NOTICE file distributed with this work for
# additional information regarding copyright ownership.  NetFPGA licenses this
# file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at:
#
#   http://www.netfpga-cic.org
#
# Unless required by applicable law or agreed to in writing, Work distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations under the License.
#
# @NETFPGA_LICENSE_HEADER_END@
#

export P4_PROJECT_NAME=l2_router_firewall
export NF_PROJECT_NAME=simple_sume_switch
export SUME_FOLDER=${HOME}/projects/P4VBox
export SUME_SDNET=${SUME_FOLDER}/contrib-projects/sume-sdnet-switch
export P4_PROJECT_DIR=${SUME_SDNET}/projects/${P4_PROJECT_NAME}
export LD_LIBRARY_PATH=${SUME_SDNET}/sw/sume:${LD_LIBRARY_PATH}
export PROJECTS=${SUME_FOLDER}/projects
export DEV_PROJECTS=${SUME_FOLDER}/contrib-projects
export IP_FOLDER=${SUME_FOLDER}/lib/hw/std/cores
export CONTRIB_IP_FOLDER=${SUME_FOLDER}/lib/hw/contrib/cores
export CONSTRAINTS=${SUME_FOLDER}/lib/hw/std/constraints
export XILINX_IP_FOLDER=${SUME_FOLDER}/lib/hw/xilinx/cores
export NF_DESIGN_DIR=${P4_PROJECT_DIR}/${NF_PROJECT_NAME}
export NF_WORK_DIR=/tmp/${USER}
export PYTHONPATH=.:${SUME_SDNET}/bin:${SUME_FOLDER}/tools/scripts/:${NF_DESIGN_DIR}/lib/Python:${SUME_FOLDER}/tools/scripts/NFTest
export DRIVER_NAME=sume_riffa_v1_0_0
export DRIVER_FOLDER=${SUME_FOLDER}/lib/sw/std/driver/${DRIVER_NAME}
export APPS_FOLDER=${SUME_FOLDER}/lib/sw/std/apps/${DRIVER_NAME}
export HWTESTLIB_FOLDER=${SUME_FOLDER}/lib/sw/std/hwtestlib

export P4VBOX=${SUME_FOLDER}/scripts/settings.sh
export P4VBOX_VSWITCH=${P4_PROJECT_NAME}
export P4VBOX_CLI_VSWITCH=${P4_PROJECT_NAME}/sw/CLI_${P4VBOX_VSWITCH}/P4_SWITCH_CLI.py
export P4VBOX_SCRIPTS=${SUME_FOLDER}/scripts
export P4VBOX_NEWPROJ=${SUME_SDNET}/bin/make_new_p4_proj.py
export P4VBOX_MAKE_LIBRARY=${P4VBOX_SCRIPTS}/tools/make_library.sh
export P4VBOX_CONFIG_SWITCH=${P4VBOX_SCRIPTS}/tools/config_switch.sh
export P4VBOX_PROGSUME=${P4VBOX_SCRIPTS}/tools/program_sume.sh
export P4VBOX_PROGSUME_BITNAME=${P4_PROJECT_NAME}
# export P4VBOX_PROGSUME_BITNAME=${P4_PROJECT_NAME}_l2_switch
# export P4VBOX_PROGSUME_BITNAME=${P4_PROJECT_NAME}_router
# export P4VBOX_PROGSUME_BITNAME=${P4_PROJECT_NAME}_firewall
