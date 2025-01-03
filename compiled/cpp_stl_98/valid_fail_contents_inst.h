#ifndef VALID_FAIL_CONTENTS_INST_H_
#define VALID_FAIL_CONTENTS_INST_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class valid_fail_contents_inst_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_fail_contents_inst_t : public kaitai::kstruct {

public:

    valid_fail_contents_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, valid_fail_contents_inst_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~valid_fail_contents_inst_t();

private:
    bool f_foo;
    std::string m_foo;

public:
    std::string foo();

private:
    std::string m_a;
    bool n_a;

public:
    bool _is_null_a() { a(); return n_a; };

private:
    valid_fail_contents_inst_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string a() const { return m_a; }
    valid_fail_contents_inst_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // VALID_FAIL_CONTENTS_INST_H_
