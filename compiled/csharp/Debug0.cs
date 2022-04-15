// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class Debug0 : KaitaiStruct
    {
        public static Debug0 FromFile(string fileName)
        {
            return new Debug0(new KaitaiStream(fileName));
        }

        public Debug0(KaitaiStream p__io, KaitaiStruct p__parent = null, Debug0 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _one = m_io.ReadU1();
            _arrayOfInts = new List<byte>();
            for (var i = 0; i < 3; i++)
            {
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
