#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class switch_integers_t : public kaitai::kstruct {

public:
    class opcode_t;

    switch_integers_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, switch_integers_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~switch_integers_t();

    class opcode_t : public kaitai::kstruct {

    public:

        opcode_t(kaitai::kstream* p__io, switch_integers_t* p__parent = nullptr, switch_integers_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~opcode_t();

    private:
        uint8_t m_code;
        uint64_t m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        switch_integers_t* m__root;
        switch_integers_t* m__parent;

    public:
        uint8_t code() const { return m_code; }
        uint64_t body() const { return m_body; }
        switch_integers_t* _root() const { return m__root; }
        switch_integers_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<opcode_t>>> m_opcodes;
    switch_integers_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::unique_ptr<opcode_t>>* opcodes() const { return m_opcodes.get(); }
    switch_integers_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
