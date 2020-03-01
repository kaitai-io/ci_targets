#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class recursiveOne_t : public kaitai::kstruct {

public:
    class fini_t;

    recursiveOne_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, recursiveOne_t* p__root = nullptr);

private:
    void _read();

public:
    ~recursiveOne_t();

    class fini_t : public kaitai::kstruct {

    public:

        fini_t(kaitai::kstream* p__io, recursiveOne_t* p__parent = nullptr, recursiveOne_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~fini_t();

    private:
        uint16_t m_finisher;
        recursiveOne_t* m__root;
        recursiveOne_t* m__parent;

    public:
        uint16_t finisher() const { return m_finisher; }
        recursiveOne_t* _root() const { return m__root; }
        recursiveOne_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_one;
    std::unique_ptr<kaitai::kstruct> m_next;
    bool n_next;

public:
    bool _is_null_next() { next(); return n_next; };

private:
    recursiveOne_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    kaitai::kstruct* next() const { return m_next.get(); }
    recursiveOne_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
