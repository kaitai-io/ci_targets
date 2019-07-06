#ifndef SWITCH_MULTI_BOOL_OPS_H_
#define SWITCH_MULTI_BOOL_OPS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switch_multi_bool_ops_t : public kaitai::kstruct {

public:
    class opcode_t;

    switch_multi_bool_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switch_multi_bool_ops_t* p__root = 0);

private:
    void _read();

public:
    ~switch_multi_bool_ops_t();

    class opcode_t : public kaitai::kstruct {

    public:

        opcode_t(kaitai::kstream* p__io, switch_multi_bool_ops_t* p__parent = 0, switch_multi_bool_ops_t* p__root = 0);

    private:
        void _read();

    public:
        ~opcode_t();

    private:
        uint8_t m_code;
        uint64_t m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        switch_multi_bool_ops_t* m__root;
        switch_multi_bool_ops_t* m__parent;

    public:
        uint8_t code() const { return m_code; }
        uint64_t body() const { return m_body; }
        switch_multi_bool_ops_t* _root() const { return m__root; }
        switch_multi_bool_ops_t* _parent() const { return m__parent; }
    };

private:
    std::vector<opcode_t*>* m_opcodes;
    switch_multi_bool_ops_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<opcode_t*>* opcodes() const { return m_opcodes; }
    switch_multi_bool_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // SWITCH_MULTI_BOOL_OPS_H_
