#ifndef REPEAT_EOS_U4_H_
#define REPEAT_EOS_U4_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class repeat_eos_u4_t : public kaitai::kstruct {

public:

    repeat_eos_u4_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, repeat_eos_u4_t* p_root = 0);
    void _read();
    ~repeat_eos_u4_t();

private:
    std::vector<uint32_t>* m_numbers;
    repeat_eos_u4_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<uint32_t>* numbers() const { return m_numbers; }
    repeat_eos_u4_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_EOS_U4_H_
