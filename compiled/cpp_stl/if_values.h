#ifndef IF_VALUES_H_
#define IF_VALUES_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class if_values_t : public kaitai::kstruct {

public:
    class code_t;

    if_values_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, if_values_t* p_root = 0);
    ~if_values_t();

    class code_t : public kaitai::kstruct {

    public:

        code_t(kaitai::kstream* p_io, if_values_t* p_parent = 0, if_values_t* p_root = 0);
        ~code_t();

    private:
        bool f_half_opcode;
        int32_t m_half_opcode;
        bool n_half_opcode;

    public:
        bool _is_null_half_opcode() { half_opcode(); return n_half_opcode; };

    private:

    public:
        int32_t half_opcode();

    private:
        uint8_t m_opcode;
        if_values_t* m__root;
        if_values_t* m__parent;

    public:
        uint8_t opcode() const { return m_opcode; }
        if_values_t* _root() const { return m__root; }
        if_values_t* _parent() const { return m__parent; }
    };

private:
    std::vector<code_t*>* m_codes;
    if_values_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<code_t*>* codes() const { return m_codes; }
    if_values_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IF_VALUES_H_
