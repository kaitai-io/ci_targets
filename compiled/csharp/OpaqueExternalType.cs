// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class OpaqueExternalType : KaitaiStruct
    {
        public static OpaqueExternalType FromFile(string fileName)
        {
            return new OpaqueExternalType(new KaitaiStream(fileName));
        }

        public OpaqueExternalType(KaitaiStream io, KaitaiStruct parent = null, OpaqueExternalType root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _one = new TermStrz(m_io);
        }
        private TermStrz _one;
        private OpaqueExternalType m_root;
        private KaitaiStruct m_parent;
        public TermStrz One { get { return _one; } }
        public OpaqueExternalType M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
