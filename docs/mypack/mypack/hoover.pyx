################################################
#                 WARNING!                     #
# This file has been auto-generated by xdress. #
# Do not modify!!!                             #
#                                              #
#                                              #
#                    Come on, guys. I mean it! #
################################################
"""
"""
cimport cpp_hoover
cimport hoover
cimport hoover_b
cimport stlcontainers
from libc.stdlib cimport free
from libcpp.map cimport map as cpp_map
from mypack cimport cpp_hoover
from mypack cimport cpp_hoover_b

import hoover
import hoover_b
import stlcontainers

cdef class A:
    """no docstring for A, please file a bug report!"""

    # constuctors
    def __cinit__(self, *args, **kwargs):
        self._inst = NULL
        self._free_inst = True

        # cached property defaults
        self._y = None

    def __init__(self, x=5):
        """A(self, x=5)
        """
        self._inst = new cpp_hoover.A(<int> x)
    
    
    def __dealloc__(self):
        if self._free_inst:
            free(self._inst)

    # attributes
    property y:
        """no docstring for y, please file a bug report!"""
        def __get__(self):
            cdef stlcontainers._MapIntDouble y_proxy
            if self._y is None:
                y_proxy = stlcontainers.MapIntDouble(False, False)
                y_proxy.map_ptr = &(<cpp_hoover.A *> self._inst).y
                self._y = y_proxy
            return self._y
    
        def __set__(self, value):
            cdef stlcontainers._MapIntDouble value_proxy
            value_proxy = stlcontainers.MapIntDouble(value, not isinstance(value, stlcontainers._MapIntDouble))
            (<cpp_hoover.A *> self._inst).y = value_proxy.map_ptr[0]
            self._y = None
    
    
    # methods




def do_nothing_ab(self, a, b):
    """do_nothing_ab(self, a, b)
    no docstring for do_nothing_ab, please file a bug report!"""
    cdef hoover.A a_proxy
    cdef hoover_b.B b_proxy
    a_proxy = <hoover.A> a
    b_proxy = <hoover_b.B> b
    cpp_hoover.do_nothing_ab((<cpp_hoover.A *> a_proxy._inst)[0], (<cpp_hoover_b.B *> b_proxy._inst)[0])





