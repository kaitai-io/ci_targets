#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "cast_to_imported.h"
#include "hello_world.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif
class cast_to_imported_t;
class hello_world_t;

class imports_cast_to_imported_t : public kaitai::kstruct {

public:

    imports_cast_to_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, imports_cast_to_imported_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~imports_cast_to_imported_t();

private:
    std::unique_ptr<hello_world_t> m_hw;
    std::unique_ptr<cast_to_imported_t> m_two;
    imports_cast_to_imported_t* m__root;
    kaitai::kstruct* m__parent;

public:
    hello_world_t* hw() const { return m_hw.get(); }
    cast_to_imported_t* two() const { return m_two.get(); }
    imports_cast_to_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
