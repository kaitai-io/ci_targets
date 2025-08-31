#ifndef REPEAT_EOS_BYTES_PAD_TERM_H_
#define REPEAT_EOS_BYTES_PAD_TERM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_eos_bytes_pad_term_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_eos_bytes_pad_term_t : public kaitai::kstruct {

public:

    repeat_eos_bytes_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeat_eos_bytes_pad_term_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_eos_bytes_pad_term_t();

private:
    std::vector<std::string>* m_records;
    repeat_eos_bytes_pad_term_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::string>* records() const { return m_records; }
    repeat_eos_bytes_pad_term_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_EOS_BYTES_PAD_TERM_H_
