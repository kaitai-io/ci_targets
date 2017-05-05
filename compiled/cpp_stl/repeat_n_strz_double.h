#ifndef REPEAT_N_STRZ_DOUBLE_H_
#define REPEAT_N_STRZ_DOUBLE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class repeat_n_strz_double_t : public kaitai::kstruct {

public:

    repeat_n_strz_double_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, repeat_n_strz_double_t* p_root = 0);
    ~repeat_n_strz_double_t();

private:
    uint32_t m_qty;
    std::vector<std::string>* m_lines1;
    std::vector<std::string>* m_lines2;
    repeat_n_strz_double_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t qty() const { return m_qty; }
    std::vector<std::string>* lines1() const { return m_lines1; }
    std::vector<std::string>* lines2() const { return m_lines2; }
    repeat_n_strz_double_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_N_STRZ_DOUBLE_H_
