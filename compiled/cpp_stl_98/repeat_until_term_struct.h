#ifndef REPEAT_UNTIL_TERM_STRUCT_H_
#define REPEAT_UNTIL_TERM_STRUCT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_until_term_struct_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_until_term_struct_t : public kaitai::kstruct {

public:
    class bytes_wrapper_t;

    repeat_until_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeat_until_term_struct_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_until_term_struct_t();

    class bytes_wrapper_t : public kaitai::kstruct {

    public:

        bytes_wrapper_t(kaitai::kstream* p__io, repeat_until_term_struct_t* p__parent = 0, repeat_until_term_struct_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~bytes_wrapper_t();

    private:
        std::string m_value;
        repeat_until_term_struct_t* m__root;
        repeat_until_term_struct_t* m__parent;

    public:
        std::string value() const { return m_value; }
        repeat_until_term_struct_t* _root() const { return m__root; }
        repeat_until_term_struct_t* _parent() const { return m__parent; }
    };

private:
    std::vector<bytes_wrapper_t*>* m_records1;
    std::vector<bytes_wrapper_t*>* m_records2;
    std::vector<bytes_wrapper_t*>* m_records3;
    repeat_until_term_struct_t* m__root;
    kaitai::kstruct* m__parent;
    std::vector<std::string>* m__raw_records1;
    std::vector<kaitai::kstream*>* m__io__raw_records1;
    std::vector<std::string>* m__raw_records2;
    std::vector<kaitai::kstream*>* m__io__raw_records2;
    std::vector<std::string>* m__raw_records3;
    std::vector<kaitai::kstream*>* m__io__raw_records3;

public:
    std::vector<bytes_wrapper_t*>* records1() const { return m_records1; }
    std::vector<bytes_wrapper_t*>* records2() const { return m_records2; }
    std::vector<bytes_wrapper_t*>* records3() const { return m_records3; }
    repeat_until_term_struct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_records1() const { return m__raw_records1; }
    std::vector<kaitai::kstream*>* _io__raw_records1() const { return m__io__raw_records1; }
    std::vector<std::string>* _raw_records2() const { return m__raw_records2; }
    std::vector<kaitai::kstream*>* _io__raw_records2() const { return m__io__raw_records2; }
    std::vector<std::string>* _raw_records3() const { return m__raw_records3; }
    std::vector<kaitai::kstream*>* _io__raw_records3() const { return m__io__raw_records3; }
};

#endif  // REPEAT_UNTIL_TERM_STRUCT_H_
