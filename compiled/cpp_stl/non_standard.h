#ifndef NON_STANDARD_H_
#define NON_STANDARD_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class non_standard_t : public kaitai::kstruct {

public:

    non_standard_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, non_standard_t* p_root = 0);
    ~non_standard_t();

private:
    bool f_vi;
    uint8_t m_vi;

public:
    uint8_t vi();

private:
    bool f_pi;
    uint8_t m_pi;

public:
    uint8_t pi();

private:
    uint8_t m_foo;
    uint32_t m_bar;
    non_standard_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t foo() const { return m_foo; }
    uint32_t bar() const { return m_bar; }
    non_standard_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NON_STANDARD_H_
