#ifndef INSTANCE_IN_REPEAT_UNTIL_H_
#define INSTANCE_IN_REPEAT_UNTIL_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class instance_in_repeat_until_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class instance_in_repeat_until_t : public kaitai::kstruct {

public:

    instance_in_repeat_until_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, instance_in_repeat_until_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~instance_in_repeat_until_t();
    int16_t until_val();
    std::vector<int16_t>* entries() const { return m_entries; }
    instance_in_repeat_until_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_until_val;
    int16_t m_until_val;
    std::vector<int16_t>* m_entries;
    instance_in_repeat_until_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // INSTANCE_IN_REPEAT_UNTIL_H_
