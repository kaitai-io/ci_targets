#ifndef META_XREF_H_
#define META_XREF_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class meta_xref_t : public kaitai::kstruct {

public:

    meta_xref_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, meta_xref_t* p__root = 0);

private:
    void _read();

public:
    ~meta_xref_t();

private:
    meta_xref_t* m__root;
    kaitai::kstruct* m__parent;

public:
    meta_xref_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // META_XREF_H_
