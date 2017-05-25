#ifndef IF_INSTANCES_H_
#define IF_INSTANCES_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class if_instances_t : public kaitai::kstruct {

public:

    if_instances_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, if_instances_t* p_root = 0);
    void _read();
    ~if_instances_t();

private:
    bool f_never_happens;
    uint8_t m_never_happens;
    bool n_never_happens;

public:
    bool _is_null_never_happens() { never_happens(); return n_never_happens; };

private:

public:
    uint8_t never_happens();

private:
    if_instances_t* m__root;
    kaitai::kstruct* m__parent;

public:
    if_instances_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IF_INSTANCES_H_
