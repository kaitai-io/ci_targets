#ifndef REPEAT_UNTIL_SIZED_H_
#define REPEAT_UNTIL_SIZED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_until_sized_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_until_sized_t : public kaitai::kstruct {

public:
    class record_t;

    repeat_until_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeat_until_sized_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_until_sized_t();

    class record_t : public kaitai::kstruct {

    public:

        record_t(kaitai::kstream* p__io, repeat_until_sized_t* p__parent = 0, repeat_until_sized_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~record_t();

    private:
        uint8_t m_marker;
        uint32_t m_body;
        repeat_until_sized_t* m__root;
        repeat_until_sized_t* m__parent;

    public:
        uint8_t marker() const { return m_marker; }
        uint32_t body() const { return m_body; }
        repeat_until_sized_t* _root() const { return m__root; }
        repeat_until_sized_t* _parent() const { return m__parent; }
    };

private:
    std::vector<record_t*>* m_records;
    repeat_until_sized_t* m__root;
    kaitai::kstruct* m__parent;
    std::vector<std::string>* m__raw_records;
    std::vector<kaitai::kstream*>* m__io__raw_records;

public:
    std::vector<record_t*>* records() const { return m_records; }
    repeat_until_sized_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_records() const { return m__raw_records; }
    std::vector<kaitai::kstream*>* _io__raw_records() const { return m__io__raw_records; }
};

#endif  // REPEAT_UNTIL_SIZED_H_
