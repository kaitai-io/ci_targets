#ifndef SWITCH_CAST_H_
#define SWITCH_CAST_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switch_cast_t : public kaitai::kstruct {

public:
    class opcode_t;
    class intval_t;
    class strval_t;

    switch_cast_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switch_cast_t* p__root = 0);

private:
    void _read();

public:
    ~switch_cast_t();
    void _clean_up();

    class opcode_t : public kaitai::kstruct {

    public:

        opcode_t(kaitai::kstream* p__io, switch_cast_t* p__parent = 0, switch_cast_t* p__root = 0);

    private:
        void _read();

    public:
        ~opcode_t();
        void _clean_up();

    private:
        uint8_t m_code;
        kaitai::kstruct* m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        switch_cast_t* m__root;
        switch_cast_t* m__parent;

    public:
        uint8_t code() const { return m_code; }
        kaitai::kstruct* body() const { return m_body; }
        switch_cast_t* _root() const { return m__root; }
        switch_cast_t* _parent() const { return m__parent; }
    };

    class intval_t : public kaitai::kstruct {

    public:

        intval_t(kaitai::kstream* p__io, switch_cast_t::opcode_t* p__parent = 0, switch_cast_t* p__root = 0);

    private:
        void _read();

    public:
        ~intval_t();
        void _clean_up();

    private:
        uint8_t m_value;
        switch_cast_t* m__root;
        switch_cast_t::opcode_t* m__parent;

    public:
        uint8_t value() const { return m_value; }
        switch_cast_t* _root() const { return m__root; }
        switch_cast_t::opcode_t* _parent() const { return m__parent; }
    };

    class strval_t : public kaitai::kstruct {

    public:

        strval_t(kaitai::kstream* p__io, switch_cast_t::opcode_t* p__parent = 0, switch_cast_t* p__root = 0);

    private:
        void _read();

    public:
        ~strval_t();
        void _clean_up();

    private:
        std::string m_value;
        switch_cast_t* m__root;
        switch_cast_t::opcode_t* m__parent;

    public:
        std::string value() const { return m_value; }
        switch_cast_t* _root() const { return m__root; }
        switch_cast_t::opcode_t* _parent() const { return m__parent; }
    };

private:
    bool f_first_obj;
    switch_cast_t::strval_t* m_first_obj;

public:
    switch_cast_t::strval_t* first_obj();

private:
    bool f_second_val;
    uint8_t m_second_val;

public:
    uint8_t second_val();

private:
    bool f_err_cast;
    switch_cast_t::strval_t* m_err_cast;

public:
    switch_cast_t::strval_t* err_cast();

private:
    std::vector<opcode_t*>* m_opcodes;
    switch_cast_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<opcode_t*>* opcodes() const { return m_opcodes; }
    switch_cast_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // SWITCH_CAST_H_
