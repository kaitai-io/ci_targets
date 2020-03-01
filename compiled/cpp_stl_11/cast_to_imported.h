#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "hello_world.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class helloWorld_t;

class castToImported_t : public kaitai::kstruct {

public:

    castToImported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, castToImported_t* p__root = nullptr);

private:
    void _read();

public:
    ~castToImported_t();

private:
    bool f_one_casted;
    helloWorld_t* m_one_casted;

public:
    helloWorld_t* one_casted();

private:
    std::unique_ptr<helloWorld_t> m_one;
    castToImported_t* m__root;
    kaitai::kstruct* m__parent;

public:
    helloWorld_t* one() const { return m_one.get(); }
    castToImported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
