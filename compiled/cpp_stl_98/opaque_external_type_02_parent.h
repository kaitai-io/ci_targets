#ifndef OPAQUE_EXTERNAL_TYPE_02_PARENT_H_
#define OPAQUE_EXTERNAL_TYPE_02_PARENT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class opaque_external_type_02_child_t;

class opaque_external_type_02_parent_t : public kaitai::kstruct {

public:
    class parent_obj_t;

    opaque_external_type_02_parent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, opaque_external_type_02_parent_t* p__root = 0);

private:
    void _read();

public:
    ~opaque_external_type_02_parent_t();

    class parent_obj_t : public kaitai::kstruct {

    public:

        parent_obj_t(kaitai::kstream* p__io, opaque_external_type_02_parent_t* p__parent = 0, opaque_external_type_02_parent_t* p__root = 0);

    private:
        void _read();

    public:
        ~parent_obj_t();

    private:
        opaque_external_type_02_child_t* m_child;
        opaque_external_type_02_parent_t* m__root;
        opaque_external_type_02_parent_t* m__parent;

    public:
        opaque_external_type_02_child_t* child() const { return m_child; }
        opaque_external_type_02_parent_t* _root() const { return m__root; }
        virtual opaque_external_type_02_parent_t* _parent() const { return m__parent; }
    };

private:
    parent_obj_t* m_parent;
    opaque_external_type_02_parent_t* m__root;
    kaitai::kstruct* m__parent;

public:
    parent_obj_t* parent() const { return m_parent; }
    opaque_external_type_02_parent_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // OPAQUE_EXTERNAL_TYPE_02_PARENT_H_
