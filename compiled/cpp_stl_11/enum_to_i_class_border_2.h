#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_to_i_class_border_2_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "enum_to_i_class_border_1.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_to_i_class_border_2_t : public kaitai::kstruct {

public:

    enum_to_i_class_border_2_t(enum_to_i_class_border_1_t* p_parent, kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_to_i_class_border_2_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~enum_to_i_class_border_2_t();
    bool is_dog();
    enum_to_i_class_border_1_t* parent() const { return m_parent; }
    enum_to_i_class_border_2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_is_dog;
    bool m_is_dog;
    enum_to_i_class_border_1_t* m_parent;
    enum_to_i_class_border_2_t* m__root;
    kaitai::kstruct* m__parent;
};
