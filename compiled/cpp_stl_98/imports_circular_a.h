#ifndef IMPORTS_CIRCULAR_A_H_
#define IMPORTS_CIRCULAR_A_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "imports_circular_b.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class importsCircularB_t;

class importsCircularA_t : public kaitai::kstruct {

public:

    importsCircularA_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, importsCircularA_t* p__root = 0);

private:
    void _read();

public:
    ~importsCircularA_t();

private:
    uint8_t m_code;
    importsCircularB_t* m_two;
    importsCircularA_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t code() const { return m_code; }
    importsCircularB_t* two() const { return m_two; }
    importsCircularA_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTS_CIRCULAR_A_H_
