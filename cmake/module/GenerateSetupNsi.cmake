# Copyright (c) 2023-present The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or https://opensource.org/license/mit/.

function(generate_setup_nsi)
  set(abs_top_srcdir ${PROJECT_SOURCE_DIR})
  set(abs_top_builddir ${PROJECT_BINARY_DIR})
  set(CLIENT_URL ${PROJECT_HOMEPAGE_URL})
  set(CLIENT_TARNAME "debitmydata")
  set(DEBITMYDATA_WRAPPER_NAME "debitmydata")
  set(DEBITMYDATA_GUI_NAME "debitmydata-qt")
  set(DEBITMYDATA_DAEMON_NAME "debitmydatad")
  set(DEBITMYDATA_CLI_NAME "debitmydata-cli")
  set(DEBITMYDATA_TX_NAME "debitmydata-tx")
  set(DEBITMYDATA_WALLET_TOOL_NAME "debitmydata-wallet")
  set(DEBITMYDATA_TEST_NAME "test_debitmydata")
  set(EXEEXT ${CMAKE_EXECUTABLE_SUFFIX})
  configure_file(${PROJECT_SOURCE_DIR}/share/setup.nsi.in ${PROJECT_BINARY_DIR}/debitmydata-win64-setup.nsi USE_SOURCE_PERMISSIONS @ONLY)
endfunction()
