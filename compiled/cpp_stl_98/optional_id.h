#ifndef OPTIONAL_ID_H_
#define OPTIONAL_ID_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class optional_id_t : public kaitai::kstruct {

public:

    optional_id_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, optional_id_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~optional_id_t();

private:
    uint8_t m__unnamed0;
    uint8_t m__unnamed1;
    std::string m__unnamed2;
    optional_id_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t _unnamed0() const { return m__unnamed0; }
    uint8_t _unnamed1() const { return m__unnamed1; }
    std::string _unnamed2() const { return m__unnamed2; }
    optional_id_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // OPTIONAL_ID_H_
