#ifndef ENUM_TO_I_CLASS_BORDER_2_H_
#define ENUM_TO_I_CLASS_BORDER_2_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_to_i_class_border_2_t : public kaitai::kstruct {

public:
    class enum_to_i_class_border_1_t;

    enum_to_i_class_border_2_t(enum_to_i_class_border_1_t* p_parent, kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_to_i_class_border_2_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_to_i_class_border_2_t();

private:
    bool f_is_dog;
    bool m_is_dog;

public:
    bool is_dog();

private:
    enum_to_i_class_border_1_t* m_parent;
    enum_to_i_class_border_2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    enum_to_i_class_border_1_t* parent() const { return m_parent; }
    enum_to_i_class_border_2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_TO_I_CLASS_BORDER_2_H_
