#ifndef META_TAGS_H_
#define META_TAGS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class meta_tags_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class meta_tags_t : public kaitai::kstruct {

public:

    meta_tags_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, meta_tags_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~meta_tags_t();
    meta_tags_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    meta_tags_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // META_TAGS_H_
