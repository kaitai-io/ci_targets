#ifndef REPEAT_UNTIL_CALC_ARRAY_TYPE_H_
#define REPEAT_UNTIL_CALC_ARRAY_TYPE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class repeat_until_calc_array_type_t : public kaitai::kstruct {

public:
    class record_t;

    repeat_until_calc_array_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeat_until_calc_array_type_t* p__root = 0);

private:
    void _read();

public:
    ~repeat_until_calc_array_type_t();

    class record_t : public kaitai::kstruct {

    public:

        record_t(kaitai::kstream* p__io, repeat_until_calc_array_type_t* p__parent = 0, repeat_until_calc_array_type_t* p__root = 0);

    private:
        void _read();

    public:
        ~record_t();

    private:
        uint8_t m_marker;
        uint32_t m_body;
        repeat_until_calc_array_type_t* m__root;
        repeat_until_calc_array_type_t* m__parent;

    public:
        uint8_t marker() const { return m_marker; }
        uint32_t body() const { return m_body; }
        repeat_until_calc_array_type_t* _root() const { return m__root; }
        repeat_until_calc_array_type_t* _parent() const { return m__parent; }
    };

private:
    bool f_recs_accessor;
    std::vector<record_t*>* m_recs_accessor;

public:
    std::vector<record_t*>* recs_accessor();

private:
    bool f_first_rec;
    record_t* m_first_rec;

public:
    record_t* first_rec();

private:
    std::vector<record_t*>* m_records;
    repeat_until_calc_array_type_t* m__root;
    kaitai::kstruct* m__parent;
    std::vector<std::string>* m__raw_records;
    std::vector<kaitai::kstream*>* m__io__raw_records;

public:
    std::vector<record_t*>* records() const { return m_records; }
    repeat_until_calc_array_type_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_records() const { return m__raw_records; }
    std::vector<kaitai::kstream*>* _io__raw_records() const { return m__io__raw_records; }
};

#endif  // REPEAT_UNTIL_CALC_ARRAY_TYPE_H_
