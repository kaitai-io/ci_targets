// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class Debug0 : KaitaiStruct
    {
        public static Debug0 FromFile(string fileName)
        {
            return new Debug0(new KaitaiStream(fileName));
        }

        public Debug0(KaitaiStream io, KaitaiStruct parent = null, Debug0 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _one = m_io.ReadU1();
            _arrayOfInts = new List<byte>((int) (3));
            for (var i = 0; i < 3; i++) {
                _arrayOfInts.Add(m_io.ReadU1());
            }
            __unnamed2 = m_io.ReadU1();
        }
        private byte _one;
        private List<byte> _arrayOfInts;
        private byte __unnamed2;
        private Debug0 m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public List<byte> ArrayOfInts { get { return _arrayOfInts; } }
        public byte Unnamed_2 { get { return __unnamed2; } }
        public Debug0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
