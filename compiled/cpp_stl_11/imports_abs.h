#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "/common/vlq_base128_le.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class vlqBase128Le_t;

class importsAbs_t : public kaitai::kstruct {

public:

    importsAbs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, importsAbs_t* p__root = nullptr);

private:
    void _read();

public:
    ~importsAbs_t();

private:
    std::unique_ptr<vlqBase128Le_t> m_len;
    std::string m_body;
    importsAbs_t* m__root;
    kaitai::kstruct* m__parent;

public:
    vlqBase128Le_t* len() const { return m_len.get(); }
    std::string body() const { return m_body; }
    importsAbs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
