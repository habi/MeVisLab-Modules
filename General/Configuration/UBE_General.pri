isEmpty(UBE_General_PRI_INCLUDED) {
  message ( loading UBE_General.pri )
}
# **InsertLicense** code
# -----------------------------------------------------------------------------
# UBE_General prifile
#
# \file    UBE_General.pri
# \author  David Haberthür
# \date    2010-09-09
#
# Package for MeVisLab-Development in Schittny-Group of the Institute of Anatomy
#
# -----------------------------------------------------------------------------

# include guard against multiple inclusion
isEmpty(UBE_General_PRI_INCLUDED) {

UBE_General_PRI_INCLUDED = 1

# -- System -------------------------------------------------------------

include( $(MLAB_MeVis_Foundation)/Configuration/SystemInit.pri )

# -- Define local PACKAGE variables -------------------------------------

PACKAGE_ROOT    = $$(MLAB_UBE_General)
PACKAGE_SOURCES = "$$(MLAB_UBE_General)"/Sources

# Add package library path
LIBS          += -L"$${PACKAGE_ROOT}"/lib

# -- Projects -------------------------------------------------------------

# NOTE: Add projects below to make them available to other projects via the CONFIG mechanism

# You can use this example template for typical projects:
#MLMyProject {
#  CONFIG_FOUND += MLMyProject
#  INCLUDEPATH += $${PACKAGE_SOURCES}/ML/MLMyProject
#  win32:LIBS += MLMyProject$${d}.lib
#  unix:LIBS += -lMLMyProject$${d}
#}

# -- ML Projects -------------------------------------------------------------

# -- Inventor Projects -------------------------------------------------------

# -- Shared Projects ---------------------------------------------------------

# End of projects ------------------------------------------------------------

}

