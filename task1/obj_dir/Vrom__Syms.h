// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VROM__SYMS_H_
#define VERILATED_VROM__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vrom.h"

// INCLUDE MODULE CLASSES
#include "Vrom___024root.h"

// SYMS CLASS (contains all model state)
class Vrom__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vrom* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vrom___024root                 TOP;

    // CONSTRUCTORS
    Vrom__Syms(VerilatedContext* contextp, const char* namep, Vrom* modelp);
    ~Vrom__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
