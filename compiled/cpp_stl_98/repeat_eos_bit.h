#ifndef REPEAT_EOS_BIT_H_
#define REPEAT_EOS_BIT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class repeatEosBit_t : public kaitai::kstruct {

public:

    repeatEosBit_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeatEosBit_t* p__root = 0);

private:
    void _read();

public:
    ~repeatEosBit_t();

private:
    std::vector<uint64_t>* m_nibbles;
    repeatEosBit_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<uint64_t>* nibbles() const { return m_nibbles; }
    repeatEosBit_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_EOS_BIT_H_
