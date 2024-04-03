#ifndef ENUM_IMPORT_SEQ_H_
#define ENUM_IMPORT_SEQ_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_import_seq_t : public kaitai::kstruct {

public:

    enum_import_seq_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_import_seq_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_import_seq_t();

private:
    enum_0_t::animal_t m_pet_1;
    enum_deep_t::container1_t::container2_t::animal_t m_pet_2;
    enum_import_seq_t* m__root;
    kaitai::kstruct* m__parent;

public:
    enum_0_t::animal_t pet_1() const { return m_pet_1; }
    enum_deep_t::container1_t::container2_t::animal_t pet_2() const { return m_pet_2; }
    enum_import_seq_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_IMPORT_SEQ_H_
