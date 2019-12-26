#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class imported_root_t;

class imported_and_abs_t : public kaitai::kstruct {

public:

    imported_and_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, imported_and_abs_t* p__root = nullptr);

private:
    void _read();

public:
    ~imported_and_abs_t();

private:
    uint8_t m_one;
    std::unique_ptr<imported_root_t> m_two;
    imported_and_abs_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    imported_root_t* two() const { return m_two.get(); }
    imported_and_abs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
