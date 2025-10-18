#ifndef PROCESS_XOR4_VALUE_H_
#define PROCESS_XOR4_VALUE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class process_xor4_value_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class process_xor4_value_t : public kaitai::kstruct {

public:

    process_xor4_value_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, process_xor4_value_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~process_xor4_value_t();
    std::string key() const { return m_key; }
    std::string buf() const { return m_buf; }
    process_xor4_value_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_buf() const { return m__raw_buf; }

private:
    std::string m_key;
    std::string m_buf;
    process_xor4_value_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_buf;
};

#endif  // PROCESS_XOR4_VALUE_H_
