#ifndef REPEAT_EOS_BIT_H_
#define REPEAT_EOS_BIT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_eos_bit_t : public kaitai::kstruct {

public:

    repeat_eos_bit_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeat_eos_bit_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_eos_bit_t();

private:
    std::vector<uint64_t>* m_nibbles;
    repeat_eos_bit_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<uint64_t>* nibbles() const { return m_nibbles; }
    repeat_eos_bit_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_EOS_BIT_H_
