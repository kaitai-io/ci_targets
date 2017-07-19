#ifndef RECURSIVE_ONE_H_
#define RECURSIVE_ONE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class recursive_one_t : public kaitai::kstruct {

public:
    class fini_t;

    recursive_one_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, recursive_one_t* p_root = 0);
    void _read();
    ~recursive_one_t();

    class fini_t : public kaitai::kstruct {

    public:

        fini_t(kaitai::kstream* p_io, recursive_one_t* p_parent = 0, recursive_one_t* p_root = 0);
        void _read();
        ~fini_t();

    private:
        uint16_t m_finisher;
        recursive_one_t* m__root;
        recursive_one_t* m__parent;

    public:
        uint16_t finisher() const { return m_finisher; }
        recursive_one_t* _root() const { return m__root; }
        recursive_one_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_one;
    kaitai::kstruct* m_next;
    recursive_one_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    kaitai::kstruct* next() const { return m_next; }
    recursive_one_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // RECURSIVE_ONE_H_
