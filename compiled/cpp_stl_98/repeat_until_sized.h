#ifndef REPEAT_UNTIL_SIZED_H_
#define REPEAT_UNTIL_SIZED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class repeatUntilSized_t : public kaitai::kstruct {

public:
    class record_t;

    repeatUntilSized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeatUntilSized_t* p__root = 0);

private:
    void _read();

public:
    ~repeatUntilSized_t();

    class record_t : public kaitai::kstruct {

    public:

        record_t(kaitai::kstream* p__io, repeatUntilSized_t* p__parent = 0, repeatUntilSized_t* p__root = 0);

    private:
        void _read();

    public:
        ~record_t();

    private:
        uint8_t m_marker;
        uint32_t m_body;
        repeatUntilSized_t* m__root;
        repeatUntilSized_t* m__parent;

    public:
        uint8_t marker() const { return m_marker; }
        uint32_t body() const { return m_body; }
        repeatUntilSized_t* _root() const { return m__root; }
        repeatUntilSized_t* _parent() const { return m__parent; }
    };

private:
    std::vector<record_t*>* m_records;
    repeatUntilSized_t* m__root;
    kaitai::kstruct* m__parent;
    std::vector<std::string>* m__raw_records;
    std::vector<kaitai::kstream*>* m__io__raw_records;

public:
    std::vector<record_t*>* records() const { return m_records; }
    repeatUntilSized_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_records() const { return m__raw_records; }
    std::vector<kaitai::kstream*>* _io__raw_records() const { return m__io__raw_records; }
};

#endif  // REPEAT_UNTIL_SIZED_H_
