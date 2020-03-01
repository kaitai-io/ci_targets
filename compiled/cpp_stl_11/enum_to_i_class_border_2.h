#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "enum_to_i_class_border_1.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enumToIClassBorder2_t : public kaitai::kstruct {

public:
    class enumToIClassBorder1_t;

    enumToIClassBorder2_t(enumToIClassBorder1_t* p_parent, kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enumToIClassBorder2_t* p__root = nullptr);

private:
    void _read();

public:
    ~enumToIClassBorder2_t();

private:
    bool f_is_dog;
    bool m_is_dog;

public:
    bool is_dog();

private:
    enumToIClassBorder1_t* m_parent;
    enumToIClassBorder2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    enumToIClassBorder1_t* parent() const { return m_parent; }
    enumToIClassBorder2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
