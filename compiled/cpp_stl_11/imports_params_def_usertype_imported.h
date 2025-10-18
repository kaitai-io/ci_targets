#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class imports_params_def_usertype_imported_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "hello_world.h"
#include "params_def_usertype_imported.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class imports_params_def_usertype_imported_t : public kaitai::kstruct {

public:

    imports_params_def_usertype_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, imports_params_def_usertype_imported_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~imports_params_def_usertype_imported_t();
    hello_world_t* hw() const { return m_hw.get(); }
    params_def_usertype_imported_t* two() const { return m_two.get(); }
    imports_params_def_usertype_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::unique_ptr<hello_world_t> m_hw;
    std::unique_ptr<params_def_usertype_imported_t> m_two;
    imports_params_def_usertype_imported_t* m__root;
    kaitai::kstruct* m__parent;
};
