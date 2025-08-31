#ifndef REPEAT_N_TERM_BYTES_H_
#define REPEAT_N_TERM_BYTES_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_n_term_bytes_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_n_term_bytes_t : public kaitai::kstruct {

public:

    repeat_n_term_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeat_n_term_bytes_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_n_term_bytes_t();

private:
    std::vector<std::string>* m_records1;
    std::vector<std::string>* m_records2;
    std::vector<std::string>* m_records3;
    repeat_n_term_bytes_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::string>* records1() const { return m_records1; }
    std::vector<std::string>* records2() const { return m_records2; }
    std::vector<std::string>* records3() const { return m_records3; }
    repeat_n_term_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_N_TERM_BYTES_H_
