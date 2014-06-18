#source ~/dotfiles/gdb/stl_views.gdb

#
# C++ related beautifiers (optional)
#

set print pretty on
#set print object on
#set print static-members on
#set print vtbl on
#set print demangle on
#set demangle-style gnu-v3
#set print sevenbit-strings off

#STL pretty printers
# Made compatible with python3 via python's 2to3 tool
python
import sys
sys.path.insert(0, '/project/trees/gdb_printers/stl_gcc_printers/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end

#Boost pretty printers, incombatible with python3 inside GDB
#python
#import sys
#sys.path.insert(0, '/project/trees/gdb_printers/Boost-Pretty-Printer')
#from boost.printers import register_printer_gen
#register_printer_gen(None)
#end
