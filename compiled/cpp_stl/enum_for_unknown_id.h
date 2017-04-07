#ifndef ENUM_FOR_UNKNOWN_ID_H_
#define ENUM_FOR_UNKNOWN_ID_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>
#include <sstream>
#include <algorithm>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class enum_for_unknown_id_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };

    enum_for_unknown_id_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, enum_for_unknown_id_t* p_root = 0);
    ~enum_for_unknown_id_t();

private:
    animal_t m_one;
    enum_for_unknown_id_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t one() const { return m_one; }
    enum_for_unknown_id_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_FOR_UNKNOWN_ID_H_
